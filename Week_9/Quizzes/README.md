![Anomaly_Detection_1](https://github.com/VladStoyanoff/Stanford_Machine_Learning_Coursera/blob/main/Week_9/Quizzes/Anomaly_Detection_1.png)

Option 1: This option is better for a supervised learning algorithm because we can train it on past data of purchases. Incorrect.

Option 2: This option is suitable for anomaly detection, because it's very likely that the algorithm will have never seen an anomaly, when it occurs. Thus, it would be best to use the anomaly detection algorithm to ensure that it recognizes it. Correct.

Option 3: Similar to option 2, this is also a job for anomaly detection algorithm, beucase it's very likely that it will stumble upon cases which it had never seen before. Correct.

Option 4: Similar to option 1, this is a job for a supervised learning algorithm, such as an SVM,  because it can be trained on past data with patients that have the flu. Incorrect.

![Anomaly_Detection_2](https://github.com/VladStoyanoff/Stanford_Machine_Learning_Coursera/blob/main/Week_9/Quizzes/Anomaly_Detection_2.png)

Option 1: Flagging too many samples as anomalies, means that the boundary is too tight, and should be decreased. Incorrect.

Option 2: Flagging too many samples as anomalies, means that the boundary is too tight, and should be decreased. Correct.

![Anomaly_Detection_3](https://github.com/VladStoyanoff/Stanford_Machine_Learning_Coursera/blob/main/Week_9/Quizzes/Anomaly_Detection_3.png)

Option 1: In this case, one would want to capture the relationship between x1 and x2 in a way, that breaks the symmetry of parallel growing with eachother. Incorrect, because this option misses to consider x1. Incorrect.

Option 2: In this case, one would want to capture the relationship between x1 and x2 in a way, that breaks the symmetry of parallel growing with eachother. Incorrect, because this option misses to consider x2. Incorrect.

Option 3: In this case, one would want to capture the relationship between x1 and x2 in a way, that breaks the symmetry of parallel growing with eachother. Although this captures relationship, it is still not breaking the symmetry. Incorrect.

Option 4: In this case, one would want to capture the relationship between x1 and x2 in a way, that breaks the symmetry of parallel growing with eachother. This option would do a great job. Correct.

![Anomaly_Detection_4](https://github.com/VladStoyanoff/Stanford_Machine_Learning_Coursera/blob/main/Week_9/Quizzes/Anomaly_Detection_4.png)

Option 1: When there's a huge dataset with many positive and negative examples, supervised learning algorithm will do better job than anomaly detection. Incorrect.

Option 2: Anomaly detection works when there's very little positive examples. It can even work when there are none, but that would make the job harder of defining a good boundary. Correct.

Option 3: One can split his data in 3 sets - training, cv and test sets. Training contains all the negative examples, to make the gaussian distribution. The CV and test sets contain 50% of the anomalies each. The cross-validations set can be used to mark where the boundary should be, and the test set to test whether it all works as intended. Incorrect.

Option 4: This is also called error analysis, and is a good practice when engineering features. Correct. 

![Anomaly_Detection_5](https://github.com/VladStoyanoff/Stanford_Machine_Learning_Coursera/blob/main/Week_9/Quizzes/Anomaly_Detection_5.png)

Option 1: One noties that there's a huge stack of examples around -3, so that's a good choice for the mean value of the Gaussian distribution. Choices 2 and 4 fall out. As for the variance sigma, one can see that sigma while not being squared is 2, which should be the standart deviation. It's a good choice, considering the data given. Correct. 

Option 2: Following the logic of option 1, this is incorrect. 

Option 3: The standart deviation here would be the square of two, which just doesnt fit right and make sense considering the data. Incorrect. 

Option 4: Following the logic of option 1, this is incorrect.

