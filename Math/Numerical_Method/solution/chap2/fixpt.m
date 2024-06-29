%不动点迭代
function [k,p,err,P]=fixpt(g,p0,delta,max_times)

P(1)=p0;
for k=2:max_times
    P(k)=feval(g,P(k-1));
    err=abs(P(k)-P(k-1));
    relerr=err/(abs(P(k))+eps);
    p=P(k);
    if (err<delta) || (relerr<delta)
        break
    end

if k==max_times
    disp('maximum number of iteration exceeded')
end
end