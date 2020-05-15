Exsistconfirmed=table2array(Untitled2);%%�����Ĵ��ִ�ȷ�ﲡ������
for i=1:60
    day2(i)=i;
end
%%��1��21���������ռ�������60��
syms x
f(x)=2.279e-07*x^6-5.226e-05*x^5+0.004727*x^4-0.2057*x^3+3.903*x^2-5.723*x+1.692;
%������ϵĺ���fx
% % fplot(f,[0,60])
y=diff(f,2);%%������׵�����
z=diff(f,3);%%������׵�����
% % fplot(y,[0,60])

for i=1:60
EF(i)=(513*sin((1059*day2(i))/5000 - 3727/1000))/5 + (1221*sin((2691*day2(i))/10000 + 484/125))/10 + (651*sin((687*day2(i))/12500 + 103/625))/2 + (3259*sin((3053*day2(i))/10000 + 1467/250))/50 + (4997*sin((5231*day2(i))/10000 + 2049/10000))/1000;
end
% ���fx�ľ�����ֵ
for i=1:60
    k(i)=(543267*cos((1059*day2(i))/5000 - 3727/1000))/25000 + (3285711*cos((2691*day2(i))/10000 + 484/125))/100000 + (447237*cos((687*day2(i))/12500 + 103/625))/25000 + (9949727*cos((3053*day2(i))/10000 + 1467/250))/500000 + (26139307*cos((5231*day2(i))/10000 + 2049/10000))/10000000;
end
% ������׵������ľ�����ֵ
[AX,H3,H4]=plotyy(day2,EF,day2,k,'plot');%%������˫������ϵ�»��Ƴ�fx��fx���׵���������
set(AX(2),'ytick',[-20:10:40])
hold on
xlabel('Days after January 21, 2020')%%����x������
ylabel('Number of Existing confirmed cases in Sichuan Province')%%����y������
set(get(AX(2),'Ylabel'),'String','First order derivative') %%����y������
scatter(day2,Exsistconfirmed,20,'filled')%%���Ƴ�������Ĵ��ִ�ȷ�ﲡ����ɢ��ͼ
set(gca,'YTick',0:70:420);
set(AX(2),'ylim',[-20,40])
axis([0,60,0,420])
grid on
hold on