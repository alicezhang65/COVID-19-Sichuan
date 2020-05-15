YQ=table2array(Untitled);%%%����ȫ���Ǻ����ۼ�ȷ�ﲡ��
QG=YQ(:,1);%%ȡ������Ҫ������
QG=QG'%%��ת������
for i=1:61
    day(i)=i;
end
%%��1��20���������ռ�������61��
syms x
f(x)=5.277e-10*x^9-1.729e-07*x^8+2.405e-05*x^7-0.001839*x^6+0.0832*x^5-2.213*x^4+31.61*x^3-187.8*x^2+562.8*x-606.5;
%%������Ϻ���fx
y=diff(f,2)%%���fx���׵�����
z=diff(f,3)%%���fx���׵�����
for i=1:61
   g(i)=(2400727*cos((1351*day(i))/10000 - 109/50))/10000 + (18110971*cos((2747*day(i))/10000 + 2137/500))/100000 + (2755889*cos((2441*day(i))/10000 + 2411/1000))/10000 + (1929077*cos((2683*day(i))/100000 + 9367/100000))/5000
end
%���fx61��ľ�����ֵ
for i=1:61
 h(i)=1777*sin((1351*day(i))/10000 - 109/50) + (6593*sin((2747*day(i))/10000 + 2137/500))/10 + 1129*sin((2441*day(i))/10000 + 2411/1000) + 14380*sin((2683*day(i))/100000 + 9367/100000)
end
% ������׵�����61��ľ�����ֵ
[AX,H4,H5]=plotyy(day,h,day,g,'plot');%%������˫������ϵ�»��Ƴ�fx��fx���׵���������
set(AX(2),'ytick',[0:150:900]);%%����y�᷶Χ
hold on
xlabel('Days after January 20, 2020')
ylabel(' Cumulative number of confirmed cases in China (Non-Hubei)')%%����y������
set(get(AX(2),'Ylabel'),'String','First order derivative') 
scatter(day,QT,20,'filled')%%���Ƴ������ȫ���Ǻ����ۼ�ȷ�ﲡ����ɢ��ͼ
set(gca,'YTick',0:2500:15000);
set(AX(2),'YTick',-100:150:800)
set(AX(2),'ylim',[-100,800])
axis([0,61,0,15000])
grid on
hold on