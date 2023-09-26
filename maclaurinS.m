%a matlab code for macl

val = 1.0;
cval = 1.0;
a = input('please exponent power = ');
n = input('please enter degree = ');
for i = 1:n
    cval = cval*a/i;
    val = val+cval;
end

err = exp(a)-val;