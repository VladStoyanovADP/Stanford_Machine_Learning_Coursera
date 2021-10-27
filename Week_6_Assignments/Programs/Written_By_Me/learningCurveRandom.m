% learningCurveRandom (X, y, Xval, yval) returns 2 arrays with 12, cost values.
% This function is important for handling small datasets, and helps the
% developer see the true relationship between cost and number of samples.
% Concretely, to determine the training error and crossvalidation error in 
% small datasets (i examples < 50), one should first randomly select i examples 
% from the training set and i examples from the cross validation set. 
% One will then learn the parameters  using the randomly chosen training
% set and evaluate the parameters  on the randomly chosen training set and cross validation set.
% The above steps should then be repeated multiple times (say 50) and the averaged error should be 
% used to determine the training error and cross validation error for i examples.

function [error_train, error_val] = learningCurveRandom(X, y, Xval, yval, lambda)

%% Initialize some useful values
m = size(X,1);             % the number of training examples
r = size(Xval,1);          % the number of validation examples
Xconcat = [X, y];          % Concatenating X and it's corresponding results. Needed because one would be extracting examples with all the features + the result.
Xvalconcat = [Xval, yval]; % Concatenating Xval and it's corresponding results. Needed because one would be extracting examples with all the features + the result.

%% The following variables shall be returned correctly at the end of this program

error_train = zeros(m, 1); % Filled with zeros
error_val   = zeros(m, 1); % Filled with zeros. Even though Xval has 21 examples in this case, we set the array with 12 rows, because the arrays have to match, before being plotted. This wouldn't skew the results because we're extracting random examples from the data (rather than ordered - 1,2,3 etc.).

%% Meat

for i = 1:m           % Loops for the length of X. The important thing here is that both the arrays have the same length so that they can be plotted.
  Jtrain = [];        % Setting an empty array to fill with the error cost values of the set for training, computed in the next loop. Before the mean is taken on this array, it will be filled with 50 values.
  Jval = [];          % Setting an empty array to fill with the error cost values of the validation set, computed in the next loop. Before the mean is taken on this array, it will be filled with 50 values.  
  for j = 1:50        % Loops for 50 times. In this loop, we calculate the cost with randomized samples from our datasets.
    k = randperm(m);  % Setting an array with randomly ordered values from 1:12. This will be needed to extract random samples, and the order of the values in this variable is changed on every iteration.
    p = randperm(r);  % Setting an array with randomly ordered values from 1:21. This will be needed to extract random samples, and the order of the values in this variable is changed on every iteration.
    Xran = Xconcat(k(1:i), :);       % Extracting random samples + their results from the training set. This gradually increases from extracting 1 sample to extracting 50 samples at the end of the loop.
    Xvalran = Xvalconcat(p(1:i), :); % Extracting random samples + their results from the training set. This gradually increases from extracting 1 sample to extracting 50 samples at the end of the loop.
    [theta] = trainLinearReg(Xran(:, 1:9), Xran(:, 10), lambda);                % Training for optimal theta parameters, with our training set. 
    [Jt, ~] = linearRegCostFunction(Xran(:, 1:9), Xran(:, 10), theta, 0);       % Computing the cost of the training set.
    Jtrain = [Jtrain, Jt];                                                      % Saving the cost in the array for training set costs, created between the for loops.
    [Jv, ~] = linearRegCostFunction(Xvalran(:, 1:9), Xvalran(:, 10), theta, 0); % Computing the cost of the cross-validation set.
    Jval = [Jval, Jv];                                                          % Saving the cost in the array for cross-validation set costs, created between the for loops.
  end
  error_train(i) = mean(Jtrain);   % Taking the mean of the array, filled with 50 training set costs, computed with randomized samples, and assigning it to ith place in the array with errors, corresponding to how many samples were consideres.                     
  error_val(i) = mean(Jval);       % Taking the mean of the array, filled with 50 cross-validation set costs, computed with randomized samples, and assigning it to ith place in the array with errors, corresponding to how many samples were consideres.             
end


%% Plotting
%plot(1:m, error_train, 1:m, error_val);
%title(sprintf('Polynomial Regression Learning Curve (lambda = %f)', lambda));
%xlabel('Number of training examples')
%ylabel('Error')
%axis([0 13 0 100])
%legend('Train', 'Cross Validation')
