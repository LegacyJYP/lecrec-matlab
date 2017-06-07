function show_zcr(data,fs)
len = length(data);
T = fs/100;
nsample = floor(len/T);
rate = zeros(nsample,1);
for i=1:nsample
    rate(i,1) = zcr(data((T*(i-1)+1):T*i),fs);
end
plot(0:0.01:nsample*0.01-0.01,rate);