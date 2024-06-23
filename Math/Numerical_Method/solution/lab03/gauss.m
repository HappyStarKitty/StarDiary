function X=gauss(A,B,n)
%A表示系数矩阵，A|B表示增广矩阵，n表示未知数个数
%消去
for i=1:n-1 %以第i行为基准
    for j=i+1:n %对第j行进行操作
        factor=A(j,i)/A(i,i);
        for k=i+1:n %对第k个进行操作
            A(j,k)=A(j,k)-factor*A(i,k);
        end
        B(j)=B(j)-factor*B(i);
    end
end

%回代
X(n)=B(n)/A(n,n)
for i=n-1:-1:1
    sum=B(i);
    for j=i+1:n
        sum=sum-A(i,j)*X(j);
    end
    X(i)=sum/A(i,i);
end
end


