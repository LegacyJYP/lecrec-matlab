filename = { ...
    'little_prince.wav';
    'mv01_t01_s01.wav';
    'mv02_t01_s01.wav';
%    'NE 1002 01.m4a';
    'sonspacall[1].wav'
    };

len = length(filename);
data = cell(len,1);
fs = zeros(len,1);
for i = 1:len
    [data{i,1}, fs(i,1)] = audioread(filename{i});
end