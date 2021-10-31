%   idx = FINDCLOSESTCENTROIDS (X, centroids) returns the closest centroids
%   in idx for a dataset X where each row is a single example. idx = m x 1 
%   vector of centroid assignments (i.e. each entry in range [1..K])

function idx = findClosestCentroids(X, centroids)

%% Initializing useful values
k = size(centroids, 1);
m = size(X, 1);

%% The following variable shall be returned correctly at the end of this program.
idx = zeros(size(X,1), 3);

%% Meat

for i = 1:m                   % Loops through all examples.
    for j = 1:k               % Loops through each cluster centroid.
       idx(i, j)  = sum((X(i, :) - centroids(j, :)).^2);   % Computes the norm length of subtracting each cluster centroid from the sample considered. 
    end
    [~, v] = min(idx(i, :));  % Extracts the index of the vector with the smallest norm of the three.
    idx(i, 1) = v;            % Assigns that index to the ith row on the first column.
end

idx = idx(:, 1);              % Leaves just the first column to the dataset idx

end

