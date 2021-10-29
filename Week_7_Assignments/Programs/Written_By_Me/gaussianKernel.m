%   sim = gaussianKernel(x1, x2) returns a gaussian kernel between x1 and x2
%   and returns the value in sim

function sim = gaussianKernel(x1, x2, sigma)

%% Ensures that x1 and x2 are column vectors
x1 = x1(:); x2 = x2(:);

%% The following variables shall be returned correctly at the end of this program.
sim = 0;

%% Meat

sim = exp(- (sum((x1 - x2).^2) ./ ((sigma^2) * 2))); % The Gaussian kernel function.
  
end
