function x=false_position
xl=2;
xu=10;
    function y=func(x)
        y=76*x^3-17.76*x^2-10^4;
    end
er=100;i=0;
xr=xu-func(xu)*(xl-xu)/(func(xl)-func(xu));
while er>1
   pre=func(xr);
   old_x=xr;
   if pre*func(xu)>0
       xu=xr;
   elseif pre*func(xl)>0
       xl=xr;
   end
   xr=xu-(func(xu)*(xl-xu))/(func(xl)-func(xu));
   er=abs((xr-old_x)/xr)*100;
   i=i+1;
   fprintf('xlower= %f xupper= %f\n',xl,xu);
   fprintf('iteration %d\n',i);
   fprintf('root %f\n',xr);
   fprintf('error %f\n\n',er);
end
x=xr;
disp(func(x));
end
