function output=echo_gen2(input,fs,delay,amp)
a=fs*delay;
N=length(input);
a=round(a);
if a==0
    output=ones(N,1);
    for ii=1:N
        output(ii)=input(ii)+input(ii)*amp;
    end
else
    output=zeros(N+a,1);
    if a<=N
    for ii=1:a
        output(ii)=input(ii);
    end
     for ii=a+1:N
        output(ii)=input(ii)+input(ii-a)*amp;
     end
    for ii=N+1:N+a
        output(ii)=input(ii-a)*amp;
    end
    else 
        for ii=1:N
            output(ii)=input(ii);
        end
        for ii=a+1:N+a
             output(ii)=input(ii-a)*amp;
        end
    end
end
up=max(output);
 low=min(output);
 if (up>1)&&(up>=abs(low))
     output=output.*(1/up);
 elseif (low<-1)&&(abs(low)>up)
    output=output.*(1/abs(low));
 end
end
        
    
