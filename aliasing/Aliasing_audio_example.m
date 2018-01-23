%% example of aliasing

T = 1; % length in seconds of clip
fs1=100000;
fs2=100000;
%set time vector and frequency for "continous-time" sinusoid
f1=888;
f2=444;
t1    = 0:1/fs1:T;
y1 = sin(2*pi*f1*t1);
y2 = sin(2*pi*f2*t1);
%% play sounds
soundsc(y1,fs1); % high freq
pause(2)
soundsc(y2,fs1); % low freq
pause(2)
soundsc(y1(1:round(length(y1)/2)),fs1/2); % undersampled

