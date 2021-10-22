%   PLOTDATA(x,y) plots the data points with ^ for the positive examples
%   and o for the negative examples. X is assumed to be a Mx2 matrix.

function plotData(X, y)

figure; hold on;
  
    pos = find(y == 1);   % Find Indices of Positive 
    neg = find(y == 0);   % Find Indices of Negative Examples
    
    plot(X(pos, 1), X(pos, 2), 'k^','LineWidth', 1, 'MarkerSize', 7);         % Plot Examples
    plot(X(neg, 1), X(neg, 2), 'ko', 'MarkerFaceColor', 'y','MarkerSize', 7); % Plot Examples


xlabel('Exam 1 score') % Labels
ylabel('Exam 2 score') % Labels

legend('Admitted', 'Not admitted') % Legend, Specified in plot order

hold off;

end
