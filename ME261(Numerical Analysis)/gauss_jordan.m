function x=gauss_jordan(a,b)
n=size(a,2);
if det(a)==0
    error('inadequate equation');
end
for k=1:n
    pivoting(k,a,b);
    un=a(k,k);
    for i=1:n
        
        a(k,i)=a(k,i)/un;
    end
    b(k)=b(k)/un;
    for i=1:n
        if(i~=k)
            fact=a(i,k)/a(k,k);
            for j=1:n
              a(i,j)=a(i,j)-fact*a(k,j);
            end
            b(i)=b(i)-fact*b(k);
        end
        
    end
    disp(a);
    disp(b);
end
x=b;  
end
