%   [X_poly] = POLYFEATURES(X, p) takes a data matrix X (size m x 1) and
%   maps each example into its polynomial features where
%   X_poly(i, :) = [X(i) X(i).^2 X(i).^3 ...  X(i).^p];
%   Mapping the features is useful when we have highly biased data.

function [X_poly] = polyFeatures(X, p)

%% The following variables shall be returned correctly at the end of this program

X_poly = zeros(numel(X), p);

%% Meat

X_poly(:, 1) = X; % Set's the first column of X_poly to X. This is where we start exponentiating from in our for loop below. 

for i = 1:(p - 1) % Loops through the input scalar p, which is the number of powers we will exponentiate our uni-featured examples. P - 1 is for skipping the first column which, because i to the power of 1 is still i.

    X_poly(:, i + 1) = X.^(i+1); % No comments needed.

end

end
