%   [J, grad] = COFICOSTFUNC(params, Y, R, num_users, num_movies, ...
%   num_features, lambda) returns the cost and gradient for the
%   collaborative filtering algorithm.

function [J, grad] = cofiCostFunc(params, Y, R, num_users, num_movies, num_features, lambda)

%% Unfold the U and W matrices from params
X = reshape(params(1:num_movies*num_features), num_movies, num_features);
Theta = reshape(params(num_movies*num_features+1:end), num_users, num_features);
     
%% The following variables shall be returned correctly at the end of this program.
J = 0;
X_grad = zeros(size(X));
Theta_grad = zeros(size(Theta));

%% Meat

prediction = X * Theta';                      % Computing the predited movie ratings.
error = prediction - Y;                       % Computes the error based off of the real ratings.
error_factor = error .* R;                    % Computing the error factor for movies that have been rated (error factor will be 0 for non-rated movies).
Junreg = (1 / 2) * sum(sum(error_factor.^2)); % Computes the unregularized cost as a scaled sum of the squares of all of the terms in error_factor.
J = Junreg + (sum(sum((lambda / 2) .* Theta.^2))) + (sum(sum((lambda / 2) .* X.^2))); % Adding regularization for both theta and X.

X_grad = (error_factor * Theta) + lambda * X;      % Computing the gradients. The double sum is computed automatically by the vector multiplication.
Theta_grad = (error_factor' * X) + lambda * Theta; % Computing the gradients. The double sum is computed automatically by the vector multiplication.

grad = [X_grad(:); Theta_grad(:)]; % Unrolling gradients.

end
