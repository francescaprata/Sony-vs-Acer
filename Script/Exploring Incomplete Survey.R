##Project: Acer vs Sony Brand Preference 
##Name: Francesca Prata
##Data Exploring incomplete survey 
##Version: 1

##Import dataset 
IncompleteSurvey <- read.csv("Data/SurveyIncomplete.csv")

##Preprocess attributes into factors
IncompleteSurvey$brand <- as.factor(IncompleteSurvey$brand)
IncompleteSurvey$car <- as.factor(IncompleteSurvey$car)
IncompleteSurvey$zipcode <- as.factor(IncompleteSurvey$zipcode)

##Preprocess elevel as ordered 
IncompleteSurvey$elevel <- as.ordered(IncompleteSurvey$elevel)

##Histograms of variables
hist(IncompleteSurvey$salary, main = "Histogram of Salary", xlab = "Salary (in $)")
hist(IncompleteSurvey$age, main = "Histogram of Age", xlab = "Age")
hist(IncompleteSurvey$elevel, main = "Histogram of Level of Education", xlab = "Education level")
hist(IncompleteSurvey$car, main = "Histogram of Car Brand", xlab = "Car brand")
hist(IncompleteSurvey$credit, main = "Histogram of Credit", xlab = "Credit (in $)")
hist(IncompleteSurvey$zipcode, main = "Histogram of Zipcode", xlab = "Zipcode")
hist(IncompleteSurvey$brand, main = "Histogram of PC Brand", xlab = "Brand")