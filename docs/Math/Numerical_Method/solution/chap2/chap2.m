%测试

%求解并打印较小的根
%设定求解范围和误差限度
a=0; %左端点
b=pi/4; %右端点
delta=eps;
epsilon=1e-10;
max_times=10000;
p_guess=pi/8; %猜测点

%[c1,err1,yc1]=bisect(@track,a,b,delta);
%fprintf("%.6f",c1)
%[c2,err2,yc2]=regula(@track,a,b,delta,epsilon,max_times);
%fprintf("%.6f",c2)
[k,p,err3,P]=fixpt(@track_change,p_guess,delta,max_times);
fprintf("%.6f",p)
%[p0,err4,k1,y1]=newton(@track,@track_deriv,p_guess,delta,epsilon,max_times);
%fprintf("%.6f",p0)
%[p1,err5,k2,y2]=secant(@track,p_guess,b,delta,epsilon,max_times);
%fprintf("%.6f",p1)
%}
%------------------------------------------------

%求解并打印较大的根
%修改参数
a=pi/4;
b=50*pi/101;
p_guess=3*pi/8;

%[c1,err1,yc1]=bisect(@track,a,b,delta);
%fprintf("%.6f",c1)
%[c2,err2,yc2]=regula(@track,a,b,delta,epsilon,max_times);
%fprintf("%.6f",c2)
%[k,p,err,P]=fixpt(@track_change,p_guess,delta,max_times);
%fprintf("%.6f",p)
%[p0,err,k,y]=newton(@track,@track_deriv,p_guess,delta,epsilon,max_times);
%fprintf("%.6f",p0)
%[p1,err,k,y]=secant(@track,p_guess,b,delta,epsilon,max_times);
%fprintf("%.6f",p1)