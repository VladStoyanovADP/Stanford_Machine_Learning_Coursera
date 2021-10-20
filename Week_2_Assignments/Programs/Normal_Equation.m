%Normal Equation - finds the values of theta for optimal cost, with no need
%of feature scaling or many iterations

function [theta] = normalEqn(X, y)

theta = zeros(size(X, 2), 1);       %array for theta

theta = pinv(X' * X) * (X' * y); %Using Normal Equation we don't need to scale features and it is all done in one single step, unlike gradient descent

end
