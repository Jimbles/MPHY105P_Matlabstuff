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