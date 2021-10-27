%       LEARNINGCURVE(X, y, Xval, yval, lambda) returns the train (either training or test sets) and
%       cross validation set errors for a learning curve. In particular, 
%       it returns two vectors of the same length - error_train and 
%       error_val. Then, error_train(i) contains the training error for
%       i examples (and similarly for error_val(i)).Note: It's expected that X and Xval have the bias units added.
%       This function, plotted, helps us diagnose whether our algorithms
%       are under- or overfitting the data.

function [error_train, error_val] = learningCurve(X, y, Xval, yval, lambda)

%% Initialize some useful values

m = size(X, 1); % Number of training examples

%% The following variables shall be returned correctly at the end of this program 

error_train = zeros(m, 1);
error_val   = zeros(m, 1);

%% Meat

for i = 1:m           % Loops through the number of examples
    
subsetX = X(1:i, :);  % Creates a subset of the training set with the number of examples = iteration of the loop
subsety = y(1:i);     % Creates a subset of the results of the training set with the number of examples = iteration of the loop
theta = trainLinearReg(subsetX, subsety, lambda);                    % Calculates theta parameters for the amount of examples considered in the current iteration of the loop.
error_train(i) = linearRegCostFunction(subsetX, subsety, theta, 0);  % Computes the error for the training set. Regularization is turned off, because we're not looking to fix overfitting algorithm.
error_val(i) = linearRegCostFunction(Xval, yval, theta, 0);          % Computes the error for the cross-validation set. Regularization is turned off, because we're not looking to fix overfitting algorithm

end

%% Plotting

%plot(1:m, error_train, 1:m, error_val);
%title('Learning curve for linear regression')
%legend('Train', 'Cross Validation')
%xlabel('Number of training examples')
%ylabel('Error')
%axis([0 13 0 150])
%fprintf('# Training Examples\tTrain Error\tCross Validation Error\n');
