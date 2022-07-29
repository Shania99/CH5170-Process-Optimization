A = [1 1; 1 2; 1 4;1 5; 1 6];
b = [12.84,24.41,47.17,58.79,70.17]';
% A'Ax = A'b
ATA = A'*A
xcap = inv(ATA)*A'*b
dot = (A*xcap - b)'*A 
x = lsqr(A,b)


