function [theta, J_history] = gradientDescent(X, y, theta, alpha, num_iters)

m = length(y); 
J_history = zeros(num_iters, 1);

for iter = 1:num_iters

  
  param = (-1) * alpha * (1 / m);
  all_h = X * theta;
  grad_change = X' * (all_h - y);
  theta = theta + param * grad_change;
  
       
    J_history(iter) = computeCost(X, y, theta);

end


end
