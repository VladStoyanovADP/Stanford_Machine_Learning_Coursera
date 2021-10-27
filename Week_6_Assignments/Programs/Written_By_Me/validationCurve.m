%       VALIDATIONCURVE(X, y, Xval, yval) returns the train
%       and validation errors (in error_train, error_val)
%       for different values of lambda. This helps us choose the best
%       lambda parameter.

function [lambda_vec, error_train, error_val] = validationCurve(X, y, Xval, yval)

%% Selected values of lambda to try.
lambda_vec = [0 0.001 0.003 0.01 0.03 0.1 0.3 1 3 10]';

%% The following variables shall be returned correctly at the end of this program 
error_train = zeros(length(lambda_vec), 1);
error_val = zeros(length(lambda_vec), 1);

%% Meat

for i = 1:length(lambda_vec) % Loops through the number of lambda parameters we wish to test
    lambda = lambda_vec(i);  % Assigns lambda parameter to the ith object in the list with lambdas = ith iteration of the loop
    theta = trainLinearReg(X, y, lambda);                       % Trains theta parameters with this lambda
    error_train(i) = linearRegCostFunction(X, y, theta, 0);     % Computes the error for the training set. Regularization is turned off, because we're not looking to fix overfitting algorithm.
    error_val(i) = linearRegCostFunction(Xval, yval, theta, 0); % Computes the error for the cross-validation set. Regularization is turned off, because we're not looking to fix overfitting algorithm

end
