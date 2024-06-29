%注：假设有n个数据点(包括端点)，而非n个子区间
%------------------------------------
%导入算例数据
flowdata=importdata('flowdata.dat');
all_data=flowdata.data;

%提取长度坐标和摩擦系数的数据，并划分成训练集和测试集
train_x=zeros(50,1);
train_f=zeros(50,1);
test_x=zeros(50,1);
test_f=zeros(50,1);
for i=1:50
    train_x(i)=all_data(i*2-1,7);
    train_f(i)=all_data(i*2-1,8);
    test_x(i)=all_data(i*2,7);
    test_f(i)=all_data(i*2,8);
end

%----------------------------------------
%使用插值与拟合方法计算预测
lagrange_f=lagrange(train_x,train_f,test_x,7)%多项式插值
piecewise_f=piecewise(train_x,train_f,test_x)%分段低次插值
spline_f=spline(train_x,train_f,test_x)%样条插值
fit_f=fit(train_x,train_f,test_x)%最小二乘法拟合
%disp(lagrange_f)
%disp(piecewise_f)
%disp(spline_f)
%disp(fit_f)

%-----------------------------
% 绘图
scatter(test_x,test_f,'r');
hold on;

x_plot=linspace(0,2,5000);

%plot(x_plot,lagrange(train_x,train_f,x_plot,7),'b-');
%title('Lagrange');
%plot(x_plot,piecewise(train_x,train_f,x_plot),'b-');
%title('Piecewise');
%plot(x_plot,spline(train_x,train_f,x_plot),'b-');
%title('Spline')
%plot(x_plot,fit(train_x,train_f,x_plot),'b-');
%title('Fit');

xlabel('Lengthwise coordinate');
ylabel('Friction coefficient');
    
hold off;
