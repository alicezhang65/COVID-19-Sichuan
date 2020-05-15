Exsistconfirmed=table2array(Untitled2);%%导入四川现存确诊病例数据
for i=1:60
    day2(i)=i;
end
%%从1月21日起到数据收集截至共60天
syms x
f(x)=2.279e-07*x^6-5.226e-05*x^5+0.004727*x^4-0.2057*x^3+3.903*x^2-5.723*x+1.692;
%定义拟合的函数fx
% % fplot(f,[0,60])
y=diff(f,2);%%求出二阶导函数
z=diff(f,3);%%求出三阶导函数
% % fplot(y,[0,60])

for i=1:60
EF(i)=(513*sin((1059*day2(i))/5000 - 3727/1000))/5 + (1221*sin((2691*day2(i))/10000 + 484/125))/10 + (651*sin((687*day2(i))/12500 + 103/625))/2 + (3259*sin((3053*day2(i))/10000 + 1467/250))/50 + (4997*sin((5231*day2(i))/10000 + 2049/10000))/1000;
end
% 求出fx的具体数值
for i=1:60
    k(i)=(543267*cos((1059*day2(i))/5000 - 3727/1000))/25000 + (3285711*cos((2691*day2(i))/10000 + 484/125))/100000 + (447237*cos((687*day2(i))/12500 + 103/625))/25000 + (9949727*cos((3053*day2(i))/10000 + 1467/250))/500000 + (26139307*cos((5231*day2(i))/10000 + 2049/10000))/10000000;
end
% 求出二阶导函数的具体数值
[AX,H3,H4]=plotyy(day2,EF,day2,k,'plot');%%绘制在双轴坐标系下绘制出fx及fx二阶导数的曲线
set(AX(2),'ytick',[-20:10:40])
hold on
xlabel('Days after January 21, 2020')%%定义x轴名称
ylabel('Number of Existing confirmed cases in Sichuan Province')%%定义y轴名称
set(get(AX(2),'Ylabel'),'String','First order derivative') %%定义y轴名称
scatter(day2,Exsistconfirmed,20,'filled')%%绘制出导入的四川现存确诊病例的散点图
set(gca,'YTick',0:70:420);
set(AX(2),'ylim',[-20,40])
axis([0,60,0,420])
grid on
hold on