function [Z, Rad] = Zernikmoment(p,n,m)
%计算Zernike矩
%Z:Zernike矩
%Rad:径向多项式
%p:NxN的二值图像
%n:Zernike阶数
%m:Zernike重复数
N = size(p,1);
x = 1:N; y = x;
[X,Y] = meshgrid(x,y);
R = sqrt((2.*X-N-1).^2+(2.*Y-N-1).^2)/N;
R = R./sqrt(2);

Theta = atan2((N-1-2.*Y+2),(2.*X-N+1-2));
R = (R<=1).*R;
Rad = Radialpoly(R,n,m);    %径向多项式
Product = p(x,y).*Rad.*exp(-1i*m*Theta);
Z = sum(Product(:));        
cnt = nnz(R)+1;%归一化因子
Z = (n+1)*Z/cnt;

