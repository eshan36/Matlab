function x=fixed_point
f=@(x) (x+10)^(1/4);
x_old=0 %initial guess
er=100; %initial 
while er>0.000001
    x_new=f(x_old);
    er=abs((x_new-x_old)/x_new);
    x_old=x_new;
end
x=x_new;
end
