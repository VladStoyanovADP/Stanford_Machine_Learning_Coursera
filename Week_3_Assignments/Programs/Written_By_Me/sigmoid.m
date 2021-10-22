% Computes the sigmoid of z

function g = sigmoid(z)

e = exp(1);             %Defining Euler's number
g = 1 ./ (1 + e .^ -z)  %Computing the sigmoid of each value of z (z can be a matrix, vector or a scalar).

end
