QGExsistconfirmed=table2array(Untitled3)%%导入全国（非湖北）现存确诊病例;
for i=1:61
    day3(i)=i;
end%%1月20日起到数据收集结束61天
 syms x%%定义变量x，x为1月20日起的天数
 f(x)=2.279e-07*x^6-5.226e-05*x^5+0.004727*x^4-0.2057*x^3+3.903*x^2-5.723*x+1.692;%%定义拟合的函数fx
y=diff(f,2);%%求出fx的二阶导函数
z=diff(f,3);%%求出fx的三阶导函数
for i=1:61
QGEF(i)=2464*sin((807*day3(i))/5000 - 2247/1000) + (8153*sin((2699*day3(i))/10000 + 2611/1000))/10 + (1904*sin((2989*day3(i))/10000 + 4781/1000))/5 + (2019*sin((5421*day3(i))/10000 - 4523/5000))/50 + 6579*sin((5141*day3(i))/100000 + 393/1250);
end
%%求出fx在61天内的具体数值 
for i=1:61
    m(i)=(248556*cos((807*day3(i))/5000 - 2247/1000))/625 + (22004947*cos((2699*day3(i))/10000 + 2611/1000))/100000 + (355691*cos((2989*day3(i))/10000 + 4781/1000))/3125 + (10944999*cos((5421*day3(i))/10000 - 4523/5000))/500000 + (33822639*cos((5141*day3(i))/100000 + 393/1250))/100000;
end
%%求出二阶导数在61天内的具体数值
[AX,H3,H4]=plotyy(day3,QGEF,day3,m,'plot');%%在双轴坐标系下绘制出fx及fx二阶导数的曲线
set(AX(2),'ytick',[-1000:250:1000]);
xlabel('Days after January 20, 2020')%%定义x轴名称
ylabel(' Number of Existing confirmed cases in China (Non-Hubei)');%%定义y轴名称
set(get(AX(2),'Ylabel'),'String','First order derivative') ;%%定义双轴y变量的名称
hold on
scatter(day3,QGExsistconfirmed,20,'filled');%%绘制出导入的全国确诊病例的散点图
set(gca,'YTick',0:1600:9600);
set(AX(2),'YTick',-600:300:1200);
set(AX(2),'ylim',[-600,1200]);
axis([0,61,0,9600]);
grid on
