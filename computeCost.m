function J = computeCost(X, y, theta)

m = length(y); 

param = [1 / (2 * m)];
all_h = X * theta;
J = param * sum((all_h - y) .^ 2);


end
