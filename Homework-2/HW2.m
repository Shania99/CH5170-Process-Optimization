x_star = [15; 2];
major_axis = [27.5;-19.65];
minor_axis = [27.99; 9.5];
% x_star = [1.5; 2];
% major_axis = [27.48;-13];
% minor_axis = [9; 14.99];

c0 = 15;
v1 = x_star - major_axis
v2 = x_star - minor_axis
a = sqrt(sum(v1.^2))
b = sqrt(sum(v2.^2))
lambda_ratio = b^2/a^2 %lambda1/lambda2 lambda1 -> v1
V = [v1 v2];
H = V*diag([lambda_ratio 1])*inv(V) %x lambda2
a = -H*x_star
f_x_star = c0 - 0.5;
print = 0.5*x_star'*H*x_star
x = major_axis;
lambda_sum = x_star'*H*x_star + 2*a'*x + x'*H*x
lambda2 = 1/lambda_sum
a = a*lambda2
H = H*lambda2
c = f_x_star + 0.5*x_star'*H*x_star
% x = [16;22]
% x = [12;24]
diff = x - x_star;
f_x1 = f_x_star + 0.5*diff'*H*diff
%% Q2, 3
x1 = major_axis;
grad_f_major_axis= H*(major_axis - x_star)
alpha_major_axis = grad_f_major_axis'*grad_f_major_axis/(grad_f_major_axis'*H*grad_f_major_axis)
dist_major_axis = alpha_major_axis*norm(grad_f_major_axis)
%% Q4 
x2 = [2;2];
grad_f_2_2 = H*(x2-x_star)
alpha_2_2 = grad_f_2_2'*grad_f_2_2/(grad_f_2_2'*H*grad_f_2_2)
dist_2_2 = norm(alpha_2_2*grad_f_2_2)
%% Q5 
H_nd = -H
a_nd = -a 
c_nd = f_x_star + 0.5*x_star'*H_nd*x_star

