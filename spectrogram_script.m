%close all;
%clear;
addpath(genpath('..'));

loadsamples;
%% len data{} fs()

little = data{1};
fs1 = fs(1);
little = cropsound(little,fs1,2.5,1);


figure
s = spectrogram(little,fs1/100,80,2^10,fs1,'yaxis');
spectrogram(little,fs1/100,80,2^10,fs1,'yaxis')

% 0.01s -> 512
% (100x512) per 1 second