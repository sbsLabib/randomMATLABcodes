function [Tv,Fw,errF,ct,errC] = function1(x,h)

Tv = (1/x)-1;
Fw = ((2-(x+h)+log(x+h))-(2-x+log(x)))/h;
errF = abs(Tv-Fw);
ct = ((2-(x+h)+log(x+h))-(2-(x-h)+log(x-h)))/(2*h);
errC = abs(Tv-ct);