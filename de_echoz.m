function [y,Gz] = de_echoz(y_echo,Fs,tau)
%This Function recovers original 
% signal from signal with echo

N0 = tau*Fs;
numerator = [1,zeros(1,2*N0)];
denominator = [1,zeros(1,N0 - 1),0.9,zeros(1,N0 - 1),0.81];

Gz = tf(numerator,denominator,1/Fs);

y = filter(numerator,denominator,y_echo);

end

