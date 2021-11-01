![Large_Scale_ML_1](https://github.com/VladStoyanoff/Stanford_Machine_Learning_Coursera/blob/main/Week_10/In-video_Questions/Large_Scale_ML_1.png)

Option 1: When there is a high bias problem in the data, more data will not improve performance. In the case of high bias where one doesn't want to fix the problem (in case the cost is satisfactory), then using a small dataset rather than the whole will do the same job, and should be preferred due to computational efficiency. Incorrect.

Option 2: Plotting cost as a function of number of iterations, will give insights on whether the cost is converging, but not give insights on whether calculating it with 1000 or 1,000,000 samples is a better choice. Incorrect.

Option 3: Plotting a learning curve and verifying that there’s a bias problem, indicates that more data will not improve performance. Incorrect.

Option 4: When there’s a high variance problem, more data helps fix that. Correct.

![Large_Scale_ML_2](https://github.com/VladStoyanoff/Stanford_Machine_Learning_Coursera/blob/main/Week_10/In-video_Questions/Large_Scale_ML_2.png)

Option 1: Stochastic gradient descent can be way faster than batch gradient descent, because it is not considering all the samples at once, but one at a time, when updating theta parameters. Usually 1-10 runs of stochastic gradient descent will be enough in finding the global optimum. Stochastic gradient descent is preferred when there’s a humongous amount of data (in the span of millions). Correct. 

Option 2: The cost should go down in case batch gradient descent is implemented properly on every iteration, because it’s considering all the samples and the step it is taking is guaranteed to find better suited parameters. On the other hand stochastic gradient descent might stumble upon a sample which trains worse theta parameters, but that’s being unlucky, and in the long-term will reach the global optimum. Correct. 

Option 3: Stochastic gradient descent can be used in any algorithm where theta parameters must be updated by iterative steps. Incorrect. 

Option 4: Shuffling the data ensures that any symmetry in ordering the data beforehand is broken, and this is important to ensure that stochastic gradient descent eventually finds the global optimum. Correct.



![Large_Scale_ML_3](https://github.com/VladStoyanoff/Stanford_Machine_Learning_Coursera/blob/main/Week_10/In-video_Questions/Large_Scale_ML_3.png)

Option 1: If b was 1, then that would be stochastic gradient descent. Incorrect.

Option 2: Back gradient descent considers all the examples m, and b = m / 2 is half of that. Incorrect

Option 3: Following the logic of option 2, this is the correct answer.

Option 4: Incorrect, as one would need to match with m and that's option 3. Incorrect.

![Large_Scale_ML_4](https://github.com/VladStoyanoff/Stanford_Machine_Learning_Coursera/blob/main/Week_10/In-video_Questions/Large_Scale_ML_4.png)

Option 1: Picking a small learning rate, will ensure that the algorithm finds the global optimum slower, because it’s more “cautious” in it’s considerations. The advantage to this is that the chance of diverging is lower. Incorrect. 

Option 2: Choosing a small parameter alpha is most surely to ensure in lower cost, because when using stochastic gradient descent, and it’s reached the global optimum, it will oscillate around itself in a small circle, because it’s considering 1 sample at a time, and not every sample will update for better parameters. Correct

Option 3: Smaller learning rate means smaller oscillations that the algorithm will be taking, but larger will most likely make it diverge at a certain point. Incorrect. 

Option 4: This is correct, and one other reason might be that the considered samples are too little, and one has “zoomed” in the plot too much to see the pattern. If one increases the samples considered, that would help him see a pattern in reducing the cost, if there is such, because it quite literally simulates zooming out of the graph. Correct.

![Large_Scale_ML_5](https://github.com/VladStoyanoff/Stanford_Machine_Learning_Coursera/blob/main/Week_10/In-video_Questions/Large_Scale_ML_5.png)

Option 1: Because the online algorithm is running forever and considers one sample at a time, then any change in customer behaviours will be reflected on time, when optimizing the theta parameters. Correct.

Option 2: Just the fact that the gradient considered is only from 1 sample, doesn't mean that learning rate alpha is not picked. Incorrect.

Option 3: Following the logic on option 1, this is correct as well. Correct.

Option 4: Just as any other algorithm, one would need good features, so that the algorithm works as intended and does the job it was created for efficiently. Incorrect.

![Large_Scale_ML_6](https://github.com/VladStoyanoff/Stanford_Machine_Learning_Coursera/blob/main/Week_10/In-video_Questions/Large_Scale_ML_6.png)

Option 1: There are 10 computers considered, so computing only ⅕ of the data doesn't make sense. Incorrect. 

Option 2: This method is used so that a single computer doesn't proces too much data at once, so running forward pass and backprop on 1/10 of the data aligns with taking some load off the computer. Correct.

Option 3: Running backprop on all the data doesnt mean that there are no computations. As a matter of fact, that’s where the gradients are computed, so one should continue computing only 1/10 of the data, so as to not overload a single computer. Incorrect.

Option 4: Similar to option 3, forward pass is still a costly computation with a lot of calculations, so one should do it on 1/10 of the data. Incorrect.
