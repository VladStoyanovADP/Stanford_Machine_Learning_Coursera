% Gradient descent algorithm that solves uni- and multivariate linear regression
% problems. Updates parameters theta by taking num_iters gradient steps with learning rate alpha 

function [theta, J_history] = gradientDescent(X, y, theta, alpha, num_iters)

% Initialize some useful values

m = length(y);                                                       % number of training examples
J_history = zeros(num_iters, 1);                                     % creates a one-dimensional array in which one will store the cost with each iteration step  
m_vect = 1:m;                                                        % turns m into a vector with objects spanning from 1:m. Needed to calculate each training set.


for iter = 1:num_iters

    h = (theta' .* X);                                               % updating the cost error on every iteration                                          
    theta = theta - (alpha * (1/m) * sum((sum(h, 2) - y) .* X))';    % updating theta on every iteration

    J_history(iter) = computeCost(X, y, theta);                      % Save the cost J in every iteration  

end

end
