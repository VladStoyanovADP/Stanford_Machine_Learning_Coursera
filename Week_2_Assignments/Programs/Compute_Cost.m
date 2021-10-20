% calculates cost for a uni- and multivariate linear regression problems

function J = computeCost(X, y, theta)

m = length(y);                                   % number of training examples
m_vect = 1:m;                                    % turns m into a vector. Needed to perform addition appropriately
h = (theta' .* X);                               % prediction of all the training examples using parameters theta    
e = (sum(h, 2) - y).^2;                          % calculating the error and exponentiating every object to the power of 2, because that is the same as doing it one by one.
J = (1/(2*m))*sum(e);                            % dividing by 2m to avoid additional derivative calculations and summing to include all training examples in the cost calculation.

end
