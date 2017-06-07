function data = cropsound(data,fs,start,duration)
startsample = start*fs+1;
endsample = startsample+ duration*fs;

if length(data) < endsample
    disp('Endpoint is invalid');
    endsample = length(data);
end
data = data(startsample:endsample);