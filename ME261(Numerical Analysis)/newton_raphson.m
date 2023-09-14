function x=Newton_raphson(xi)
er=100;
i=0;
    function [y,yp]=fun(x)
        y=8-4.5*(x-sin(x));
        yp=-4.5*(1-cos(x));
    end
while er>.1
    [a,b]=fun(xi);
    xj=xi-(a/b);
    er=abs((xj-xi)/xj)*100;
    i=i+1;
    fprintf('iteration %d\n',i);
    fprintf('error %f\n',er)
    fprintf('old %f new %f\n\n',xi,xj);
    xi=xj;
end
end
