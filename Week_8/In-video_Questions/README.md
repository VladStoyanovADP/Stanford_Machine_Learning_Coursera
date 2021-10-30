![Unsupervised_Learning_Introduction](https://github.com/VladStoyanoff/Stanford_Machine_Learning_Coursera/blob/main/Week_8/In-video_Questions/Unsupervised_Learning_Introduction.png)

Option 1: Correct, because data fed to an unsupervised learning algorithms, does not have any specific labels. Concretely, we rely on the algorithm to rather find some kind of structure, instead of telling the algorithms ourselves, what output should they give back (the developer still has to specify a number of clusters that should be found though).

Option 2: Correct, because clustering is a learning algorithm that takes an input of samples and finds structure within the data, without the need of predefined output labels.

Option 3: Correct, because that is the definition of unsupervised learning.

Option 4: Incorrect, because there are many other unsupervised algorithms such as Hierarchical Clustering, Anomaly Detection, Principal Component Analysis, Apriori Algorithm.

![K_Means_Algorithm](https://github.com/VladStoyanoff/Stanford_Machine_Learning_Coursera/blob/main/Week_8/In-video_Questions/K_Means_Algorithm.png)

Option 1: If we assign K to be the number of clusters (and lowercase k to be a number between 1:K), i to be the number of examples and mu(k) to be the cluster centroid for k = 1:K, then this is correct, because c(i) is an index from 1 to K (K being the number of clusters specified) of the cluster centroid closest to x(i). Mathematically denoting this, we could say that finding k that mimizes the norm of x(i) - mu(k), squared (a.k.a (|| x(i) - mu(k) ||)^2) = c(i). In this case, if c(3) = 5, then the cluster k that minimizes the squared norm of x(i) - mu(k) is the 5th k cluster.

Option 2: Following the logic above, then this is correct as well.

Option 3: Following the logic of the answer for Option 1, we see that the cluster k that has the smallest distance between x(2) and mu(k) is 3. For x(3), it's 5. 3 != 5, so this is incorrect.

Option 4: c(2) = 3, so following the logic from Option 1, we conclude that k = 3 minimizes the squared norm between x(2) and mu(k).

![Optimization_Objective](https://github.com/VladStoyanoff/Stanford_Machine_Learning_Coursera/blob/main/Week_8/In-video_Questions/Optimization_Objective.png)

Option 1: There's no learning rate parameter when using the K-Means algorithm. Incorrect.

Option 2: The algorithm should return a lower cost on each iteration. Let's consider the cost function (a.k.a distortion cost function) for K-Means algorithm to prove this: Denoting m to be the number of samples, mu to be the cluster centroid, c to be the cluster, then vectorizing the cost function, we can prove that: 1/m * sum( x - mu ).^2 will be lower on each iteration, due to cluster assignment and move centroid steps of the K-Means algorithm, optimizing the norm of the samples and the nearest cluster centroid until converge to a local or global optima. Hence, this option is incorrect. The only thing that could go wrong is converging to a local optima, which would skew the output results, but not increase the cost function.

Option 3: The number of clusters does not have an impact on the cost function. The only thing that could be slighly odd, is if one would specify more clusters than examples, but again, that has no impact on the cost function, because the cost function is measuring the squared distance between the samples and the nearest cluster centroids. At convergence after n times of running K-Means algorithm, no sample will have to measure it's distance to the "lonely" cluster centroids, because there's a cluster centroid that's closer to them.

Option 4: Following the logic of Option 2, this must be the correct answer.

![Random_Initilization](https://github.com/VladStoyanoff/Stanford_Machine_Learning_Coursera/blob/main/Week_8/In-video_Questions/Random_Initilization.png)

Option 1: If one executes what has been described in this option, one would get a bunch of cluster centroids stacked on top of one of the randomly picked samples. Bad idea if one wants to randomly initialize cluster centroids. Incorrect.

Option 2: This is actually close to the truth, except that a better option would be to choose k distinct random integers from all the samples, instead of all the clusters.
For example, if we have specified only 2 clusters, then executing this action, would never initialize a cluster centroid at x(i), for i > 2. Incorrect, because there's a better way.

Option 3: Following the logic in Option 2, then this is the best way to randomly initialize cluster centroids. A good note is that one should do this only if K is =< 10. For a bigger input of clusters, a different strategies shall be used.

Option 4: This technique is generally used for 2 things:
1. for random initialization when initializing theta parameters before running a forward pass in a neural network. Theta parameters filled with zeros would cause calculation errors in a neural network. The function for that can be found here: [link_to_function_random_initialize_weights](https://github.com/VladStoyanoff/Stanford_Machine_Learning_Coursera/blob/main/Week_5_Assignments/Programs/Written_By_Me/randInitializeWeights%20(1).m) 

2. Performing gradient checking, when using a neural network algorithm. There's usually 2 methods to go about doing this, one being the one-sided difference, and the other the two-sided difference, which is more accurate. The intuition behind gradient cheking is, if one could imagine the cost as a function of parameter theta, and take derivative (slope of the line), then he could calculate theta - epsilon and theta + epsilon. Then running a straight line between those 2 points on the plot, would return a slope that is pretty much equal to the original. Hence one could check whether the derivaties from the backpropagation are similar to the values returned from the gradient checking.

Having this said, one should rather stick to using the epsilon technique for neural networks, because there is not a single reason why this would be more effective than Option 3 here. Incorrect.

![Choosing_The_Number_Of_Clusters](https://github.com/VladStoyanoff/Stanford_Machine_Learning_Coursera/blob/main/Week_8/In-video_Questions/Choosing_The_Number_Of_Clusters.png)

Option 1: Incorrect. One can prove this by quickly entertaining the following thought: If the developer has 5 examples and 5 cluster that are evenly distributed - so cluster 1 is for example 1, etc., then the cost would be zero, because the squared distance between x(i) and the closest cluster centroid would be zero, thus giving the developer a cost of 0. On the other hand if the cluster is just 1, then some examples will be closer and some further away from the cluster centroid, giving the developer a cost > 0. Hence it's very possible that the cost changes as a function of the number of clusters k.

Option 2: One can't conclude what "correct" is, because it is subjective when using unsupervised learning algorithms. Following the logic given in Option 1, one could create a situation where the cost is zero, but that wouldn't be at all practical. In other words, the developer's main goal is not always finding the parameters that minimize the cost function, unlike supervised learning. Incorrect.

Option 3: This is the correct answer, because following the logic in Option 1, the more clusters you have the lower the cost you will have. So the only thing that could've prevented the cost function returning a lower cost when using 5 clusters, than using 3, is getting stuck in a local optima. Correct.

Option 4: This, is subjective answer and following it's own logic, is correct, because running the algorithm with 3 clusters will eventually give a higher cost than the run with 5 clusters. Although given the information in the question, one would reach a different conclusion, taking the big picture in perspective. Incorrect.

![Motivation_I_Data_Compression](https://github.com/VladStoyanoff/Stanford_Machine_Learning_Coursera/blob/main/Week_8/In-video_Questions/Motivation_I_Data_Compression.png)

Option 1: The features are vectors containing m values = number of samples in the dataset. For examples if there are 5000 samples, then x(1) would be a vector with 5000 values. n denotes the dimensionality = number of features. So if we apply dimensionality reduction, we will get out vectors containing just the same amount of samples, but with less features. So the last z sample is not to be denoted by z(k), but - z(n). Incorrect.

Option 2: Following the logic of option 1, this is incorrect as well. What makes it even more incorrect is that k will never be bigger than n, if one applies dimensionality reduction. Incorrect

Option 3: Following the logic of option 1, this is the correct answer. We see that the samples are denoted properly, and the dimensions, when compressed, are always lower than the original number of features. Correct.

Option 4: Following the logic of option 1, we see that the samples are denoted correctly, but the dimensions will never be more after dimensionality compression. Incorrect.

![Motivation_II_Visualization](https://github.com/VladStoyanoff/Stanford_Machine_Learning_Coursera/blob/main/Week_8/In-video_Questions/Motivation_II_Visualization.png)

Option 1: When applying dimensionality compression, the dimensionality of the new set of features will never be more than the number of features in the original set. Incorrect.

Option 2: When applying dimensionality compression, the dimensionality of the new set of features will always be equal to or less than the number of features in the original set. Correct.

Option 3: To visualize, one would need the dimensions to be 2 or 3 ( so that the relationship between the features can be plotted on a 2D or a 3D plot ). This option, makes no logic though, because more than 4 dimensions will not be easy to visualize at all. We'd need a setting where k =< 3 (and not k >= 4). Incorrect.

Option 4: Following the logic of Option 3, then this is the correct answer. Correct.

![Principal_Component_Analysis_Problem_Formulation](https://github.com/VladStoyanoff/Stanford_Machine_Learning_Coursera/blob/main/Week_8/In-video_Questions/Principal_Component_Analysis_Problem_Formulation.png)

Option 1: 

![Principal_Component_Analysis_Algorithm](https://github.com/VladStoyanoff/Stanford_Machine_Learning_Coursera/blob/main/Week_8/In-video_Questions/Principal_Component_Analysis_Algorithm.png)

![Reconstruction_From_Compressed_Representation](https://github.com/VladStoyanoff/Stanford_Machine_Learning_Coursera/blob/main/Week_8/In-video_Questions/Reconstruction_From_Compressed_Representation.png)

![Choosing_the_Number_of_Principal_Components](https://github.com/VladStoyanoff/Stanford_Machine_Learning_Coursera/blob/main/Week_8/In-video_Questions/Choosing_the_Number_of_Principal_Components.png)

![Advice_For_Applying_PCA](https://github.com/VladStoyanoff/Stanford_Machine_Learning_Coursera/blob/main/Week_8/In-video_Questions/Advice_For_Applying_PCA.png)
