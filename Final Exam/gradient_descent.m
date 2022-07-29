% gradient descent for quadratic functions
H = [1 2; 2 5];
[V,L] = eig(H);
c = [0 0]';
x = [1 1]'; % x0
n = 1;
for i=1:n
    gradf = H*x + c
    p = -inv(H)*gradf % steepest
    alpha = -(gradf'*p)/(p'*H*p)
    x = x+alpha*p
end

   