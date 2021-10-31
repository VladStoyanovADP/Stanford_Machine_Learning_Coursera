
%   [U, S, X] = pca(X) computes eigenvectors of the covariance matrix of X
%   Returns the eigenvectors U, the eigenvalues (on diagonal) in S

function [U, S] = pca(X)

%% Initializing useful values
[m, n] = size(X);

%% The following variables shall be returned correctly at the end of this program.
U = zeros(n);
S = zeros(n);

%% Meat

csigma = (1 / m) * (X' * X); % Computes the covariance matrix of X
[U, S, ~] = svd(csigma);     % Computes the singular value decomposition of the covariance matrix of X stored in csigma, and returns . . .
% . . . a U matrix, containing eigenvectors, which correspond to the principal components of variation in X and a diagonal matrix containing the singular values (a.k.a eigenvalues).

end

%% Plotting
%hold on;
%drawLine(mu, mu + 1.5 * S(1,1) * U(:,1)', '-k', 'LineWidth', 2);
%drawLine(mu, mu + 1.5 * S(2,2) * U(:,2)', '-k', 'LineWidth', 2);
%hold off;