%subtracting background and finding position of flurosence
ds1=imageDatastore("D:\L3T1\Assignment Folder\Background Image\5 atm_gain 80_C001H001S0001");
ds2=imageDatastore("D:\L3T1\Assignment Folder\TwoPhoton Fluorescence Image\5 atm_gain 50_C001H001S0001_Flame");
nfiles1=numel(ds1.Files);
nfiles2=numel(ds2.Files);
s1=double(zeros(1024));
for i=1:nfiles1
    img=readimage(ds1,i);
    s1=s1+double(img);
end
finalbg=s1/nfiles1;
s2=double(zeros(1024));
for i=1:nfiles2
    img=readimage(ds2,i);
    s2=s2+double(img);
end
final2phoflo=s2/nfiles2;
Subtractedbg=final2phoflo-finalbg;
rescaleim=rescale(Subtractedbg,0,255);
signal=uint8(rescaleim);
finalimage=imadjust(signal);
imshow(finalimage);
x_sum=sum(finalimage,1);
y_sum=sum(finalimage,2);
x_min=min(x_sum);
y_min=min(y_sum);
x=find(x_sum==x_min);
y=find(y_sum==y_min);
fprintf('position of flurosence signal is %d,%d',x,y);
