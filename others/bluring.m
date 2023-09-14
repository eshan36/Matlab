function output=blur2(img,w)
[a b]=size(img);
for ii=1:a
    for jj=1:b
        il=ii-w;ih=ii+w;
        jl=jj-w;jh=jj+w;
           if il<1
               il=1;
           end
           if jl<1
               jl=1;
           end
           if ih>a
               ih=a;
           end
           if jh>b
               jh=b;
           end
           sum=0;
        count=0;
           for k=il:ih
               for l=jl:jh
                   sum=sum+double(img(k,l));
                   count=count+1;
               end
           end
        out=sum/count;
        output(ii,jj)=uint8(out);
        end
    end
end
