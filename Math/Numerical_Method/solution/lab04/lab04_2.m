%Chapter4 Lab
%分段线性插值
figure; hold on;
for n=2:10
    x=-5:0.1:5;
    y=zeros(size(x));
    for i=1:length(x)
        y(i)=linear(@f,n,x(i));
    end
    plot(x,y);
end
y=f(x);
plot(x,y);
hold off;
xlabel('x'); 
ylabel('f(x)');
title('Linear');
legend;
grid on;
