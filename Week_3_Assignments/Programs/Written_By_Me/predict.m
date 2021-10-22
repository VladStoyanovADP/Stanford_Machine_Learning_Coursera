% Predict whether the label is 0 or 1 using learned logistic 
% regression parameters theta. Computes the predictions for X using a 
% threshold at 0.5 (i.e., if sigmoid(theta'*x) >= 0.5, predict 1)

function p = predict(theta, X)

z = X * theta;  % Computing the hypothesis
p = sigmoid(z); % Computing the sigmoid of the hypothesis
p(p>=0.5) = 1;  % If the value is bigger or equal to 0.5, assign it a 1
p(p<0.5) = 0;   % If the value is less than 0.5, assign it a 0

end
