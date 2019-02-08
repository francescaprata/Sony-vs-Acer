##Project: Acer vs Sony Brand Preference
##Name: Francesca Prata
##Data Importing training data 
##Version: 1

## Importing training data and pre-processing 
library(readr)
library(ggplot2)
library(caret)
library(randomForest)

##Import dataset
CompleteResponses <- read.csv("Data/CompleteResponses.csv")

##Preprocess brand, car and zipcode into factor
CompleteResponses$brand <- as.factor(CompleteResponses$brand)
CompleteResponses$car <- as.factor(CompleteResponses$car)
CompleteResponses$zipcode <- as.factor(CompleteResponses$zipcode)

##Preprocess elevel as ordered 
CompleteResponses$elevel <- as.ordered(CompleteResponses$elevel)

##Create histograms
hist(CompleteResponses$salary, main = "Histogram of Salary", xlab = "Salary (in $)")
hist(CompleteResponses$age, main = "Histogram of Age", xlab = "Age")
hist(CompleteResponses$elevel, main = "Histogram of Level of Education", xlab = "Education level")
hist(CompleteResponses$car, main = "Histogram of Car Brand", xlab = "Car brand")
hist(CompleteResponses$credit, main = "Histogram of Credit", xlab = "Credit (in $)")
hist(CompleteResponses$zipcode, main = "Histogram of Zipcode", xlab = "Zipcode")
hist(CompleteResponses$brand, main = "Histogram of PC Brand", xlab = "Brand")

## Create scatter plots
plot(CompleteResponses$age,CompleteResponses$salary, main = "Regression Age on Salary", 
     xlab = "Age", ylab = "Salary (in $)")
plot(CompleteResponses$age,CompleteResponses$brand, main = "Regression Age on Brand", 
     xlab = "Age", ylab = "Brand")
plot(CompleteResponses$brand,CompleteResponses$age, main = "Regression Age on Brand", 
     xlab = "Brand", ylab = "Age")

##Creating scatters with multiple layers 
ggplot(data=CompleteResponses) +
  geom_point(aes(x=age, y=salary, color=brand))
ggplot(data=CompleteResponses) +
  geom_point(aes(x=age, y=elevel, color=brand))
ggplot(data=CompleteResponses) +
  geom_point(aes(x=salary, y=credit, color=brand))
