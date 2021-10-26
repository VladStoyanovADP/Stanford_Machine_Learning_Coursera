%   Implements the neural network cost function for a two layer neural network which performs classification
%   [J grad] = NNCOSTFUNCTON(hidden_layer_size, num_labels, X, y, lambda) computes the cost and gradient of the neural network. 

function [J, grad] = nnCostFunction(~, input_layer_size, hidden_layer_size, num_labels, X, y, lambda)

% This is an extra section, that should be active, when we are feeding unrolled theta parameters to this function. Make sure you add an additional input called nn_params.

%Theta1 = reshape(nn_params(1:hidden_layer_size * (input_layer_size + 1)), hidden_layer_size, (input_layer_size + 1));
%Theta2 = reshape(nn_params((1 + (hidden_layer_size * (input_layer_size + 1))):end), num_labels, (hidden_layer_size + 1));

%% Initializing useful values

Theta1 = randInitializeWeights(input_layer_size, hidden_layer_size); % Initializing random theta parameters for the hidden layer.
Theta2 = randInitializeWeights(hidden_layer_size, num_labels);       % Initializing random theta parameters for the output layer.

m = size(X, 1);                   % Getting the width of the dataset. Needed to calculate the cost, the regularization and other various calculations. 
eye_matrix = eye(num_labels);     % Expand the 'y' output values into a matrix of single values. If using a for loop (slower and harder) logical arrays will do the job (y == i).
y_matrix = eye_matrix(y,:);       % Expand the 'y' output values into a matrix of single values. If using a for loop (slower and harder) logical arrays will do the job (y == i).

%% Running a forward pass to compute all the activations throughout the network

a1 = [ones(m, 1) X];     % The input layer of the neural network model + a bias unit.
z2 = a1 * Theta1';       % Calculating the hypothesis in the input layer.
a2 = sigmoid(z2);        % Taking the sigmoid of the hypothesis and assigning that to a2 - the hidden layer.
a2 = [ones(m, 1) a2];    % Adding the bias unit (a column of ones).
z3 = a2 * Theta2';       % Calculating the hypothesis in the hidden layer.
a3 = sigmoid(z3);        % Taking the sigmoid of the hypothesis and assigning that to a3 - the output layer.

%% Calculating cost using the vectorization method, because for loops are more prone to errors and more computationally expensive.

J = (1 / m) * sum(sum(- y_matrix .* log(a3) - (1 - y_matrix) .* log(1 - a3)));                    % Unregularized cost function
J = J + lambda / (2 * m) * (sum(sum(Theta1(:, 2:end).^2)) + sum(sum(Theta2(:, 2:end).^2)));       % Regularized cost function

%% Backpropagation algorithm. Computes the error terms for each neuron that measures how much that node was 'responsible' for any errors in our output. Vectorization method is used, rather than a for loop.

d3 = a3 - y_matrix;                                  % Calculating the error at the output neurons. More formally, the delta values are actually the derivative of the cost function.
d2 = (d3 * Theta2(:, 2:end)) .* sigmoidGradient(z2); % Calculating the error at the hidden neurons. More formally, the delta values are actually the derivative of the cost function.
cd1 = d2' * a1;                                      % These capital delta values serve as accumulators that will be needed to calculate the gradients.
cd2 = d3' * a2;                                      % These capital delta values serve as accumulators that will be needed to calculate the gradients.
Theta1_grad = (1/m) .* cd1;                          % Unregularized gradients.
Theta2_grad = (1/m) .* cd2;                          % Unregularized gradients.

%% Regularizing Gradients

% Since Theta1 and Theta2 are local copies, and we've already computed our hypothesis value during forward-propagation, we're free to modify them to make the gradient regularization easy to compute.

Theta1(:,1) = 0; % Setting the first column of Theta1 to zero, so that we don't have to explicitly exclude it in our calculations below.
Theta2(:,1) = 0; % Setting the first column of Theta2 to zero, so that we don't have to explicitly exclude it in our calculations below.

Theta1_grad = Theta1_grad + (lambda / m) * Theta1;  % Regularized gradients.
Theta2_grad = Theta2_grad + (lambda / m) * Theta2;  % Regularized gradients.
 
grad = [Theta1_grad(:) ; Theta2_grad(:)];  % Returns the gradients.

end

% Computing cost using a for loop. A substitute for the vectorization method

%for i = 1:num_labels

    %J_temp =  (1 / m) * (- (y == i)' * log(a3(:, i)) - (1 - (y == i))' * log(1 - (a3(:, i))));       % Calculating the cost for each label through 1:num_labels
    %J_temp =  (1 / m) * sum(- (y == i) .* log(a3(:, i)) - (1 - (y == i)) .* log(1 - (a3(:, i))));    % It can also be written like this
    %J = J + J_temp;  % Adding that cost to the main cost value J. At the end of the loop, J contains the sum of all the costs for each label.

%end

