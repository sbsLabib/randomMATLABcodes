x0 = input('please enter initial = '); %initial_Value
xv = zeros();
rv = [0];
for r = 0:0.001:4
    x=x0;
    for i = 1:100000
        xn=x*r*(1-x);
        x = xn;
    end
    for j = 1:50000
        xn=x*r*(1-x);
        xs=xn;
        
        x=xn;
    end
    xv = [xv,x];
    rv = [rv,r];
end
disp (xv)
plot (rv,xv)