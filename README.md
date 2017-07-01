## DataAnalysis
### Data Visualization, KNN Regression and Lenear Regression in R

### Task 1:
### Histogram:
Histogram is a graphical representation of a continuous set of data which helps us to discover and visualize the data according to its frequency distribution. It helps us to inspect the data distribution, outliers, skewness etc. existing in a dataset. Before constructing a histogram from the continuous data, we need to split data into intervals. These intervals are also called bins which are calculated using four different methods called Sturges’ Rule, Scott’s Rule, Freedman-Diaconics Choice and Square Root Choice. These each interval of data will be represented in histogram with their corresponding values. In the following section of this document, there will be a brief introductions about them; [1]
### Sturges’ Rule
According to the sturges’ rules the total number of bins (h) in histogram for the data in normal distribution with dataset size (n) greater than 30 is calculated using the following equation; [1]
h = [log2 (n) + 1], where n is the sample size. 
### Scott’s Rule:
The number of bins (h) obtained from Scott’s rule are considered to be the optimal numbers of bin for all the random samples of normally distributed data and it can be calculated as follows; [1]
h = (3.5s)/ n1/3, where s is the standard deviation.
### Freedman-Diaconis’ (FD) Choice:
In this method 3.5s of Scott’s rule is replaced by 2IQR (i.e. interquartile range) due to which it is less sensitive to outliers in data then standard deviation. [1]
 		h = {2IQR(x)}/n1/3, where IQR is interquartile range of sample
### Square Root Choice:
It is claimed that normally the data analysis done in Excel histograms uses this method to determine the total numbers of bins (h). [1]
		h = √n, where n is the total numbers of rows in the dataset

To complete this exercise work I have used R script for data visualization. In a default setting of R while creating a histogram it uses Sturges method to calculate numbers of bins. According to my observations for 12 different attributes Sturges method has a constant bin size of 14. And according to the Square Root method it is also constant with 69 bins for all the attributes. But Scott’s Rule and Freedman-Diaconis’s (FD) choice were optimal solutions where the bin size was directly proportional to the available data type. Since, Scott rule is sensitive to outliers so, it might be a good idea to use FD choice for the dataset which has outliers. 
While plotting histogram for 12 different attributes of multi-dimensional white wine datasets, these four different method resulted wide verities of data visualization. According to the differences of the available data in different attributes even the constant methods like Sturges’ rule and Square root choices has different representation in histograms. According to the observations while plotting these 48 different histograms the visualization results of Scott’s rule and FD choice were better to have a better understanding of the data. Since, FD methods have larger bin size then Scott’s method which has resulted a problem to locate the actual value of particular value in a histogram. In some of the cases the histogram obtained from Scott’s was easier to understand then from FD method. In the specific example of quality attribute data the histogram obtained by Sturges method contained more than required numbers of bins. So, that we can conclude that they are really efficient solutions to determine the numbers of bins in histogram but there does not exist a bullet proof solution. It is also depends on the type of data in the dataset and we need to select numbers of bins according to our need. 
In the following section of this document there are 48 different histograms obtained according to the results of four different methods to determining the numbers of bins. In some of the cases these methods have very effective results and they have represented the data in an easily understandable manner and some of them might not be that well visualized. And it might be also difficult to determine the interval of data belonging to the particular density values.   

![img](https://github.com/dinesh2043/DataAnalysis/blob/master/figure/fig1.JPG)
|Figure 1: Default (14 bins)		|Figure 2: Scott’s Rule (60 bins)	
![img](https://github.com/dinesh2043/DataAnalysis/blob/master/figure/fig2.JPG)  
Figure 3: FD choice (89 bins)		Figure 4: Square Root Choice (69 bins)
![img](https://github.com/dinesh2043/DataAnalysis/blob/master/figure/fig3.JPG)  
Figure 5: Default (14 bins)			Figure 6: Scott Rule (50 bins)	
![img](https://github.com/dinesh2043/DataAnalysis/blob/master/figure/fig4.JPG)  
Figure 7: FD Choice (79 bins)		Figure 8: Square Root Choice (69 bins)
![img](https://github.com/dinesh2043/DataAnalysis/blob/master/figure/fig5.JPG)   
Figure 9: Default (14 bins)				Figure 10: Scott Rule (67 bins)	
![img](https://github.com/dinesh2043/DataAnalysis/blob/master/figure/fig6.JPG)  
Figure 11: FD Choice (118 bins)		Figure 12: Square Root Choice (69 bins)
![img](https://github.com/dinesh2043/DataAnalysis/blob/master/figure/fig7.JPG)  
Figure 13: Default (14 bins)			Figure 14: Scott’s Rule (63 bins)		
![img](https://github.com/dinesh2043/DataAnalysis/blob/master/figure/fig8.JPG)  
Figure 15: FD Choice (68 bins)		Figure 16: Square Root Choice (69 bins)
![img](https://github.com/dinesh2043/DataAnalysis/blob/master/figure/fig9.JPG)   
Figure 17: Default (14 bins)			Figure 18: Scott’s Rule (75 bins)
![img](https://github.com/dinesh2043/DataAnalysis/blob/master/figure/fig10.JPG)    
Figure 19: FD Choice (205 bins)		Figure 20: Square Root Choice (69 bins)
![img](https://github.com/dinesh2043/DataAnalysis/blob/master/figure/fig11.JPG)   
Figure 21: Default (14 bins)			Figure 22: Scott’s Rule (82 bins)
![img](https://github.com/dinesh2043/DataAnalysis/blob/master/figure/fig12.JPG)  
Figure 23: FD Choice (106 bins)			Figure 24: Square Root (69 bins)
![img](https://github.com/dinesh2043/DataAnalysis/blob/master/figure/fig13.JPG)   
Figure 25: Default (14 bins) 			Figure 26: Scott Rule (50 bins)	
![img](https://github.com/dinesh2043/DataAnalysis/blob/master/figure/fig14.JPG)  
Figure 27: FD Choice (63 bins)		Figure 28: Square Root Choice (69 bins)
![img](https://github.com/dinesh2043/DataAnalysis/blob/master/figure/fig15.JPG)   
Figure 29: Default (14 bins)			Figure 30: Scott’s Rule (85 bins) 	
![img](https://github.com/dinesh2043/DataAnalysis/blob/master/figure/fig16.JPG)  
Figure 31: FD Choice (101 bins)		Figure 32: Square Root Choice (69 bins)
![img](https://github.com/dinesh2043/DataAnalysis/blob/master/figure/fig17.JPG)   
Figure 33: Default (14 bins)			Figure 34: Scott’s (36 bins)
![img](https://github.com/dinesh2043/DataAnalysis/blob/master/figure/fig18.JPG)  
Figure 35: FD Choice (50 bins)		Figure 36: Square Root Choice (69 bins)
![img](https://github.com/dinesh2043/DataAnalysis/blob/master/figure/fig19.JPG)   
Figure 37: Default (14 bins)			Figure 38: Scott’s Rule (37 bins)	
![img](https://github.com/dinesh2043/DataAnalysis/blob/master/figure/fig20.JPG)  
Figure 39: FD Choice (53 bins)		Figure 40: Square Root Choice (69 bins)
![img](https://github.com/dinesh2043/DataAnalysis/blob/master/figure/fig21.JPG)   
Figure 41: Default (14 bins)			Figure 42: Scott’s Rule (25 bins)	
![img](https://github.com/dinesh2043/DataAnalysis/blob/master/figure/fig22.JPG)  
Figure 43: FD Choice (28 bins)		Figure 44: Square Root Choice (69 bins)
![img](https://github.com/dinesh2043/DataAnalysis/blob/master/figure/fig23.JPG)   
Figure 45: Default (14 bins)				Figure 46: Scott’s Rule (33 bins)

![img](https://github.com/dinesh2043/DataAnalysis/blob/master/figure/fig24.JPG)  
Figure 47: FD Choice (51 bins)		Figure 48: Square Root Choice (69 bins)
### Task2:
### Quartile: 
In statistics a set of data values are divided by three points into four equal subsets of values, where each subset contains a quarter of the data. These three points dividing the set of data are called quartiles, normally used in the ranking of the set of data. They are called first quartile (Q1), second quartile (Q2) and third quartile (Q3). Q1 is also defined as the middle value between the smallest number and the median of the dataset. Q2 is also known as median of the dataset. Similarly, Q3 is the middle value between the median and the highest value of the dataset. [2]
### Box Plot:
A box plot can be defined as a graphical representation of the dataset, where the graph is drawn based on the calculation of minimum, first quartile, median, third quartile and maximum values of dataset. It is called box plot because its graphical representation contains a rectangular box and two lines extending from top and bottom of the rectangle. In a box plot the top of the rectangle indicates Q3, the horizontal line drawn nearly in the middle of rectangle indicates median (Q2) and the bottom of the rectangle indicates Q1. The vertical line drawn extending from the top of the rectangle indicates the maximum value at its upper bound. Similarly the vertical line drawn extending from the bottom of the rectangle indicates the minimum value at its lower bound. The box plot is drawn after calculating minimum, first quartile, second quartile, third quartile, and maximum values. Normally in a box plot y-axis of the graph is scaled according to these values to represent the data in a graph. All the values which are outside the minimum and maximum ranges are outliers and they are drown with the dots outside of these lines in the graph. Box plot is very efficient tool to visualize the outliers in a dataset. [2]
As a second task of the exercise work I have drawn box plot of 12 attributes to check if they contain any outliers or not. According to the observations some attributes like fixed acidity, volatile acidity, citric acid, chlorides, free sulphur dioxide, total sulphur dioxide, PH and sulphates had quite a lot of outliers. Similarly attributes like residual sugar, density and quality had a few outliers. Finally the attribute alcohol had no outliers. There was also another strange result in the box plot of quality data where Q2 line and Q3 line ware at same line indicating that the median and the third quartile values are same for the dataset.
In the following section we will be able to see the boxplot of all of those attributes and the observation I have mentioned can be easily observed; 

![img](https://github.com/dinesh2043/DataAnalysis/blob/master/figure/fig25.JPG)   
Figure 49: Fixed Acidity				Figure 50: Volatile Acidity
![img](https://github.com/dinesh2043/DataAnalysis/blob/master/figure/fig26.JPG)   
Figure 51: Citric Acid				Figure 52: Residual Sugar
![img](https://github.com/dinesh2043/DataAnalysis/blob/master/figure/fig27.JPG)   
Figure 53: Chlorides					Figure 54: Free Sulphur Dioxide

![img](https://github.com/dinesh2043/DataAnalysis/blob/master/figure/fig28.JPG)   
Figure 55: Total Sulphur Dioxide			Figure 56: Density
![img](https://github.com/dinesh2043/DataAnalysis/blob/master/figure/fig29.JPG)   
Figure 57: PH Value 					Figure 58: Sulphates 
![img](https://github.com/dinesh2043/DataAnalysis/blob/master/figure/fig30.JPG)   
Figure 59: Alcohol					Figure 60: Quality

### Task 3:
### Scatter Plot:
It is a special type of representation of data visualization using two Cartesian coordinates to represent the two variables of a dataset. Each points in the scatter plot represents the relationship between the two corresponding variables in x and y axis. Normally it is used to visualize two different attributes in the dataset but by using different colour codes we can also visualize three attributes of the dataset. It is difficult to visualize the scatter plot of a multidimensional dataset in a scatter plot in 12x12 matrix. Due to that reason I have used 3x3 matrix to represent the scatter plot of three attributes. Since, the default 3x3 matrix did not have so much information in it, due to that reason I have used the two quality parameter like; quality value less than or equal to 5 (blue) and quality value greater than 5 (green) to get better sense of the scatter plot. In the upcoming section of this documents there will be the 3x3 matrix scatter plot with some explanation on the distribution of data;

![img](https://github.com/dinesh2043/DataAnalysis/blob/master/figure/fig31.JPG) 
Figure 61: Scatterplot of Fixed Acidity vs Volatile Acidity vs Citric Acid 

In the first plot we can clearly see that the lowest values of volatile acidity and fixed acidity values from 4 to 9 may results better wine quality. Also the fixed acidity value from 5 to 9 and citric acid value from 0.3 to 0.5 may result better quality. Similarly the citric acid values from 0.3 to 0.5 and lower value of volatile acidity may results better quality. 

![img](https://github.com/dinesh2043/DataAnalysis/blob/master/figure/fig32.JPG) 
Figure 62: Scatterplot of Residual Sugar vs Chlorides vs Free Sulphur Dioxide 
Similarly residual sugar values from 2 to 20 and minimal chlorides value, and minimal value of chlorides and free sulphur dioxide values from 50 to 150 may result better wine quality. 
![img](https://github.com/dinesh2043/DataAnalysis/blob/master/figure/fig33.JPG) 
Figure 63: Scatterplot of Total Sulphur Dioxide vs Density vs PH value 
Density value in the range of 0.99 and total sulphur dioxide values from 50 to 150 may produce better wine quality. But according to this plot PH value does not affect so much in the quality of wine.
![img](https://github.com/dinesh2043/DataAnalysis/blob/master/figure/fig34.JPG) 
Figure 64: Scatterplot of Sulphates vs Alcohol vs Quality 
Sulphates and alcohol values does not have so much effect on the quality of wine. 
![img](https://github.com/dinesh2043/DataAnalysis/blob/master/figure/fig35.JPG) 
Figure 65: Scatterplot of Fixed Acidity vs Residual Sugar vs Total Sulphur Dioxide 
Fixed acidity values from 4 to 9 and total sulphur dioxide from 50 to 150 may have better quality. Residual sugar from 2 to 20 and total sulphur dioxide from 50 to 150, and Residual sugar from 2 to 20 and fixed acidity from 4 to 9 result better quality.
![img](https://github.com/dinesh2043/DataAnalysis/blob/master/figure/fig36.JPG) 
Figure 66: Scatterplot of Sulphates vs Density vs Chlorides 
![img](https://github.com/dinesh2043/DataAnalysis/blob/master/figure/fig37.JPG) 
Figure 67: Scatterplot of Citric Acid vs Free Sulphur Dioxide vs PH value
Similar observations discussed previously can be seen in the above two scatter plot.
### Parallel Coordinates Plot:
It is a special technique used in data analysis to visualize each row of dataset according to their attributes. In parallel coordinate plot each line represent a row of the dataset. It is a data visualization technique used to see the similarities of multidimensional dataset. Parallel coordinate uses the normalized values of the dataset. It means that the lowest value of the attribute is set to 0% and the highest value is set to 100% along the y-axis of the plot. We can make the similar observation made in scatter plot also from parallel coordinate plot and it is easier to see all the relationship in one plot. [3]
In the following figure we can see the data with quality value greater than 5 in green line and data with the quality value less or equal to five in blue line. It is easier to visualize the data with better quality and low quality according to the density of the colour. It can be seen that the attributes like PH, sulphur and alcohol does not effects the quality so much. Similarly the attributes like fixed acidity, volatile acidity, residual sugar, chlorides and density with lower values results better quality. Also the attributes like citric acid with value 0.3 to 0.5, free sulphur dioxide with value 50 to 150 and total sulphur dioxide from 50 to 150 may result the better wine quality.       
![img](https://github.com/dinesh2043/DataAnalysis/blob/master/figure/fig38.JPG) 
Figure 68: Parallel Coordinate plot of all attributes of dataset 
### Task 4:
### Principal Component Analysis (PCA):
It is the most common statistical procedure used to convert a highly correlated dataset with many attribute into orthogonal (perpendicular) transformation of the values of linearly uncorrelated variables in two dimension. If this method is used in a raw data without normalization then it is known as principal component analysis (PCA) using covariance function. This method concentrates on those variables which has higher variances then to those that has very low variance. This process is highly dependent on the weight of the variables so that it should be used on the dataset which has the same unit of measurement. In this process first principal component (PC1) is a linear combination of variables that has maximum variance so that, it is responsible for the observation of maximum variance of data. Whereas the second principal component (PC2) is the linear combination of variables where the remaining variance is gathered as much as possible. The coefficients of the variance-covariance matrix uses eigenvalues and eigenvectors, where variance-covariance matrix can be written as the function the eigenvalues and their corresponding eigenvectors. But this approach is not that effective if we have multidimensional dataset with less variance and high numbers of outliers. An example of PC analysis of wine quality dataset without normalization will be discussed in the upcoming section of this document. [4]
To address this problems in a dataset we use data standardization technique which helps us to give equal weight to all attributes of dataset. When the data set is standardized its variance-covariance matrix is equal to the correlation matrix of unstandardized data. Due to that reason PCA using standardized data is equal to PCA using correlation matrix. First the eigenvalues of the correlation matrix are calculated with their corresponding eigenvectors. Then the estimated principal component scores are calculated. Both PC1 and PC2 are calculated according to strong correlation among the attributes of the dataset. PCA with normalization will preserve the data quality and better results can be achieved if the dataset is multidimensional with higher numbers of outliers. There will be more discussion about PCA with normalization in the following section of this document. [4]
### Z-Score Normalization:
Z-score is the signed number of standard deviations which indicates that a data is above the mean value of dataset. It is frequently used for data normalization and it can be calculated using following expression; [4]
		z = (x - μ)/s, where μ is the mean value and s is the standard deviation 
### Scree Plot:
Scree plot is an effective tool used to visualize eigenvalues with component in descending order of component. It is commonly used in PCA to choose components that explains most of the variability in the dataset. The ideal pattern of the scree plot is a steep curve followed by a bend then a flat line following it. The steep curve and bent is also known as elbow and the components in this elbow contains all the variance of dataset.
### Bi-Plot:
Bi-plot is a graph according to the number of principal component (generally 2D with 2 principal component) selected from scree plot. It is a plot which is able to visualize information on both samples and variables of a data matrix. Where samples are displayed as points and variables are displayed as vector. It is one of the most important tool used for the principal component analysis.  

### Principal Component Analysis without Normalization:
As discussed in the previous section if PCA conducted without normalization then the analysis will be sensitive to the variation of the dataset. In the following bar plot we can see that most of the variance in the dataset is capture by PC1 and almost the remaining variance can be seen in the PC2. In this case we can ignore the remaining components and that will not have any effect in our analysis.  
![img](https://github.com/dinesh2043/DataAnalysis/blob/master/figure/fig39.JPG) 
Figure 69: Bar Plot of component without normalization of dataset 
To back up the observation of box plot, we can also draw the scree plot to visualize the eigenvalues against the different component. In the following plot we can clearly see that after the second principal component (PC2) the variance value is almost zero. Due to that reason all the other principal components can be ignored.  
![img](https://github.com/dinesh2043/DataAnalysis/blob/master/figure/fig40.JPG) 
Figure 70: Scree Plot of component without normalization of dataset 
After this observations we used PC1 and PC2 to plot our bi-plot to observe the effect of principal component in our actual dataset. As in bi-plot the scores are represented as points and variables are represented as vector. It is easier to see the relationship between the variables. Since, the dataset has almost 5 thousand data and all of its score is printed so that there is a black stain in the plot indicating that there is the highest concentration of data. According to the result of bi-plot we can assume that all the other 10 attributes are highly correlated and 2 attributes free sulphur dioxide and total sulphur dioxide has higher variance in this dataset. Since the data is not normalized and there is a high density of outliers in the dataset this PCA was unable to detect the variance in those 10 attributes. This method might be effective if we are only interested in the higher variance of the data. In the following figure we can see the result of this PCA;    
![img](https://github.com/dinesh2043/DataAnalysis/blob/master/figure/fig41.JPG) 
Figure 71: Bi-Plot of component without normalization of dataset
 
### Principal Component Analysis with Normalization:
The provided wine dataset is a multidimensional dataset with different weight values and high number of outliers in its attributes. PCA cannot be conducted without data normalization to have a better result of the analysis. Since, z-score normalization is not sensitive to the outliers due to that reason z-score was used in this analysis. After data normalization the principal components were calculated and the result was displayed in the bar plot. Using normalization the result was totally different and even the fourth component had the variance value above 1. But it was the introductory exercise of the course and even after choosing first two components also we will be able to have a good understanding of the data because those two contains higher correlation above 50%. Due to that reason the analysis was conducted using PC1 and PC2. In the following figure we can see the bar plot with correlation in different principal components;   
![img](https://github.com/dinesh2043/DataAnalysis/blob/master/figure/fig42.JPG) 
Figure 72: Bar Plot of component with normalization of dataset 
Similarly, if we draw a scree plot with eigenvalues against component we can see the similar result where the variance in different component will be well indicated by the line. As we can see in the plot that most of the correlation are present in first and second component and even though there are other two component with variance value greater than or equal to 1 we are going to exclude them from this analysis. The following figure shows the scree plot of the normalized dataset;
![img](https://github.com/dinesh2043/DataAnalysis/blob/master/figure/fig43.JPG) 
Figure 73: Scare Plot of component with normalization of dataset 
As, we proceed to the principal component analysis of normalized data it has complete different result then the PCA without normalization. If we check the bi-plot obtained after normalization we see that only three attributes quality, PH and alcohol content has higher correlation and all the other 9 attributes have less correlation resulting the higher variance in the data. But the PCA without normalization was unable to preserve these properties of the dataset. It is important to understand the dataset and goal of the analysis before starting the principal component analysis of a dataset. Bi-plot are considered to be an effective tool to understand the relationship between the variables. As we look at the relation between alcohol and quality attributes they form smaller angle then alcohol and PH which means that alcohol and quality are much more correlated then alcohol and PH. Similarly the variances of the attributes on the other half of the PC1 can be explained according to the angle between the attributes. The visual representation of the attributes can be seen in the following bi-plot; 
![img](https://github.com/dinesh2043/DataAnalysis/blob/master/figure/fig44.JPG) 
Figure 74: Bi-Plot of component with normalization of dataset 

### Task 5: 
### Multidimensional Scaling (MDS):
MDS is used for the visual representation of dataset to show the pattern of similarity or distances among the set of objects. In this algorithm all the attributes (let number of attribute be p) of the dataset are assigned with arbitrary coordinates in p-dimensional space. Then the Euclidean distance between the points are calculated to form the Dhat matrix. After that the Dhat matrix is compared with input matrix by evaluating the stress function. According to the evaluation if the distance value is small then there will be greater similarity between them. All the coordinates of each points are adjusted in the direction with maximum stress. All the process is repeated until the stress value becomes the lowest possible value. By comparing the distance between these new points in p-dimensional space we can determine the similarity between two points. Points with the smaller distance between them are more similar then the points with bigger distance. By looking at the point representation of the data in the following figure we can see that attributes are highly similar;      
![img](https://github.com/dinesh2043/DataAnalysis/blob/master/figure/fig45.JPG) 
Figure 75: 2D dataset representation of first 100 rows 
To make the 2D MDS plot more sensible in the following plot I have also printed the name of the attributes with different colour. In this 2D MDS representation I have used first 100 rows of data to have the better understanding of the data in the representation. In the following figure we can see 2D MDS representation with the name of the attributes;
 
![img](https://github.com/dinesh2043/DataAnalysis/blob/master/figure/fig46.JPG) 
Figure 75: 2D dataset representation of first 100 rows with attribute names
As we can see that almost all the attributes has some similarity at least one attribute of the dataset. If we compare this result with the bi-plot of PCA we can see that the attributes which has higher correlation has greater similarity and the attributes which has higher variations also has the greater similarity.  
### Task 6:
### Pearson’s Correlation:  
Pearson’s correlation coefficient is used in statistics to measure the linear dependencies between two variables X and Y. Pearson’s correlation values ranges from +1 to -1 where +1 is total positive linear correlation, 0 is no linear correlation and -1 is total negative correlation. It is calculated using the following formula; [8]
![img](https://github.com/dinesh2043/DataAnalysis/blob/master/figure/fig47.JPG)		 
(Formula is copied from Wikipedia)
In the following figure we can see the person’s correlation table of the dataset;
![img](https://github.com/dinesh2043/DataAnalysis/blob/master/figure/fig48.JPG) 
Figure 76: Person’s Correlation Table 
### Spearman’s Rho Correlation:
Spearman’s Rho Correlation is used to measure the statistical dependencies between the rankings of the two variables. It determines how well the relationship between two variables can be explained using monotonic function. A monotonic relation is a relationship where one value of variable increases then the value of other variable also increases or when the value of one variable increases the value of other variable decreases. Where Spearman’s correlation measures the strength and direction of the monotonic association between the variables. Spearman’s Rho correlation is calculated using the following formula; [6]
![img](https://github.com/dinesh2043/DataAnalysis/blob/master/figure/fig49.JPG) 
(Formula is copied from Wikipedia)
 In the following figure we can see the Spearman’s Rho correlation table of the dataset;
![img](https://github.com/dinesh2043/DataAnalysis/blob/master/figure/fig50.JPG) 
Figure 77: Spearman’s Rho Correlation Table 
### Kendall’s Tau Correlation:
Kendall’s Tau correlation also ranks correlation coefficient by assessing the association based on the ranks of the data. It is used to measure the ordinal association between two measured quantities. Kendall’s correlation between two variables will be high value with the observations having similar rank between them and low value with the observations have dissimilar rank between them. It can be calculated by using the following expression; [7]

![img](https://github.com/dinesh2043/DataAnalysis/blob/master/figure/fig51.JPG) 
(Formula is copied from Wikipedia)
In the following figure we can see Kendall’s Tau correlation table of the dataset;
![img](https://github.com/dinesh2043/DataAnalysis/blob/master/figure/fig52.JPG)
Figure 78: Kendall’s Tau Correlation Table
















References
[1] Histograms. (n.d.). Retrieved December 01, 2016, from https://statistics.laerd.com/statistical-guides/understanding-histograms.php
[2] What is box plot? - Definition from WhatIs.com. (n.d.). Retrieved December 02, 2016, from http://whatis.techtarget.com/definition/box-plot 
[3] "What is a parallel coordinate plot?,". [Online]. Available: https://docs.tibco.com/pub/sfire-analyst/7.5.0/doc/html/WebHelp/para/para_what_is_a_parallel_coordinate_plot.htm. Accessed: Dec. 2, 2016.
[4] T. P. State, "11.1 - principal component analysis (PCA) procedure," 2016. [Online]. Available: https://onlinecourses.science.psu.edu/stat505/node/51. Accessed: Dec. 4, 2016.
[5] "Multidimensional scaling,". [Online]. Available: http://www.analytictech.com/networks/mds.htm. Accessed: Dec. 4, 2016.
[6] L. R. Ltd, "Spearman’s rank-order correlation," 2013. [Online]. Available: https://statistics.laerd.com/statistical-guides/spearmans-rank-order-correlation-statistical-guide.php. Accessed: Dec. 4, 2016.
[7] S. S. 2016, "Kendall’s Tau and Spearman’s rank correlation coefficient," Statistics Solutions, 2016. [Online]. Available: http://www.statisticssolutions.com/kendalls-tau-and-spearmans-rank-correlation-coefficient/. Accessed: Dec. 4, 2016.
[8] Andale, "Pearson correlation: Definition and easy steps for use," Statistics How To, 2013. [Online]. Available: http://www.statisticshowto.com/what-is-the-pearson-correlation-coefficient/. Accessed: Dec. 4, 2016.


