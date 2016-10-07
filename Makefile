Advertising.csv: 
	curl -o Advertising.csv "http://www-bcf.usc.edu/~gareth/ISL/Advertising.csv"
	mv /Users/atullanka/Documents/stat159-fall2016-hw02/Advertising.csv /Users/atullanka/Documents/stat159-fall2016-hw02/data 
.PHONY: all clean

all: report.pdf eda-output.txt regression.RData

report.pdf: 

eda-output.txt: eda-script.R
	cd code; Rscript eda-script.R
	cd code; mv /Users/atullanka/Documents/stat159-fall2016-hw02/code/eda-output.txt /Users/atullanka/Documents/stat159-fall2016-hw02/data/eda-output.txt
regression.RData: regression-script.R
	cd code; Rscript regression-script.R
	cd code; mv /Users/atullanka/Documents/stat159-fall2016-hw02/code/regresssion.RData /Users/atullanka/Documents/stat159-fall2016-hw02/data/regresssion.RData
clean: 	
	cd report; rm -f report.pdf
