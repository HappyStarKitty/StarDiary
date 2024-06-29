function X=Gauss(A,B)
%采用高斯消去法
n=length(B);
for i=1:n-1
    %寻找该列绝对值最大的元素
    max=abs(A(i,i));
    mark=i;
    for j=i+1:n
        if (abs(A(i,j)) > max)
            max=abs(A(i,j));
            mark=j;
        end
    end
    %交换行
    l=A(i,:);
    A(i,:)=A(mark,:);
    A(mark,:)=l;
    c=B(i);
    B(i)=B(mark);
    B(mark)=c;
    %顺序消元
    %消去
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

        