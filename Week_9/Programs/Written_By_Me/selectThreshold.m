%   [bestEpsilon bestF1] = SELECTTHRESHOLD(yval, pval) finds the best
%   threshold to use for selecting outliers based on the results from a
%   validation set (pval) and the ground truth (yval).

function [bestEpsilon bestF1] = selectThreshold(yval, pval)

%% Initializing useful values

bestEpsilon = 0;
bestF1 = 0;
F1 = 0;

stepsize = (max(pval) - min(pval)) / 1000; % Initializes the stepsize for epsilon
for epsilon = min(pval):stepsize:max(pval) % Loops for 1000 times, with epsilon getting bigger on each iteration (adding the stepsize)

    cvPredictionslog = pval < epsilon;             % Returns a logical array with 1's at the indexes which are less than the value of epsilon (the anomalies).
    cvPredictions = double(cvPredictionslog);      % Transforms the logical array into an array with zeros and ones.

    tp = sum((cvPredictions == 1) & (yval == 1));  % Computes the true positives.
    fp = sum((cvPredictions == 1) & (yval == 0));  % Computes the false positives.
    fn = sum((cvPredictions == 0) & (yval == 1));  % Computes the false negatives.

    prec = tp / (tp + fp);  % Computes the precision.
    rec = tp / (tp + fn);   % Computes the recalll. Essentially, all those 5 computes are needed when trying to decide whether epsilon is a good value, with very little positive labels in the data (where y = 1).


    F1 = (2 * prec * rec) / (prec + rec); % Computing the F1 score, which gives the developer a scalar from 0 to 1 indicating how good the choice of epsilon is.

    if F1 > bestF1           % If the choice on this loop is better than last time, substitute replace it with the best.
       bestF1 = F1;
       bestEpsilon = epsilon;
    end
end

end

%% Plotting
%  Visualize the fit
%visualizeFit(X,  mu, sigma2);
%xlabel('Latency (ms)');
%ylabel('Throughput (mb/s)');
%  Draw a red circle around those outliers
%hold on
%plot(X(outliers, 1), X(outliers, 2), 'ro', 'LineWidth', 2, 'MarkerSize', 10);
%hold off
