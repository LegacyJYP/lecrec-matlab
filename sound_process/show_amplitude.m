function show_amplitude(data, fs)

plot((1:length(data))/fs,data)
xlim([0 length(data)/fs])