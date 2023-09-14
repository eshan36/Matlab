function I=simpson_1_3rd
l=input('Enter lower value: ');
u=input('Enter upper value: ');
n=input('Enter even number of division ');
h=(u-l)/n;
s=0;
fun=@(x) (sin(x))^(3);
for i=0:2:n-2
    i_step= (h/3)*(fun(l+i*h)+4*fun(l+(i+1)*h)+fun(l+(i+2)*h));
    s=s+i_step;
end
I=real(s);
end
