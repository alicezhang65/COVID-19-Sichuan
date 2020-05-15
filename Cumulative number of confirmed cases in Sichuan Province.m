 ConfirmedDiagnosis=table2array(Untitled1);%%导入四川累计确诊病例
for i=1:58
    day1(i)=i;
end
%%从1月21日起到数据收集截至共58天
syms x%%定义变量x，x为1月20日起的天数
f(x)=2.279e-07*x^6-5.226e-05*x^5+0.004727*x^4-0.2057*x^3+3.903*x^2-5.723*x+1.692%定义拟合函数fx
y=diff(f,2)%%求出fx二阶导函数
z=diff(f,3)%%求出fx三阶导函数
% fplot(y,[0,58])
for i=1:58
CD(i)=(399*sin((206*day1(i))/625 + 1439/500))/25 + (1151*sin((107*day1(i))/1000 - 1557/1000))/10 + (283*sin((369*day1(i))/1000 + 4533/1000))/25 + (2417*sin((1057*day1(i))/5000 + 1853/500))/100 + 1177*sin((2341007115104203*day1(i))/288230376151711744 + 23/200);
end
%%求出fx在58天内的具体数值
for i=1:58
    j(i)=(82194*cos((206*day1(i))/625 + 1439/500))/15625 + (123157*cos((107*day1(i))/1000 - 1557/1000))/10000 + (104427*cos((369*day1(i))/1000 + 4533/1000))/25000 + (2554769*cos((1057*day1(i))/5000 + 1853/500))/500000 + (2755365374477646931*cos((2341007115104203*day1(i))/288230376151711744 + 23/200))/288230376151711744;
end
%%求出二阶导函数在58天内的具体数值
[AX,H1,H2]=plotyy(day1,CD,day1,j,'plot');%%在双轴坐标系下绘制出fx及fx二阶导数的曲线
set(AX(2),'ytick',[-20:10:40]);%%定义y轴范围
set(get(AX(2),'Ylabel'),'String','First order derivative') %%定义双轴y名称
xlabel('Days after January 21, 2020')%%定义x轴名称
ylabel('Cumulative number of confirmed cases in Sichuan Province')%%定义y轴名称
hold on
scatter(day1,ConfirmedDiagnosis,20,'filled')%%绘制出导入的四川累计确诊病例的散点图
set(gca,'YTick',0:100:600);
axis([0,58,0,600])
grid on
hold on 
