![Quiz_Unsupervised_Learning_1](https://github.com/VladStoyanoff/Stanford_Machine_Learning_Coursera/blob/main/Week_8/Quizzes/Quiz_Unsupervised_Learning_1.png)

Option 1: K-Means is a clustering algorithm, falling in the category of unsupervised learning (returns a result which hasn't been seen before, contrary to supervised, which returns a result based on past data). Having this said, this option is correct, because, if the input one feeds to this algorithm is just the articles, then one of the possible logical outputs, would be discovering the main topics covered, by the means of clustering. Correct.

Option 2: Unsupervised learning returns an output which hasn't been seen before, while supervised learning returns an output based on past data. Having this said, this option falls under the category of supervised learning. Incorrect.

Option 3: Following the logic of Option 1, this is also correct. Correct.

Option 4: To be able to achieve this, one would need to use a different algorithm, falling under the category of supervised learning, because one would first need to show the algorithm what is a spam and non-spam email. Training a SVM for spam classification would a suitable choice for this goal. Incorrect.

![Quiz_Unsupervised_Learning_2](https://github.com/VladStoyanoff/Stanford_Machine_Learning_Coursera/blob/main/Week_8/Quizzes/Quiz_Unsupervised_Learning_2.png)

Option 1: c(i) cannot be left unassigned, as long as we have ran cluster cluster assignment step with cluster centroids initialized. Incorrect.

Option 2: By plotting this on a coordinate plane, one would notice that x(i) is close to mu(1) and mu(2). With the help of the Pythagorean theorem, one can conclude, that the distance to mu(1) is smaller. Correct.

Option 3: By referring to a coordinate plane, one would see that the distance to mu(3) is the biggest. Incorrect.

Option 4: By referring to a coordinate plane, one would see that the distance to mu(2) is smaller than the distance to mu(3), but still, there's a cluster centroid that's even closer. Incorrect.

![Quiz_Unsupervised_Learning_3](https://github.com/VladStoyanoff/Stanford_Machine_Learning_Coursera/blob/main/Week_8/Quizzes/Quiz_Unsupervised_Learning_3.png)

Option 1: In K-Means algorithm, one would first initialize cluster centroids and then run a cluster assignement step (that assigns each example from the dataset to each cluster), and the reallocate the cluster centroids, so as to minimize the squared error of the distance of each example to the cluster centroid (a.k.a reducing the cost). This option lists te first iterative step, which is cluster assignment step. Correct.

Option 2: Following the logic of option 1, we conclude that testing on a validation set is not included in the K-Means algorithm. Validation sets are used with most supervised learning algorithms, to avoid overfitting on the test data. Incorrect.

Option 3: Randomly initializing cluster centroids, comes before the algorithm. It is used to prevent the cost getting stuck in a local optima, and usually, one would randomly initialize cluster centroids, only if one needs =< 10 clusters. Incorrect.

Option 4: Following the logic of option 1, then one would see that the listed on this option is the second iterative step - moving the cluster centroids in a position so as to minimize the mean squared error to the examples in the cluster that they have been assigned to in the first iterative step. Correct.

![Quiz_Unsupervised_Learning_4](https://github.com/VladStoyanoff/Stanford_Machine_Learning_Coursera/blob/main/Week_8/Quizzes/Quiz_Unsupervised_Learning_4.png)

Option 1: Picking the last iteration, does not guarantee that the cost will be the lowest, because random initialization, as one would guess, is random. Incorrect.

Option 2: In unsupervised learning, there are no labels to the data, because one does not know what to expect, except the number of clusters. Incorrect.

Option 3: After the K-Means algorithm has converged, then it's either reached a local or a global optima. The lowest cost will be returned in case it has reached a global optima. One could ensure highest chance of the cost converging to a global optima by picking the lowest cost, even though this does not 100% guarantee it. Following the logic specified here, this is the correct answer. Correct

Option 4: Following the logic of option 3, there is a way to make sure that you maximize your chances of finding the lowest cost, even though it's not 100% guaranteed that the K-Means will have converged to a global optima. Incorrect. 

![Quiz_Unsupervised_Learning_5](https://github.com/VladStoyanoff/Stanford_Machine_Learning_Coursera/blob/main/Week_8/Quizzes/Quiz_Unsupervised_Learning_5.png)

Option 1: This option is slighly subjective, because what the "best" option would be, depends on how many clusters the developer wants. Having this said, and seeing that it's not specified in the question, we can conclude that this option is incorrect. Incorrect.

Option 2: Picking the right number of clusters depends on the project goal, and sometimes, to minimize the cost function. One way one could pick the clusters is by the "elbow" method. Which discloses that one could start K-Means with n number of clusters (highly advisable that the starting cluster number is low), and increase the number of clusters by i after each K-Means iteration has converged. Generally, the more clusters specified, the lower the cost will be, but plotting the cost as a function of numer of clusters, one could see that the cost lowers very quickly as the number of clusters increase, up to a certain point, where it starts lowering on a slower pace. This change in cost imitates a human elbow on the plot, hence the name of the method. Correct.

Option 3: This would initialize the cluster centroids at (0, 0) on a 2D plot. Not a good idea for running a K-Means algorithm afterwards. Incorrect.

Option 4: By randomly initializing many times, one could improve the chances that the K-Means algorithm converges to a global, rather than, local optima. Correct.

![Quiz_Principal_Component_Analysis_1](https://github.com/VladStoyanoff/Stanford_Machine_Learning_Coursera/blob/main/Week_8/Quizzes/Quiz_Principal_Component_Analysis_1.png)

![Quiz_Principal_Component_Analysis_1_1](https://github.com/VladStoyanoff/Stanford_Machine_Learning_Coursera/blob/main/Week_8/Quizzes/Quiz_Principal_Component_Analysis_1_1.png)

Option 1: To denote the eigenvectors with accuracy, one has to run a PCA algorithm. From the choices given though, one can also conclude that the pattern in the relationship between x1 and x2, is that as x1 rises, so does x2 and vice versa. With that being said, the eigenvector would be parallel to the pattern of samples, rather than perpendicular to it. Correct.

![Quiz_Principal_Component_Analysis_1_2](https://github.com/VladStoyanoff/Stanford_Machine_Learning_Coursera/blob/main/Week_8/Quizzes/Quiz_Principal_Component_Analysis_1_2.png)

Option 2: Following the logic of option 1, this is also correct. U and -U are equally valid choices, so the negative value of u1 is also correct.

![Quiz_Principal_Component_Analysis_1_3](https://github.com/VladStoyanoff/Stanford_Machine_Learning_Coursera/blob/main/Week_8/Quizzes/Quiz_Principal_Component_Analysis_1_3.png)

Option 3: Following the logic of option 1, this is also incorrect. One does not need to run a PCA algorithm to conclude that eigenvectors which run along the growth pattern of the dataset will do a better job in minimizing the squared error. Incorrect.

![Quiz_Principal_Component_Analysis_1_4](https://github.com/VladStoyanoff/Stanford_Machine_Learning_Coursera/blob/main/Week_8/Quizzes/Quiz_Principal_Component_Analysis_1_4.png)

Option 4: Following the logic of option 1, this is also incorrect. One does not need to run a PCA algorithm to conclude that eigenvectors which run along the growth pattern of the dataset will do a better job in minimizing the squared error. Incorrect.

![Quiz_Principal_Component_Analysis_2](https://github.com/VladStoyanoff/Stanford_Machine_Learning_Coursera/blob/main/Week_8/Quizzes/Quiz_Principal_Component_Analysis_2.png)

Option 1: One would choose k so that the average squared projection error divided by the total variation in the data equals less than 0.1. In that case 99% variance is retained. One would choose the minimal amount of principal components to simplify the data, and potentially even succeed to visualize it on a 2d or 3d plane. Correct.

Option 2: Using the elbow method would not help in choosing k here, because one would not be looking to minimize cost, but to simplify data by shrinking the dimensions n. Incorrect.

Option 3: Choosing a big value for k would not be logical at all, because one would want to minimize the number of dimensions, rather than maximize it, when using a PCA algorithm. Incorrect.

Option 4: Choosing k with a relationship to what m, is not a good idea if one wants to shrink the dimensions. Generally m doesnt play in role in choosing k. M is used in calculating the average squared projection error, and the total variation in the data - both computations are needed to get a feedback which would be used by the developer to either keep k as it is, or change it. Incorrect.

![Quiz_Principal_Component_Analysis_4](https://github.com/VladStoyanoff/Stanford_Machine_Learning_Coursera/blob/main/Week_8/Quizzes/Quiz_Principal_Component_Analysis_4.png)

Option 1: Principal Component Analysis serves to simplify the data, by lowering the dimensions, while keeping the variance 99% or more. Following this logic, then this option is correct.

Option 2: SVD does not handle feature scaling, and one has to scale the features of the raw data, before processing it and applying PCA. Incorrect.

Option 3: Following the logic of option 2, this is correct.

Option 4: PCA can be used to reduce as many dimensions as the developer wants. The convention, though, is that one should not pick a dimension k, which results in a retained variance lower than 99%. Incorrect.

![Quiz_Principal_Component_Analysis_4_diff](https://github.com/VladStoyanoff/Stanford_Machine_Learning_Coursera/blob/main/Week_8/Quizzes/Quiz_Principal_Component_Analysis_4_diff.png)

Option 1: The formula to reconstruct an approximation x is the following: Xapprox = Ureduced * Z, where Ureduced is a n x k matrix, and Z is a k x 1 vector. Incorrect.

Option 2: There's no local or global optima when performing PCA, because the algorithm is not iterative (unless one chooses to do so with for loops, but still, that's not a learning algorithm). Incorrect.

Option 3: Mean normalization and feature scaling are a standart process of preprocessing steps one must take before using PCA, to avoid undersirable results. Correct.

Option 4: PCA simplifies the data, by shrinking the dimensions. As the option specifies n = k is senseless, and n < k is simply illogical.

![Quiz_Principal_Component_Analysis_5](https://github.com/VladStoyanoff/Stanford_Machine_Learning_Coursera/blob/main/Week_8/Quizzes/Quiz_Principal_Component_Analysis_5.png)

Option 1: PCA helps the developer visualize his data, if he can shrink the dimensions to 2d or 3d, while retaining at least 99% variance. Correct.

Option 2: PCA helps the developer shrink the size of his data, so that it doesnt take as much space, by lowering the dimensions (and still retaining at least 99% variance). Correct.

Option 3: PCA is used to shrink the features (dimensions) and not increase them. Incorrect.

Option 4: While PCA can help prevent overfitting, there is a much better practice for doing that - regularization.


