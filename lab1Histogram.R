

#to set color of boarder and bar
hist(volatile.acidity,main="Histogram of Volitile Acidity",
     xlab="Volitile Acidity", border = "blue", col = "green", las=1)

#to set bin as sturges
nclass.Sturges(volatile.acidity)
hist(volatile.acidity, breaks = nclass.Sturges(volatile.acidity), main="Histogram of Volitile Acidity(Sturges)",
     xlab="Volitile Acidity", border = "blue", col = "green", las=1)

#to set bin as scott
nclass.scott(volatile.acidity)
#nclass.FD(fixed.acidity)
hist(volatile.acidity, breaks = nclass.scott(volatile.acidity), main="Histogram of Volitile Acidity(scott)",
     xlab="Volitile Acidity", border = "blue", col = "green", las=1)

#to set bin as Freedman-Diaconics (FD)
nclass.FD(volatile.acidity)
hist(volatile.acidity, breaks = nclass.FD(volatile.acidity), main="Histogram of Volitile Acidity(FD)",
     xlab="Volitile Acidity", border = "blue", col = "green", las=1)

#to set number of bins to square root
#summary(fixed.acidity)
#to get total number of rows
n = nrow(WineQualityWhite)
b = as.integer(sqrt(n))

hist(volatile.acidity, breaks = b, main="Histogram of Volitile Acidity(Squar Root)",
     xlab="Volitile Acidity", border = "blue", col = "green", las=1)
#
#
#Citric Acid
hist(citric.acid,main="Histogram of Citric Acid",
     xlab="Citric Acid", border = "blue", col = "green", las=1)

#to set bin as sturges
nclass.Sturges(citric.acid)
hist(citric.acid, breaks = nclass.Sturges(citric.acid), main="Histogram of Citric Acid(Sturges)",
     xlab="Citric Acid", border = "blue", col = "green", las=1)

#to set bin as scott
nclass.scott(citric.acid)
#nclass.FD(fixed.acidity)
hist(citric.acid, breaks = nclass.scott(citric.acid), main="Histogram of Citric Acid(scott)",
     xlab="Citric Acid", border = "blue", col = "green", las=1)

#to set bin as Freedman-Diaconics (FD)
nclass.FD(citric.acid)
hist(citric.acid, breaks = nclass.FD(citric.acid), main="Histogram of Citric Acid(FD)",
     xlab="Citric Acid", border = "blue", col = "green", las=1)

#to set number of bins to square root
#summary(fixed.acidity)
#to get total number of rows
n = nrow(WineQualityWhite)
b = as.integer(sqrt(n))

hist(citric.acid, breaks = b, main="Histogram of Citric Acid(Squar Root)",
     xlab="Citric Acid", border = "blue", col = "green", las=1)

#
#
#Residual Sugar
hist(residual.sugar,main="Histogram of Residual Sugar",
     xlab="Residual Sugar", border = "blue", col = "green", las=1)

#to set bin as sturges
nclass.Sturges(residual.sugar)
hist(residual.sugar, breaks = nclass.Sturges(residual.sugar), main="Histogram of Residual Sugar(Sturges)",
     xlab="Residual Sugar", border = "blue", col = "green", las=1)

#to set bin as scott
nclass.scott(residual.sugar)
hist(residual.sugar, breaks = nclass.scott(residual.sugar), main="Histogram of Residual Sugar(Scott)",
     xlab="Residual Sugar", border = "blue", col = "green", las=1)

#to set bin as Freedman-Diaconics (FD)
nclass.FD(residual.sugar)
hist(residual.sugar, breaks = nclass.FD(residual.sugar), main="Histogram of Residual Sugar(FD)",
     xlab="Residual Sugar", border = "blue", col = "green", las=1)

#to set number of bins to square root
#summary(fixed.acidity)
#to get total number of rows
n = nrow(WineQualityWhite)
b = as.integer(sqrt(n))

hist(residual.sugar, breaks = b, main="Histogram of Residual Sugar(Squar Root)",
     xlab="Residual Sugar", border = "blue", col = "green", las=1)
#
#
#Chlorides
hist(chlorides,main="Histogram of Chlorides",
     xlab="Chlorides", border = "blue", col = "green", las=1)

#to set bin as sturges
nclass.Sturges(chlorides)
hist(chlorides, breaks = nclass.Sturges(chlorides), main="Histogram of Chlorides(Sturges)",
     xlab="Chlorides", border = "blue", col = "green", las=1)

#to set bin as scott
nclass.scott(chlorides)
hist(chlorides, breaks = nclass.scott(chlorides), main="Histogram of Chlorides(Scott)",
     xlab="Chlorides", border = "blue", col = "green", las=1)

#to set bin as Freedman-Diaconics (FD)
nclass.FD(chlorides)
hist(chlorides, breaks = nclass.FD(chlorides), main="Histogram of Chlorides(FD)",
     xlab="Chlorides", border = "blue", col = "green", las=1)

#to set number of bins to square root
#summary(fixed.acidity)
#to get total number of rows
n = nrow(WineQualityWhite)
b = as.integer(sqrt(n))

hist(chlorides, breaks = b, main="Histogram of Chlorides(Squar Root)",
     xlab="Chlorides", border = "blue", col = "green", las=1)
#
#
#Free Sulphur Dioxide
hist(free.sulfur.dioxide,main="Histogram of Free Sulphur Dioxide",
     xlab="Free Sulphur Dioxide", border = "blue", col = "green", las=1)

#to set bin as sturges
nclass.Sturges(free.sulfur.dioxide)
hist(free.sulfur.dioxide, breaks = nclass.Sturges(free.sulfur.dioxide), main="Histogram of Free Sulphur Dioxide(Sturges)",
     xlab="Free Sulphur Dioxide", border = "blue", col = "green", las=1)

#to set bin as scott
nclass.scott(free.sulfur.dioxide)
hist(free.sulfur.dioxide, breaks = nclass.scott(free.sulfur.dioxide), main="Histogram of Free Sulphur Dioxide(Scott)",
     xlab="Free Sulphur Dioxide", border = "blue", col = "green", las=1)

#to set bin as Freedman-Diaconics (FD)
nclass.FD(free.sulfur.dioxide)
hist(free.sulfur.dioxide, breaks = nclass.FD(free.sulfur.dioxide), main="Histogram of Free Sulphur Dioxide(FD)",
     xlab="Free Sulphur Dioxide", border = "blue", col = "green", las=1)

#to set number of bins to square root
#summary(fixed.acidity)
#to get total number of rows
n = nrow(WineQualityWhite)
b = as.integer(sqrt(n))

hist(free.sulfur.dioxide, breaks = b, main="Histogram of Free Sulphur Dioxide(Square Root)",
     xlab="Free Sulphur Dioxide", border = "blue", col = "green", las=1)
#
#
#Total Sulphur Dioxide
hist(total.sulfur.dioxide,main="Histogram of Total Sulphur Dioxide",
     xlab="Total Sulphur Dioxide", border = "blue", col = "green", las=1)

#to set bin as sturges
nclass.Sturges(total.sulfur.dioxide)
hist(total.sulfur.dioxide, breaks = nclass.Sturges(total.sulfur.dioxide), main="Histogram of Total Sulphur Dioxide(Sturges)",
     xlab="Total Sulphur Dioxide", border = "blue", col = "green", las=1)

#to set bin as scott
nclass.scott(total.sulfur.dioxide)
hist(total.sulfur.dioxide, breaks = nclass.scott(total.sulfur.dioxide), main="Histogram of Total Sulphur Dioxide(Scott)",
     xlab="Total Sulphur Dioxide", border = "blue", col = "green", las=1)

#to set bin as Freedman-Diaconics (FD)
nclass.FD(total.sulfur.dioxide)
hist(total.sulfur.dioxide, breaks = nclass.FD(total.sulfur.dioxide), main="Histogram of Total Sulphur Dioxide(FD)",
     xlab="Total Sulphur Dioxide", border = "blue", col = "green", las=1)

#to set number of bins to square root
#summary(fixed.acidity)
#to get total number of rows
n = nrow(WineQualityWhite)
b = as.integer(sqrt(n))

hist(total.sulfur.dioxide, breaks = b, main="Histogram of Total Sulphur Dioxide(Square Root)",
     xlab="Total Sulphur Dioxide", border = "blue", col = "green", las=1)
#
#
#Density
hist(density,main="Histogram of Density",
     xlab="Density", border = "blue", col = "green", las=1)

#to set bin as sturges
nclass.Sturges(density)
hist(density, breaks = nclass.Sturges(density), main="Histogram of Density(Sturges)",
     xlab="Density", border = "blue", col = "green", las=1)

#to set bin as scott
nclass.scott(density)
hist(density, breaks = nclass.scott(density), main="Histogram of Density(Scott)",
     xlab="Density", border = "blue", col = "green", las=1)

#to set bin as Freedman-Diaconics (FD)
nclass.FD(density)
hist(density, breaks = nclass.FD(density), main="Histogram of Density(FD)",
     xlab="Density", border = "blue", col = "green", las=1)

#to set number of bins to square root
#summary(fixed.acidity)
#to get total number of rows
n = nrow(WineQualityWhite)
b = as.integer(sqrt(n))

hist(density, breaks = b, main="Histogram of Density(Square Root)",
     xlab="Density", border = "blue", col = "green", las=1)

#
#
#PH value
hist(pH,main="Histogram of PH value",
     xlab="PH value", border = "blue", col = "green", las=1)

#to set bin as sturges
nclass.Sturges(pH)
hist(pH, breaks = nclass.Sturges(pH), main="Histogram of PH value(Sturges)",
     xlab="PH value", border = "blue", col = "green", las=1)

#to set bin as scott
nclass.scott(pH)
hist(pH, breaks = nclass.scott(pH), main="Histogram of PH value(Scott)",
     xlab="PH value", border = "blue", col = "green", las=1)

#to set bin as Freedman-Diaconics (FD)
nclass.FD(pH)
hist(pH, breaks = nclass.FD(pH), main="Histogram of PH value(FD)",
     xlab="PH value", border = "blue", col = "green", las=1)

#to set number of bins to square root
#summary(fixed.acidity)
#to get total number of rows
n = nrow(WineQualityWhite)
b = as.integer(sqrt(n))

hist(pH, breaks = b, main="Histogram of PH value(Square Root)",
     xlab="PH value", border = "blue", col = "green", las=1)

#
#
#Sulphates
hist(sulphates,main="Histogram of Sulphates",
     xlab="Sulphates", border = "blue", col = "green", las=1)

#to set bin as sturges
nclass.Sturges(sulphates)
hist(sulphates, breaks = nclass.Sturges(sulphates), main="Histogram of Sulphates(Sturges)",
     xlab="Sulphates", border = "blue", col = "green", las=1)

#to set bin as scott
nclass.scott(sulphates)
hist(sulphates, breaks = nclass.scott(sulphates), main="Histogram of Sulphates(Scott)",
     xlab="Sulphates", border = "blue", col = "green", las=1)

#to set bin as Freedman-Diaconics (FD)
nclass.FD(sulphates)
hist(sulphates, breaks = nclass.FD(sulphates), main="Histogram of Sulphates(FD)",
     xlab="Sulphates", border = "blue", col = "green", las=1)

#to set number of bins to square root
#summary(fixed.acidity)
#to get total number of rows
n = nrow(WineQualityWhite)
b = as.integer(sqrt(n))

hist(sulphates, breaks = b, main="Histogram of Sulphates(Square Root)",
     xlab="Sulphates", border = "blue", col = "green", las=1)

#
#
#Alcohol
hist(alcohol,main="Histogram of Alcohol",
     xlab="Alcohol", border = "blue", col = "green", las=1)

#to set bin as sturges
nclass.Sturges(alcohol)
hist(alcohol, breaks = nclass.Sturges(alcohol), main="Histogram of Alcohol(Sturges)",
     xlab="Alcohol", border = "blue", col = "green", las=1)

#to set bin as scott
nclass.scott(alcohol)
hist(alcohol, breaks = nclass.scott(alcohol), main="Histogram of Alcohol(Scott)",
     xlab="Alcohol", border = "blue", col = "green", las=1)

#to set bin as Freedman-Diaconics (FD)
nclass.FD(alcohol)
hist(alcohol, breaks = nclass.FD(alcohol), main="Histogram of Alcohol(FD)",
     xlab="Alcohol", border = "blue", col = "green", las=1)

#to set number of bins to square root
#summary(fixed.acidity)
#to get total number of rows
n = nrow(WineQualityWhite)
b = as.integer(sqrt(n))

hist(alcohol, breaks = b, main="Histogram of Alcohol(Square Root)",
     xlab="Alcohol", border = "blue", col = "green", las=1)

#
#
#Quality
hist(quality,main="Histogram of Quality",
     xlab="Quality", border = "blue", col = "green", las=1)

#to set bin as sturges
nclass.Sturges(quality)
hist(quality, breaks = nclass.Sturges(quality), main="Histogram of Quality(Sturges)",
     xlab="Quality", border = "blue", col = "green", las=1)

#to set bin as scott
nclass.scott(quality)
hist(quality, breaks = nclass.scott(quality), main="Histogram of Quality(Scott)",
     xlab="Quality", border = "blue", col = "green", las=1)

#to set bin as Freedman-Diaconics (FD)
nclass.FD(quality)
hist(quality, breaks = nclass.FD(quality), main="Histogram of Quality(FD)",
     xlab="Quality", border = "blue", col = "green", las=1)

#to set number of bins to square root
#summary(fixed.acidity)
#to get total number of rows
n = nrow(WineQualityWhite)
b = as.integer(sqrt(n))

hist(quality, breaks = b, main="Histogram of Quality(Square Root)",
     xlab="Quality", border = "blue", col = "green", las=1)
