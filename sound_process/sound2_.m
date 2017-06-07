%function [snd,fs] = sound2_(filename)

filename = 'little_prince.wav';
[snd2,fs2] = audioread(filename);

sound(snd2,fs2);
clear sound
