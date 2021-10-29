%   [C, sigma] = DATASET3PARAMS(X, y, Xval, yval) returns the the optimal C and 
%   sigma based on a cross-validation set to use for a Support Vector
%   Machine with radial basis function kernel

function [C, sigma] = dataset3Params(X, y, Xval, yval)

%% Selected values of sigma and C to test.
vector = [0 0.001 0.003 0.01 0.03 0.1 0.3 1 3 10];    % i scalars are picked, and each scalar is tested with all the others, resulting in i^2 tests.

%% Initialize some useful values.

results = zeros(length(vector) * length(vector), 3);  % This is where one would store the results from each test. First column contains the parameter C, the second column - sigma, and the third, the cost while using this combination of parameters.
row = 1;  % Useful for saving the results on each iteration.

%% The following variables shall be returned correctly at the end of this program.
C = 1;      
sigma = 0.3;

%% Meat.

for i = 1:size(vector, 2)                        % Loops 10 times, setting the parameter C to each scalar from the vector variable (filled with 10 scalars)
    C = vector(1, 0 + i);                        % Setting the parameter C to each scalar from the vector variable (filled with 10 scalars)
    for j = 1:size(vector, 2)                    % A nested for loop, serving the developer to pair each C with each of the 10 sigma values.
        sigma = vector(1, 0 + j);                % Setting the parameter sigma to each scalar from the vector variable (filled with 10 scalars)
        model = svmTrain(X, y, C, @(x1, x2)gaussianKernel(x1, x2, sigma)); % Train the model with an advanced SVM package.
        prediction = svmPredict(model, Xval);    % Predicts some results based on the training done.
        err = mean(double(prediction ~= yval));  % Computes the error with this combination of parameters.
        results(row, :) = [C, sigma, err];       % Saves C, sigma and the error in the results matrix.
        row = row + 1;                           % Prepares the next row in the results matrix to be filled with new data.
    end
end

[~, i] = min(results(:,3));                      % Extracting the index, which corresponds to the row, in which the parameters minimize the cost function.
C = results(i, 1);                               % Assign C to the C in the index at which the lowest cost is returned.
sigma = results(i,2);                            % Assign sigma to the sigma in the index at which the lowest cost is returned.

end
