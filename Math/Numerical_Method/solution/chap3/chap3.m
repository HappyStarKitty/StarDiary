%Chapter3 Homework
%Question1
f1=500;
f2=300;
x_in=0;
y_in=0.5;
num_list=[3,5,10,20,25,50,100];
k=4;
len_num=length(num_list);
for i=1:len_num
    %创建矩阵并赋值
    n=num_list(i);
    A=zeros(n);
    for j=1:n
        if (j>1)
            A(j,j-1)=1;
        end
        A(j,j)=-(1+f2/f1*k);
        if (j<n)
            A(j,j+1)=f2/f1*k;
        end
    end
    disp(A)
    B=zeros(1,n);
    B(1)=-y_in;

    %计算结果并计时
    tic;
    Y=Gauss(A,B);
    fprintf("x_out: %.6f y_out: %.6f time: ",k*Y(1),Y(n))
    time=toc;
    disp(time)
    tic;
    Y=Thomas(A,B);
    disp(Y)
    fprintf("x_out: %.2f y_out: %.2f time: ",k*Y(1),Y(n))
    time=toc;
    disp(time)
end

%----------------------------------
%Question2
y_in_list=[0.3,0.5,0.7,0.9];
num=20;
len_y_in=length(y_in_list);
for i=1:len_y_in
    %创建矩阵并赋值
    A=zeros(num);
    for j=1:num
        if (j>1)
            A(j,j-1)=1;
        end
        A(j,j)=-(1+f2/f1*k);
        if (j<num)
            A(j,j+1)=f2/f1*k;
        end
    end
    B=zeros(1,num);
    B(1)=-y_in_list(i);

    %计算结果并计时
    tic;
    Y=Gauss(A,B);
    fprintf("x_out: %.6f y_out: %.6f time: ",k*Y(1),Y(num))
    time=toc;
    disp(time)
    tic;
    Y=Thomas(A,B);
    fprintf("x_out: %.6f y_out: %.6f time: ",k*Y(1),Y(num))
    time=toc;
    disp(time)
end
%}


