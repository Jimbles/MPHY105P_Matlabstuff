t=linspace(0,4,1000);
 Fontsize=16;

taulow=0.2;
tauhigh=2;

figure;
hold all

plot(t,exp(-t./taulow),'-','linewidth',3)

plot(t,exp(-t./tauhigh),'--','linewidth',3)
hold off
xlabel('t (s) ','Fontsize',Fontsize);
ylabel('x','Fontsize',Fontsize);
legh=legend('A','B');
set(legh,'Fontsize',Fontsize);
export_fig('ex_1st_order.png','-r100','-transparent')



%% freq resp
R=1000;
C=1e-6;
w=0:100000;
fr=1./(1+j*w*R*C);
loglog(w,abs(fr),'linewidth',3);

xlabel('freq (Hz) ','Fontsize',Fontsize);
ylabel('|H|','Fontsize',Fontsize);
export_fig('RC_resp.png','-r100','-transparent')
