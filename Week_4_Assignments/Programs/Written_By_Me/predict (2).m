% Feedforward propagation and prediction given a trained neural network.
% p = PREDICT(Theta1, Theta2, X) outputs the predicted label of X given the
% trained weights (parameters) of a neural network (Theta1, Theta2)

function p = predict(Theta1, Theta2, X)

m = size(X, 1);          % We need the length of X to perform the feedforward propagation and predictions correctly.

a1 = [ones(m, 1) X];     % The input layer of the neural network model.
z2 = a1 * Theta1';       % Calculating the hypothesis in the input layer.
a2 = sigmoid(z2);        % Taking the sigmoid of the hypothesis and assigning that to a2 - the hidden layer.
a2 = [ones(m, 1) a2];    % Adding the bias unit (a column of ones).
z3 = a2 * Theta2';       % Calculating the hypothesis in the hidden layer.
a3 = sigmoid(z3);        % Taking the sigmoid of the hypothesis and assigning that to a3 - the output layer.

[~, p] = max(a3, [], 2); % Returning the predictions on value p. The tilde is used to stop the function from returning the maximum elements in the array (we are not interested in them).

end
