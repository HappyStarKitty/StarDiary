%矩阵赋值
A=zeros(4); %创建一个4x4的全零矩阵
for i=1:4
    for j=1:4
        A(i,j)=power(i+1,j-1); %for循环赋值
    end
end
B=[8,27,64,125]; %直接赋值
X_1=gauss(A,B,4);
disp(X_1)

A(4,4)=124.8;
X_2=gauss(A,B,4);
disp(X_2)
