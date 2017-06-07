function rate = zcr(data,fs)
data = ((data>0)-0.5)*2;
cross = 0;
for i= 1:length(data)-1
    if data(i)*data(i+1) < 0
        cross = cross+1;
    end
end

rate = cross/length(data)*fs;