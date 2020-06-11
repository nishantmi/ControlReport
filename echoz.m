function [y_echo,Hz] = echoz(y,Fs,tau)
%This Function simulates echo

N0 = floor(tau*Fs);
numerator = [1,zeros(1,N0 - 1),0.9,zeros(1,N0 - 1),0.81];
denominator = [1,zeros(1,2*N0)];

Hz = tf(numerator,denominator,1/Fs);

y_echo = filter(numerator,denominator,y);

end

