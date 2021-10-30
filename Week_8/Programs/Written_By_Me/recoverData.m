%   X_rec = RECOVERDATA(Z, U, K) recovers an approximation the 
%   original data that has been reduced to K dimensions. It returns the
%   approximate reconstruction in X_rec.

function X_rec = recoverData(Z, U, K)

%% The following variable shall be returned correctly at the end of this program.
X_rec = zeros(size(Z, 1), size(U, 1));

%% Meat

X_rec = Z * U(:, 1:K)'; %Computes the approximation of the data by projecting back onto the original space using the top K eigenvectors in U.              

end
