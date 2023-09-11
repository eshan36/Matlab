function x=gauss_naive(a,b)
n=size(a,2);
for k=1:n-1
    for i=k+1:n
        fact=a(i,k)/a(k,k);
        for j=1:n
            a(i,j)=a(i,j)-fact*a(k,j);
        end
        b(i)=b(i)-fact*b(k);
    end
    disp(a);
    disp(b);
end
x=zeros(n,1);
x(n,1)=b(n)/a(n,n);
for i=n-1:-1:1
    sum=0.0;
    for j=i+1:n
        sum=sum+a(i,j)*x(j,1);
    end
    x(i)=(b(i)-sum)/a(i,i);
end

