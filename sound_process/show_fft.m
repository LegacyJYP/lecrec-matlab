function show_fft(data,fs)
T = 1/fs;
L = length(data);
t = (0:L-1)*T;

Y = fft(data);
P2 = abs(Y/L);
P1 = P2(1:floor(L/2+1));
P1(2:end-1) = 2*P1(2:end-1);

f = fs*(0:(L/2))/L;

plot(f,P1)
title('Single-Sided Amplitude Spectrum of X(t)')
xlabel('f (Hz)')
ylabel('|P1(f)|')