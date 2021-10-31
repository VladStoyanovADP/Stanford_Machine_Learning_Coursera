![Anomaly_Detection_1](https://github.com/VladStoyanoff/Stanford_Machine_Learning_Coursera/blob/main/Week_9/In-Video_Questions/Anomaly_Detection_1.png)

Option 1: If epsilon marks the boundary where the algorithm distinguishes anomalies from non-anomalies, and when p(x) =< epsilon marks it as an anomaly, then p(x) > epsilon is a non-anomaly. In this problem, the algorithm is flagging too many examples as anomalies, thus, increasing the parameter epsilon, will widen the boundary, resulting in even more flagging of anomalies as non-anomalies. Incorrect.

Option 2: Following the logic on option 1, this is the correct answer. Decreasing the parameter epsilon will tighten the boundary and make sure that any sample outside this boundary get flagged as an anomaly. Correct.

![Anomaly_Detection_2](https://github.com/VladStoyanoff/Stanford_Machine_Learning_Coursera/blob/main/Week_9/In-Video_Questions/Anomaly_Detection_2.png)

Option 1: On the plot, it is clearly seen that the mean parameter mu lays between -4 and -2, which is -3. Assuming that our data's probability distribution is Gaussian with mean mu and variance sigma^2, the formula for calculating the probability of x, includes computing the result from SUBTRACTING the mean value from all the samples' values. -(-3) = + , so option 1 and 2 fall out. Incorrect.

Option 2: Following the logic on option 1, this is incorrect as well.

Option 3: Sigma is the width a.k.a the standart deviation of the gaussian distribution. 2 * 4 in the denominator means that the sd = 2, because the formula notes that we should take sigma and take it to the power of 2. On the plot we see that a value of sigma = 2, is very plausible (and much more likely, than 2 * 1/2, which is the next answer). In practice, sigma can be precisely measured by calculating the average squared difference between all the values minus the mean mu, but here the values are not given, so one must rely on eyeballing it. Correct.

Option 4: Following the logic on option 3, this is incorrect.

![Anomaly_Detection_3](https://github.com/VladStoyanoff/Stanford_Machine_Learning_Coursera/blob/main/Week_9/In-Video_Questions/Anomaly_Detection_3.png)

Option 1: To calculate the squared standart deviation sigma(j), one would first need to calulcate the 

Option 2:

Option 3:

Option 4:

![Anomaly_Detection_4](https://github.com/VladStoyanoff/Stanford_Machine_Learning_Coursera/blob/main/Week_9/In-Video_Questions/Anomaly_Detection_4.png)

Option 1: 

Option 2:

Option 3:

Option 4:

![Anomaly_Detection_5](https://github.com/VladStoyanoff/Stanford_Machine_Learning_Coursera/blob/main/Week_9/In-Video_Questions/Anomaly_Detection_5.png)

Option 1: 

Option 2:

Option 3:

Option 4:

![Anomaly_Detection_6](https://github.com/VladStoyanoff/Stanford_Machine_Learning_Coursera/blob/main/Week_9/In-Video_Questions/Anomaly_Detection_6.png)

Option 1: 

Option 2:

Option 3:

Option 4:

![Anomaly_Detection_7](https://github.com/VladStoyanoff/Stanford_Machine_Learning_Coursera/blob/main/Week_9/In-Video_Questions/Anomaly_Detection_7.png)

Option 1: 

Option 2:

Option 3:

Option 4:

![Anomaly_Detection_8](https://github.com/VladStoyanoff/Stanford_Machine_Learning_Coursera/blob/main/Week_9/In-Video_Questions/Anomaly_Detection_8.png)

Option 1: 

Option 2:

Option 3:

Option 4:
