%equation
%y = u*t-4.9*t*t;
c = [];
n = 0;
y = 0;
t = 0;
time = 0;
loc = 0;
u = input('please enter initial velocity = ');
while (y>=0)
    disp (['At t = ',num2str(t),' Ball height is = ',num2str(y),' meter upwards']);
    cnew=y;
    c=[c,cnew];
    t=t+0.1;
    y = u*t-4.9*t*t;
    n = n+1;
    
    time = [time,t];
    loc = [loc,y];
end
[maxH,idx]=max(c);
result = max(c)

plot (time,loc)