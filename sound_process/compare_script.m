close all;
clear;
addpath(genpath('..'));

loadsamples;
%% len data{} fs()

little = data{1};
fs1 = fs(1);

little = cropsound(little,fs1,2.5,10);
little_down=adjustvolume(little,-90);

player1 = audioplayer(little_down,fs1);
%play(player1);

figure;
subplot(2,1,1);
show_amplitude(little_down,fs1)
%hold on;

subplot(2,1,2);
show_zcr(little_down,fs1);

figure;
show_fft(little_down,fs1);

remove_band(little_down,fs1,[20 5000]);
