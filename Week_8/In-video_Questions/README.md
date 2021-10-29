![Unsupervised_Learning_Introduction](https://github.com/VladStoyanoff/Stanford_Machine_Learning_Coursera/blob/main/Week_8/In-video_Questions/Unsupervised_Learning_Introduction.png)

Option 1: Correct, because data fed to an unsupervised learning algorithms, does not have any specific labels. Concretely, we rely on the algorithm to rather find some kind of structure, instead of telling the algorithms ourselves, what output should they give back (the developer still has to specify a number of clusters that should be found though).

Option 2: Correct, because clustering is a learning algorithm that takes an input of samples and finds structure within the data, without the need of predefined output labels.

Option 3: Correct, because that is the definition of unsupervised learning.

Option 4: Incorrect, because there are many other unsupervised algorithms such as Hierarchical Clustering, Anomaly Detection, Principal Component Analysis, Apriori Algorithm.

![K_Means_Algorithm](https://github.com/VladStoyanoff/Stanford_Machine_Learning_Coursera/blob/main/Week_8/In-video_Questions/K_Means_Algorithm.png)

Option 1: If we assign K to be the number of clusters (and lowercase k to be a number between 1:K), i to be the number of examples and mu to be the cluster centroid, then this is incorrect, because c(i) is an index from 1 to K (K being the number of clusters specified) of the cluster centroid closest to x(i). Mathematically denoting this, we could say that finding k that mimizes the norm of x(i) - mu(k) = c(i).

![Optimization_Objective](https://github.com/VladStoyanoff/Stanford_Machine_Learning_Coursera/blob/main/Week_8/In-video_Questions/Optimization_Objective.png)

![Random_Initilization](https://github.com/VladStoyanoff/Stanford_Machine_Learning_Coursera/blob/main/Week_8/In-video_Questions/Random_Initilization.png)

![Choosing_The_Number_Of_Clusters](https://github.com/VladStoyanoff/Stanford_Machine_Learning_Coursera/blob/main/Week_8/In-video_Questions/Choosing_The_Number_Of_Clusters.png)
