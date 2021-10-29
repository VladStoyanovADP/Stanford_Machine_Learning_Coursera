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
1. for random initialization when initializing theta parameters before running a forward pass in a neural network. Theta parameters filled with zeros would cause calulcation errors in a neural network. The function for that can be found here: [link_to_function_random_initialize_weights](https://github.com/VladStoyanoff/Stanford_Machine_Learning_Coursera/blob/main/Week_5_Assignments/Programs/Written_By_Me/randInitializeWeights%20(1).m)  

![Choosing_The_Number_Of_Clusters](https://github.com/VladStoyanoff/Stanford_Machine_Learning_Coursera/blob/main/Week_8/In-video_Questions/Choosing_The_Number_Of_Clusters.png)
