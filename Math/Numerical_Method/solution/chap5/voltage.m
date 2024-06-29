function u=voltage(t)
i=(60-t)*(60-t)+(60-t)*sin(sqrt(t));
r=10*i*t+2*i*power(t,2/3);
u=i*r;