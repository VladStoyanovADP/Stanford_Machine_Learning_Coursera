% calculates cost for a univatiate linear regression problem

function J = computeCost(X, y, theta)

m = length(y);         % number of training examples
h = (X * theta);       % prediction of all the training examples using parameters theta    
e = (h - y).^2;        % calculating the error and exponentiating every object to the power of 2, because that is the same as doing it one by one.
J = (1/(2*m))*sum(e);  % dividing by 2m to avoid additional derivative calculations and summing to include all training examples in the cost calculation.

end
