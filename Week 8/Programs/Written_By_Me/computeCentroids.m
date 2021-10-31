%   centroids = COMPUTECENTROIDS(X, idx, K) returns the new centroids by 
%   computing the means of the data points assigned to each centroid. It is
%   given a dataset X where each row is a single data point, a vector
%   idx of centroid assignments (i.e. each entry in range [1..K]) for each
%   example, and K, the number of centroids.

function centroids = computeCentroids(X, idx, K)

%% Initializing useful values
[m n] = size(X);

%% The following variable shall be returned correctly at the end of this program.
centroids = zeros(K, n);

%% Meat

for i = 1:K
    centroids(i, :) = mean(X(idx == i, :), 1); %Goes over every centroid and compute mean of all points that belong to it.
end

end

%% Plotting

%figure('visible','on'); hold on; 
%centroids = kMeansInitCentroids(X, K);
%plotProgresskMeans(X, centroids, centroids, idx, K, 1); 
%xlabel('Press ENTER in command window to advance','FontWeight','bold','FontSize',14)
%[~, ~] = runkMeans(X, centroids, max_iters, true);
