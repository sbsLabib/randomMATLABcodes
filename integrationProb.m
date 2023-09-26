%a simple program to integrate
syms fx x res
fx = x/(x^2+1);

res = int(fx,x,1,2);

disp(res)