%function snd = enhancement_(snd)
snd = croped_data1;


max(abs(snd))
snd = snd/max(abs(snd));
sound(croped_data1,fs);
sound(snd,fs);
clear sound
%end