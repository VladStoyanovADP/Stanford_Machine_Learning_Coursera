% plotting already loaded data with specific ticks and limits

function plotData(x, y)

figure; % open a new figure window

  plot(x, y, 'rx', 'MarkerSize', 10); % Plot the data
  xlim([4.0 24.0]);
  xticks([4.0 6.0 8.0 10.0 12.0 14.0 16.0 18.0 20.0 22.0 24.0]);
  ylim([-5.0 25.0])
  ylabel('Profit in $10,000s'); % Set the y-axis label
  xlabel('Population of City in 10,000s'); % Set the x-axis label

end
