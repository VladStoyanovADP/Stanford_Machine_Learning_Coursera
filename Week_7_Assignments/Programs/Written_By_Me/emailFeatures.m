%   x = EMAILFEATURES(word_indices) takes in a word_indices vector and 
%   produces a feature vector from the word indices. 

function x = emailFeatures(word_indices)

%% Initializing useful values
n = 1899;        % Useful for returning a logical array with the legnth of the vocabulary list (in practice, a vocabulary list with about 10,000 to 50,000 words is often used).

%% The following variable shall be returned correctly at the end of this program.
x = zeros(n, 1);

%    Binary feature vector that indicates whether a particular
%    word occurs in the email. That is, x(i) = 1 when word i
%    is present in the email. Concretely, if the word 'the' (say,
%    index 60) appears in the email, then x(60) = 1. The feature
%    vector should look like:
%    x = [ 0 0 0 0 1 0 0 0 ... 0 0 0 0 1 ... 0 0 0 1 0 ..]             

x(word_indices) = 1;

end
