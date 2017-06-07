function data = remove_band(data,fs,band)

Y = fft(data,fs);

figure;
show_fft(data,fs);
