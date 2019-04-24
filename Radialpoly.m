function rad = Radialpoly(r,n,m)
%rad:径向多项式
%r：半径
%n：阶数
%m：重复数
rad = zeros(size(r));

for s = 0:(n-abs(m))/2
  c = (-1)^s*factorial(n-s)/(factorial(s)*factorial((n+abs(m))/2-s)*...
      factorial((n-abs(m))/2-s));
  rad = rad + c*r.^(n-2*s);
end
