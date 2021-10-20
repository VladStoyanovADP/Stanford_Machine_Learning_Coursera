%Feature Normalization for faster converging of a gradient descent
%algorithm and reduced computational power needed to reach the minimized cost

function [X_norm, mu, sigma] = featureNormalize(X)

data = load('ex1data2.txt');                     %Loading the training dataset
training_sets = data(:, 1:2);                    %Extracting the features
X_norm = X;                                      %Assigns the data to normalize to a new value that symbolizes the normalized dataset and will be returned
mu = zeros(1, size(X_norm, 2));                  %Creates an empty array, intended to store the means of the features
sigma = zeros(1, size(X_norm, 2));               %Creates an empty array, intended to store the standart deviations of the features

mu = mean(training_sets);                        %Computing the means of the features of the training sets and storing them in an array mu
sigma = std(training_sets);                      %Computing the standart deviations of the features of the training sets and storing them in an array sigma
X_norm = X_norm - mu;                            %Subtracting the means of the features of the training sets from the dataset to normalize
X_norm = X_norm ./ sigma;                        %Dividing the data to normalize on the standart deviations of the features of the training sets

end
