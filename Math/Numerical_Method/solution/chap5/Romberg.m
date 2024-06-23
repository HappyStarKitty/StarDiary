%使用Romberg积分
function int_romberg=Romberg(f,a,b,n)
R=zeros(n,n);
h=b-a;
R(1,1)=(f(a)+f(b))*h/2;

for i=2:n
    sum=0;
    for k=1:2^(i-2)
        sum=sum+f(a+(k-0.5)*h);
    end
    R(i,1)=0.5*R(i-1,1)+sum*h/2;
    for j=2:i
        R(i,j)=R(i,j-1)+(R(i,j-1)-R(i-1,j-1))/((4^(j-1))-1);
    end
    h=h/2;
end
int_romberg=R(n,n);

