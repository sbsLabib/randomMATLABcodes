fibon = [1,1];
n = input('please enter n = ');
for i=3:n
    fibon(i)=fibon(i-1)+fibon(i-2);
end
fibon