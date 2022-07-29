x0 = [1 1]';
[x,fval] = fminsearch(@objectivefcn1 ,x0)

function f = objectivefcn1(x)
c0 = 2021;
c = [0 0]';
H = [1 2; 2 5];
f = c0 + c'*x + 0.5*x'*H*x;
end
