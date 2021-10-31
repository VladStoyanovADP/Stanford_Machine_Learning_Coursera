%   centroids = KMEANSINITCENTROIDS(X, K) returns K initial centroids to be
%   used with the K-Means on the dataset X

function centroids = kMeansInitCentroids(X, K)

%% The following variable shall be returned correctly at the end of this program.
centroids = zeros(K, size(X, 2));

%% Meat

randidx = randperm(size(X,1)); %Randomly reorder the indicies of examples.
centroids = X(randidx(1:K),:); % Take the first K examples

end

