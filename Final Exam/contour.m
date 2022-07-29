fcontour(@(x,y) quad_func(x,y))
grid on
H = [-1 0; 0 -1]
function f = quad_func(x,y)
x0 = [x y]';
c0 = 2021;
c = [0 0]';
H = [-1 0; 0 -1];
f = c0 + c'*x0 + 0.5*x0'*H*x0;
end
