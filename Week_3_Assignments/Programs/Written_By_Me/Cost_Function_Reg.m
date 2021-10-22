% Computes the cost of using theta as the parameter for regularized logistic regression and the
% gradient of the cost with respect to the parameters. This program allsows the developer to train logistic regression classifier 
% based on a higher-dimension feature vector which allows a more complex decision boundary and will appear nonlinear when drawn in our 2-dimensional plot. 
% In simple words, our boundary will not be a line, but a circle (or other geometrical forms). 

function [J, grad] = costFunctionReg(theta, X, y, lambda)

[m, n] = size(X);                                                                         % Assigns m and n values of the width and length of the dataset
m_vect = 1:m;                                                                             % turns m into a vector. Needed to calculate the gradients
h = sigmoid(X * theta);                                                                   %Computing the sigmoid of the hypothesis  

J =  (1 / m) * (- y' * log(h) - (1 - y)' * log(1 - h)) + (lambda / (2 * m)) * sum(theta(2:n).^2); %Calculates cost (with regularized theta values, except theta(1))

grad1 = (1 / m) * (h - y)' * X(m_vect, 1);                                  %Calculates gradients. We skip theta(1), because we add it artificially
grad2 = ((1 / m) * (h - y)' * X(m_vect, 2:n)) + (lambda / m) * theta(2:n)'; %Calculates gradients. We skip theta(1), because we add it artificially
grad = [grad1(:, 1), grad2];                                                %Adds the two matrices together

% =============================================================

end
