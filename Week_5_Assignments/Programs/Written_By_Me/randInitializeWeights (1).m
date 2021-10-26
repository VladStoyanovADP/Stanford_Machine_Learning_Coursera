%   W = RANDINITIALIZEWEIGHTS(L_in, L_out) randomly initializes the weights of a layer with L_in incoming connections and L_out outgoing connections.

function W = randInitializeWeights(L_in, L_out)
%% Randomly initialize the weights to small values. We choose random values,
% instead of an array full of zeros to avoid computational errors when
% activating the neural network

epsilon_init = sqrt(6) / (sqrt(L_in + L_out));                % An effective strategy for choosing epsilon is to base it on the number of units in the network.
W = rand(L_out, 1 + L_in) * 2 * epsilon_init - epsilon_init;  % the first column of W handles the "bias" terms, hence we add +1. 

end
