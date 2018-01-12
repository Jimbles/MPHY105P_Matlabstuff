close all;
%%
f    = 10;
fs    = 40;
%% Make time vectors

fsreal=100000;
%set time vector and frequency for "continous-time" sinusoid
T = 1;
t    = 0:1/fsreal:T;
%set sampling rate for sampled sinusoid

tSamp = 0:1/fs:T;

%create "continuous" and sampled signals
xCont = cos(2*pi*f*t);
xSamp = cos(2*pi*f*tSamp);


%% Find frequency which is reconstructed

%determine aliased frequency
mNotFound = 1;
m         = 0;
while(mNotFound)
    fAlias = abs(f-m*fs);
    if fAlias <= fs/2
        mNotFound = 0;
    else
        m = m+1;
    end
end

%% plot 
c=lines(1);

figure;
hold on;

plot(t,xCont,'-','color',0.8*[1,1,1],'linewidth',6);
plot(tSamp,xSamp,'ko','linewidth',2);
plot(t,cos(2*pi*fAlias*t),'color',lines(1),'linewidth',2);
hold off
set(gca,'fontsize',14,'fontweight','bold');
title(['True Freq: ' num2str(f) 'Hz, Fs: ' num2str(fs) 'Hz, Recon Freq: ' num2str(fAlias) ' Hz']);

ylim([-1.3 1.3]);
grid on;
xlabel('Time (s)');

set(gcf, 'Units', 'Normalized', 'OuterPosition', [0 0 1 1]);