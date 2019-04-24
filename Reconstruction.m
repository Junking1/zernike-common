function F=Reconstruction(I,p)
%利用Zernike矩重建图像
%F:重建结果
%I:输入二值图像
%m:Zernike矩的阶数

N=size(I,1);
F=zeros(size(I));

x = 1:N;
y = x;
[X,Y] = meshgrid(x,y);
Theta = atan2((N-1-2.*Y+2),(2.*X-N+1-2));

%%%%%     CPU     %%%%%
 for n=0:p
    for m=-n:2:n
    %for m = n:-2:0
     [Znm,Rad]=Zernikmoment(I,n,m);
     Exp=exp(1i*m*Theta);
     F=F+Znm.*Rad.*Exp;
     %F=F+Znm.*Rad.*Exp;
     end
 end



F=real(F);
