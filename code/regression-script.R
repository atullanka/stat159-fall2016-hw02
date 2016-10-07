advert <- read.csv('http://www-bcf.usc.edu/~gareth/ISL/Advertising.csv')
#Regression Object
lm.TV <- lm(advert$Sales ~ advert$TV)
#Summary of regression object
summary.lm <- summary(lm.TV)
#Scatter plot
plot(advert$TV, advert$Sales, main = "Scatter plot with Regression line",
     xlab = 'TV advertising (in thousnds of dollars)',
     ylab = 'Sales (in thousands of units)', pch = 20)
#Adding the regression line
abline(lm.TV[[1]][[1]], lm.TV[[1]][[2]], col = 'blue', lwd = 1.5)
#Adding the vertical lines between the points and the regression line to depict accuracy
apply(cbind(advert$TV,advert$Sales,predict(lm.TV)),1,
      function(diff){lines(diff[c(1,1)],diff[2:3], col = 'red', lty = 2)})