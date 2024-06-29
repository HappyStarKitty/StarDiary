function X=Thomas(A,B)
%采用三对角方程组的追赶法
n=length(B);
%crout分解
L=eye(n);
U=zeros(n);
for i=1:n
    %计算U矩阵的第i行
    U(i,i:n)=A(i,i:n)-L(i, 1:i-1)*U(1:i-1,i:n);        
    %计算L矩阵的第i+1列到第n列
    for j=i+1:n
        L(j,i)=(A(j,i)-L(j,1:i-1)*U(1:i-1,i))/U(i,i);
    end
end
%求解方程组Ly=f
Y=zeros(1,n);
Y(1)=B(1)/A(1,1);
for i=2:n
    Y(i)=(B(i)-A(i,i-1)*Y(i-1))/(A(i,i)-A(i,i-1)*U(i,i-1));
end 
%求解方程组Ux=y
X(n)=Y(n);
for i=n-1:-1:1
    X(i)=Y(i)-X(i+1)*U(i,i+1);
end
end

