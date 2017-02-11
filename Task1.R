#to list all the dataset and variables of the project
ls()

#this is done to set the working directory
#first the directory is saved in projectWD object
projectWD = "D:/DocumentsUTU/DataAnalysisAndKnowledgeDiscovery/exercise1"

#Then set the WD using this object
setwd(projectWD)

# #to set the working directory of the project
# setwd("D:/DocumentsUTU/DataAnalysisAndKnowledgeDiscovery/exercise1")

#to get the workind directory (WD)
getwd()

#to import the data into R with header and seprator by choosing the file
WineQualityWhite = read.csv(file.choose(), header=T, sep = ";")

#to store the variables in R's memory
attach(WineQualityWhite)

#to detach the varaibles from memory
#detach(WineQualityWhite)

#getting the types of variable 
class(WineQualityWhite)
class(fixed.acidity)
class(volatile.acidity)

#to get the general summary of data
summary(WineQualityWhite)

#to get the help to install the packages
help("install.packages")

#install a specific package
install.packages("epiR")

install.packages("")

#to load the package library into R
#then only we can use the library function
library(epiR)


#to get the help information of specific package
help(package = "epiR")

#to get help for barplots
?barplot

#to create a bar plot with title; X axis and Y axis
barplot(fixed.acidity, main = "Fixed Acidity", xlab = "Acidity Values", ylab = "Frequency", las=1)

#create Histogram
hist(fixed.acidity)

#in histogram frequency attribute is set to true by default
hist(fixed.acidity, freq=FALSE)
hist(fixed.acidity, prob = T)

#to limit the y-axis
hist(fixed.acidity, prob = T, ylim = c(0,0.5))

#to change the bin width
hist(fixed.acidity, prob = T, ylim = c(0,0.5), breaks = 7)
hist(fixed.acidity, prob = T, ylim = c(0,0.6), breaks = 20)
hist(fixed.acidity, prob = T, ylim = c(0,0.6), breaks = c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15))
hist(fixed.acidity, prob = T, ylim = c(0,0.6), breaks = seq(from=0, to=16, by=0.5))

#to define the title and axis values
hist(fixed.acidity, prob = T, ylim = c(0,0.6), breaks = seq(from=0, to=16, by=0.5), main="Histogram of Fixed Acidity",
                                                            xlab="Fixed Acidity", las=1)

#to set color of boarder and bar
hist(fixed.acidity, prob = T, ylim = c(0,0.6), xlim = c(4,12), breaks = seq(from=0, to=16, by=0.5), main="Histogram of Fixed Acidity",
     xlab="Fixed Acidity", border = "blue", col = "green", las=1)

#to set bin as sturges
nclass.Sturges(fixed.acidity)
hist(fixed.acidity, prob = T, ylim = c(0,0.6), xlim = c(2,14), breaks = nclass.Sturges(fixed.acidity), main="Histogram of Fixed Acidity(Sturges)",
     xlab="Fixed Acidity", border = "blue", col = "green", las=1)

#to set bin as scott
nclass.scott(fixed.acidity)
#nclass.FD(fixed.acidity)
hist(fixed.acidity, prob = T, ylim = c(0,0.6), xlim = c(2,14), breaks = nclass.scott(fixed.acidity), main="Histogram of Fixed Acidity(scott)",
     xlab="Fixed Acidity", border = "blue", col = "green", las=1)

#to set bin as Freedman-Diaconics (FD)
nclass.FD(fixed.acidity)
hist(fixed.acidity, prob = T, ylim = c(0,0.6), xlim = c(2,14), breaks = nclass.FD(fixed.acidity), main="Histogram of Fixed Acidity(FD)",
     xlab="Fixed Acidity", border = "blue", col = "green", las=1)

#to set number of bins to square root
#summary(fixed.acidity)
#to get total number of rows
n = nrow(WineQualityWhite)
b = as.integer(sqrt(n))

hist(fixed.acidity, prob = T, ylim = c(0,0.6), xlim = c(2,12), breaks = b, main="Histogram of Fixed Acidity(Squar Root)",
     xlab="Fixed Acidity", border = "blue", col = "green", las=1)

#to draw a density line in histogram
lines(density(fixed.acidity))

#set the color of this argument
lines(density(fixed.acidity), col=2, lwd=3)

#to add the title and label x-axis and y-axis
boxplot(fixed.acidity, main="BOXPLOT", ylab="Fixed Acidity")

#to change the limit of y-axis
boxplot(fixed.acidity, main="BOXPLOT", ylab="Fixed Acidity", ylim=c(4,12))

#to rotate the y-axis
boxplot(fixed.acidity, main="BOXPLOT", ylab="Fixed Acidity", ylim=c(4,12), las=1)

#Descriptive statstics
summary(WineQualityWhite)

##Trying to summerize these data using fewer principal components 

#checking corelation for data set
cor(WineQualityWhite)

#plot the pairwise scatterplots
#pairs(WineQualityWhite)

#to draw the scatter plot
plot(free.sulfur.dioxide, total.sulfur.dioxide)
plot(free.sulfur.dioxide, total.sulfur.dioxide, main = "Scatterplot", xlab = "Free Sulfur Dioxide",
     ylab = "Total Sulfur Dioxide",col=c("red","blue"), las=1)

#to draw the plot for free sulpher dioxide
SPFSDO = WineQualityWhite
raw$free.sulfur.dioxide = NULL

attributes = names(WineQualityWhite)

#to define a factor variable
temp = quality>5
levels(temp)[TRUE] = "Quality>5"
levels(temp)[FALSE] = "Quality<5"
#To bind the data with additional parameter
MoreDataQualityOver5 = cbind(WineQualityWhite, temp)


# Basic Scatterplot Matrix
pairs(~fixed.acidity+volatile.acidity+citric.acid, MoreDataQualityOver5, col = ifelse (temp == TRUE,"green","blue"), 
      main="3 * 3 Scatterplot Matrix", pch=19)
#to add the legends with quality above 5 and below 5
legend(x="topleft", legend = c("Quality > 5","Quality =< 5"), col = c("green","blue"), pch = 8, cex=0.6, ncol = 2, xpd=TRUE )

pairs(~residual.sugar+chlorides+free.sulfur.dioxide, WineQualityWhite, col = ifelse (temp == TRUE,"green","blue"), 
      main="3 * 3 Scatterplot Matrix", pch = 19)
#to add the legends with quality above 5 and below 5
legend(x="topleft", legend = c("Quality > 5","Quality =< 5"), col = c("green","blue"), pch = 8, cex=0.6, ncol = 2, xpd=TRUE )

pairs(~total.sulfur.dioxide+density+pH, WineQualityWhite, col = ifelse (temp == TRUE,"green","blue"), 
      main="3 * 3 Scatterplot Matrix", pch = 19)
#to add the legends with quality above 5 and below 5
legend(x="topleft", legend = c("Quality > 5","Quality =< 5"), col = c("green","blue"), pch = 8, cex=0.6, ncol = 2, xpd=TRUE )

pairs(~sulphates+alcohol+quality, WineQualityWhite, col = ifelse (temp == TRUE,"green","blue"), 
      main="3 * 3 Scatterplot Matrix", pch = 19)
#to add the legends with quality above 5 and below 5
legend(x="topleft", legend = c("Quality > 5","Quality =< 5"), col = c("green","blue"), pch = 8, cex=0.6, ncol = 2, xpd=TRUE )

pairs(~fixed.acidity+residual.sugar+total.sulfur.dioxide, MoreDataQualityOver5, col = ifelse (temp == TRUE,"green","blue"), 
      main="3 * 3 Scatterplot Matrix", pch=19)
#to add the legends with quality above 5 and below 5
legend(x="topleft", legend = c("Quality > 5","Quality =< 5"), col = c("green","blue"), pch = 8, cex=0.6, ncol = 2, xpd=TRUE )

pairs(~sulphates+density+chlorides, MoreDataQualityOver5, col = ifelse (temp == TRUE,"green","blue"), 
      main="3 * 3 Scatterplot Matrix", pch=19)
#to add the legends with quality above 5 and below 5
legend(x="topleft", legend = c("Quality > 5","Quality =< 5"), col = c("green","blue"), pch = 8, cex=0.6, ncol = 2, xpd=TRUE )

pairs(~citric.acid+free.sulfur.dioxide+pH, MoreDataQualityOver5, col = ifelse (temp == TRUE,"green","blue"), 
      main="3 * 3 Scatterplot Matrix", pch=19)
#to add the legends with quality above 5 and below 5
legend(x="topleft", legend = c("Quality > 5","Quality =< 5"), col = c("green","blue"), pch = 8, cex=0.6, ncol = 2, xpd=TRUE )

#For parallel cocrdinate plot
install.packages("MASS")
library(MASS)

colnames(WineQualityWhite) = c("Fx.Acd.", "Vol.Acd", "Cit.Acd","Res.Sug", "Chl.", "Fr.S.D.O","Ttl.S.D.O","Den.", "PH","Sul","Alc.","Qty.")
#parcoord(WineQualityWhite, col=rainbow(length(quality[1:10])), var.label=TRUE)
parcoord(WineQualityWhite, col = ifelse (temp == TRUE,"green","blue"), var.label=TRUE, main="Parallel Coordinates Plot")

# Classical MDS
# N rows (objects) x p columns (variables)
# each row identified by a unique row name
data = as.matrix(WineQualityWhite)[1:100,1:12]
d = dist(data) # euclidean distances between the rows

fit <- cmdscale(d,eig=TRUE, k=2) # k is the number of dim
x <- fit$points[, 1]
y <- fit$points[, 2]
plot(x,y, main = "2D MDS Representation", xlab = "MDS[1]", ylab = "MDS[2]",col = c(1:12))
text(x, y, labels = colnames(WineQualityWhite), col = c(1:12), cex=.7)

# Correlations/covariances among numeric variables in 
# data frame mtcars. Use listwise deletion of missing data. 
cor(WineQualityWhite, use="complete.obs", method="pearson")
cor(WineQualityWhite, use="complete.obs", method="spearman")
cor(WineQualityWhite, use="complete.obs", method="kendall")
cov(mtcars, use="complete.obs")

#to remove everything from R work space and memory
#rm(list = ls())



