syms s v ax sw
s = input('please enter swirl number = ');
v = input('please enter velocity = ');
sw = sqrt(v^2/(1+(1/s)^2));
ax = sw/s;
disp(sw)
disp(ax)