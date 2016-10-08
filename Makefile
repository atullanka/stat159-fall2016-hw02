.PHONY: all data clean

all: report.pdf eda-output.txt regression.RData

report.pdf: report/report.Rmd
	pandoc report/report.Rmd -s -o report/report.pdf 

eda-output.txt: code/eda-script.R
	cd code; Rscript eda-script.R
	cd code; mv /Users/atullanka/Documents/stat159-fall2016-hw02/code/eda-output.txt /Users/atullanka/Documents/stat159-fall2016-hw02/data/eda-output.txt
regression.RData: code/regression-script.R
	cd code; Rscript regression-script.R
	cd code; mv /Users/atullanka/Documents/stat159-fall2016-hw02/code/regresssion.RData /Users/atullanka/Documents/stat159-fall2016-hw02/data/regresssion.RData
data:
	curl -o data/Advertising.csv "http://www-bcf.usc.edu/~gareth/ISL/Advertising.csv"
clean: 	
	cd report; rm -f report.pdf
