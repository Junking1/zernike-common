function nmse = jun_NMSE(org_pic,cop_pic)
len = length(org_pic);

fenzi = 0;
fenmu = 0;
for i = 1:1:len
    for j = 1:1:len
        fenzi = fenzi + (org_pic(i,j) - cop_pic(i,j))^2;
        fenmu = fenmu + (org_pic(i,j)^2);
    end
end
nmse = fenzi / fenmu ;
