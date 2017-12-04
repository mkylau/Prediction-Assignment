######################################################
# Coursera: Data Science - Practical Machine Learning
# Course Project
# By: Matthew Lau
# December 3, 2017
######################################################

library(caret)
library(dplyr)


set.seed(12345)

#data obtained from the HAR project. Citation:
# Velloso, E.; Bulling, A.; Gellersen, H.; Ugulino, W.; Fuks, H. Qualitative Activity Recognition of Weight Lifting Exercises. 
# Proceedings of 4th International Conference in Cooperation with SIGCHI (Augmented Human '13) . Stuttgart, Germany: ACM 
# SIGCHI, 2013.

Read more: http://groupware.les.inf.puc-rio.br/har#wle_paper_section#ixzz50GLvB7QF
trainUrl <- "http://d396qusza40orc.cloudfront.net/predmachlearn/pml-training.csv"
testUrl <- "http://d396qusza40orc.cloudfront.net/predmachlearn/pml-testing.csv"


download.file(trainUrl, destfile="pml-training.csv")
download.file(testUrl, destfile="pml-testing.csv")

#load data and clean data, set all NA, #DIV/0 and "" as NA
training <- read.csv("pml-training.csv", na.strings=c("NA","#DIV/0!",""))
testing <- read.csv("pml-testing.csv", na.strings=c("NA","#DIV/0!",""))