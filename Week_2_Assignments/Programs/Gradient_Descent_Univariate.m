% Gradient descent algorithm that solves univariate linear regression
% problems. Updates parameters theta by taking num_iters gradient steps with learning rate alpha 

function [theta, J_history] = gradientDescent(X, y, theta, alpha, num_iters)

% Initialize some useful values

m = length(y);                    % number of training examples
J_history = zeros(num_iters, 1);  % creates a one-dimensional array in which one will store the cost with each iteration step  
m_vect = 1:m;                     % turns m into a vector with objects spanning from 1:m. Needed to calculate each training set.

for iter = 1:num_iters

    % Simultaneously updating theta 

    temp1 = (1/m) * sum((theta(1) + theta(2) .* X(m_vect, 2)) - y(m_vect));                    
    temp2 = (1/m) * sum(((theta(1) + theta(2) .* X(m_vect, 2)) - y(m_vect)) .* X(m_vect, 2));
    theta(1) = theta(1) - alpha * (temp1);
    theta(2) = theta(2) - alpha * (temp2);

    J_history(iter) = computeCost(X, y, theta); % Save the cost J in every iteration  

end

end