%equation
%y = u*t-4.9*t*t;
%c = [];
n = 0;
y0 = input('please enter initial height = ');
t = 0;
time = 0;
loc = 0;
u = input('please enter initial velocity = ');
while (y>=0)
    disp (['At t = ',num2str(t),' Ball height is = ',num2str(y),' meter upwards']);
    %cnew=y;
    %c=[c,cnew];
    t=t+0.01;
    y = y0-(u*t+4.9*t*t);
    n = n+1;
    
    time = [time,t];
    loc = [loc,y];
end

plot (time,loc)