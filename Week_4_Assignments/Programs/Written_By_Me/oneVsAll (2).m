% [all_theta] = ONEVSALL(X, y, num_labels, lambda) trains num_labels logistic regression classifiers and returns all
% the classifiers in a matrix all_theta, where the i-th row of all_theta corresponds to the classifier for label i

function [all_theta] = oneVsAll(X, y, num_labels, lambda)

[m, n] = size(X);                                   % Assigning the length and width of X, respectively
X = [ones(m, 1) X];                                 % Adding the usual column of ones to the dataset
initial_theta = zeros(n + 1, 1);                    % Initializing a matrix for the theta values - currently filled with zeros
options = optimset('GradObj', 'on', 'MaxIter', 50); % Setting the options for the advanced optimization function written by Professor Andrew and team
all_theta = []                                      % Empty matrix, which we will fill with the thetas returned by the advanced optimization function

for i = 1:num_labels                                % Loops for the amout of classifiers we wish to train

[theta] = fmincg (@(t)(lrCostFunction(t, X, (y == i), lambda)), initial_theta, options); % Advanced optimization function written by Professor Andrew and team. Returns cost and theta parameters.
all_theta = [all_theta, theta];                     % Concatenating all_theta with the thetas returnes from the advanced optimization function

end

all_theta = all_theta'                              % Transposing the theta values so that an num_labels x n + 1 matrix is returned

end
