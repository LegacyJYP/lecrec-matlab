[data1, fs1] = audioread('NE 1002 01.m4a');
%figure;
%plot(data)

max(data)

n = 100;
crop_range = 1:163918784/n;

croped_data1 = data1(crop_range,1);
croped_data2 = data1(crop_range,2);
figure;
plot(croped_data1);

%profile_(croped_data1);
%enhancement_(croped_data1);

en_croped_data1 = croped_data1+ croped_data1.*(croped_data1<0.5);
figure;
plot(en_croped_data1);

Y= fft(croped_data1.*hamming(length(croped_data1)))

clear sound
sound(croped_data1,fs1);



no_snd = estnoiseg(croped_data1, fs1);
clear sound
soundsc(no_snd,fs1);
