% Predict the label for trained one-vs-all classifier/s. The labels are in the range 1..K, where K = size(all_theta, 1).
% p = PREDICTONEVSALL(all_theta, X) will return a vector of predictions for each example in the matrix X.
% all_theta is a matrix where the i-th row is a trained logistic regression theta vector for the i-th class.

function p = predictOneVsAll(all_theta, X)

m = size(X, 1);                % We need the length of X to perform the predictions.
X = [ones(m, 1) X];            % Add ones to the X data matrix.

z = sigmoid(X * all_theta');   % Taking the sigmoid of the hypotheses
[~, p] = max(z, [], 2);        % Returning the predictions on value p. The tilde is used to stop the function from returning the maximum elements in the array (we are not interested in them).

end
