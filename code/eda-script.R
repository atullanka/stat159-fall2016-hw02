advert <- read.csv('http://www-bcf.usc.edu/~gareth/ISL/Advertising.csv')
#Statistical summary of TV Advertising and Sales
summary.TVSales <- summary(advert[c(2,5)])
#TV and Sales Histogram
hist(advert$TV, main = "TV Advertisement Budget (in thousands of dollars)", xlab = "Budget", col = "green")
hist(advert$Sales, main = "Sales (in thousands of units)", xlab = "Number of Sales", col = "red")
#Saving the Summary output to a .txt file
sink("eda-output.txt")
summary(advert[c(2,5)])
sink()