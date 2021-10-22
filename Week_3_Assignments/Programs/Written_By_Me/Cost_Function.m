% Computes the cost of using theta as the
% parameter for logistic regression problems and the 
% gradient of the cost with respect to the parameters.

function [J, grad] = costFunction(theta, X, y)

[m, n] = size(X);                                       % Assigns m and n values of the width and length of the dataset
m_vect = 1:m;                                           % turns m into a vector. Needed to calculate the gradients

h = sigmoid(X * theta);                                 %Computing the sigmoid of the hypothesis
J =  (1 / m) * (- y' * log(h) - (1 - y)' * log(1 - h)); %Calculates cost. This formula is chosen because of the principle of maximum likelihood of estimations and also because it's a convex function
grad = (1 / m) * (h - y)' * X(m_vect, 1:n);             %Calculates gradients. This and both the calculations above are performed by vectorization to minimize code needed.

end
