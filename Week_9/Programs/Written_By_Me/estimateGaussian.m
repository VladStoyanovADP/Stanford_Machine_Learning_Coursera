%   [mu sigma2] = estimateGaussian(X), 
%   The input X is the dataset with each n-dimensional data point in one row
%   The output is an n-dimensional vector mu, the mean of the data set
%   and the variances sigma^2, an n x 1 vector

function [mu, sigma2] = estimateGaussian(X)

%% Initializing useful values
[m, n] = size(X);

%% The following variables shall be returned correctly at the end of this program.
mu = zeros(n, 1);     % Will contains the mean of the Gaussian distribution of the data .
sigma2 = zeros(n, 1); % Will contains the squared standart deviation of the Gaussian distribution.

%% Meat
mu =  mean(X);  % Takes them mean of the data
sigma2 = (1 / m) * sum((X - mu) .^2); % Calculates the variances

end
