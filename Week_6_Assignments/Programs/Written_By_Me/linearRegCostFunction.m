%   [J, grad] = LINEARREGCOSTFUNCTION(X, y, theta, lambda) computes the 
%   cost of using theta as the parameter for linear regression. Returns the cost in J and the gradient in grad

function [J, grad] = linearRegCostFunction(X, y, theta, lambda)

%% Initialize some useful values

m = length(y); % number of training examples

%% The following variables shall be returned correctly at the end of this program 

J = 0;
grad = zeros(size(theta));

%% Meat

h = X * theta;                                                       % Calculating the hypothesis
unregularized_J = (1 / (2 * m)) * sum((sum((X * theta), 2) - y).^2); % Calculating the unregularized cost
J = unregularized_J + (lambda / (2 * m)) * sum(theta(2:end).^2);     % Regularizing the cost
unregularized_grad = (1/m) * sum((h - y) .* X)';                     % Calculating the the change in thetas a.k.a "gradients"
theta(1) = 0;                                                        % Setting the first theta to zero, to make the regularization of the gradients easier
grad = unregularized_grad + theta * (lambda / m);                    % Regularizing the gradients
grad = grad(:);                                                      % Returns the gradients in a column                     

end
