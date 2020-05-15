subplot(2,2,1)
% plotyy(day1,CD,day1,j)
[AX,H1,H2]=plotyy(day1,CD,day1,j,'plot');
set(AX(2),'ytick',[-20:10:40])
set(get(AX(2),'Ylabel'),'String','First order derivative') 
xlabel('Days after January 21, 2020')
ylabel('Cumulative number of confirmed cases in Sichuan Province')
hold on
scatter(day1,ConfirmedDiagnosis,20,'filled')
set(gca,'YTick',0:100:600);
axis([0,58,0,600])
grid on
hold on 
% % % 
subplot(2,2,2)
% plotyy(day,h,day,g)
[AX,H4,H5]=plotyy(day,h,day,g,'plot');
% set(AX(2),'ytick',[0:150:900])
hold on
xlabel('Days after January 20, 2020')
ylabel(' Cumulative number of confirmed cases in China (Non-Hubei)')
set(get(AX(2),'Ylabel'),'String','First order derivative') 
scatter(day,QT,20,'filled')
% set(gca,'YTick',0:2500:15000);
% set(AX(2),'YTick',-100:150:800)
% set(AX(2),'ylim',[-100,800])
% axis([0,61,0,15000])
grid on
hold on
% % % % 
subplot(2,2,3)
% plotyy(day2,EF,day2,k)
[AX,H3,H4]=plotyy(day2,EF,day2,k,'plot');
set(AX(2),'ytick',[-20:10:40])
hold on
xlabel('Days after January 21, 2020')
ylabel('Number of Existing confirmed cases in Sichuan Province')
set(get(AX(2),'Ylabel'),'String','First order derivative') 
scatter(day2,Exsistconfirmed,20,'filled')
set(gca,'YTick',0:70:420);
set(AX(2),'ylim',[-20,40])
axis([0,60,0,420])
grid on
hold on
% % % % % 
subplot(2,2,4)
% plotyy(day3,QGEF,day3,l)
[AX,H3,H4]=plotyy(day3,QGEF,day3,m,'plot');
set(AX(2),'ytick',[-1000:250:1000])
xlabel('Days after January 20, 2020')
ylabel(' Number of Existing confirmed cases in China (Non-Hubei)')
set(get(AX(2),'Ylabel'),'String','First order derivative') 
hold on
scatter(day3,QGExsistconfirmed,20,'filled')
% set(gca,'YTick',0:2500:10000);
% set(AX(2),'YTick',-800:300:1000)
% set(AX(2),'ylim',[-800,1000])
% axis([0,61,0,10000])
grid on