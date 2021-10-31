%   Z = projectData(X, U, K) computes the projection of 
%   the normalized inputs X into the reduced dimensional space spanned by
%   the first K columns of U. It returns the projected examples in Z.

function Z = projectData(X, U, K)

%% The following variable shall be returned correctly at the end of this program.
Z = zeros(size(X, 1), K);

%% Meat

Z = X * U(:, 1:K); %projecting each example in X onto the top K eigenvectors in U.

end

%%  Plotting the normalized dataset (returned from pca)
%plot(X_norm(:, 1), X_norm(:, 2), 'bo');
%axis([-4 3 -4 3]); axis square
%  Draw lines connecting the projected points to the original points
%hold on;
%plot(X_rec(:, 1), X_rec(:, 2), 'ro');
%for i = 1:size(X_norm, 1)
%    drawLine(X_norm(i,:), X_rec(i,:), '--k', 'LineWidth', 1);
%end
%hold off