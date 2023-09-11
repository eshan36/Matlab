function x= gauss_seidel(a,b)
n=size(a,1);
x=zeros(n,1);
x_old=zeros(n,1);er=zeros(n,1);
k=0;
iter=true;
for k=1:100
    for i=1:n
        s=0;
        for j=1:n
            if j~=i
                s=s+a(i,j)*x(j);
            end
        end
        x(i)=(b(i)-s)/a(i,i);
        er(i)=abs((x(i)-x_old(i))/x(i));
        x_old(i)=x(i);
    end
    iter=true;
    for i=1:n
        if er(i)>0.01
            iter=false;
        end
    end
    if iter==true
        break;
    end
    fprintf('iteration %d\n',k);
    disp(x);
    disp(er)
end
fprintf('iteration %d\n',k);
disp(er);
end
