function pivoting(k,a,b)
p=k;n=size(a,2);
big=a(k,k);
for i=k+1:n
    if(abs(a(i,k))>abs(big))
        big=a(i,k);
        p=i;
    end
end
if (p~=k)
    for j=k:n
        dum=a(p,j);
        a(p,j)=a(k,j);
        a(k,j)=dum;
    end
    dum=b(p);
    b(p)=b(k);
    b(k)=dum;
end
disp(a);
disp(b);
end
