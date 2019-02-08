##Project: Acer vs Sony Brand Preference 
##Name: Francesca Prata
##Data Partition for Random Forest
##Version: 1

##Creating training set
set.seed(123)
inTrain<- createDataPartition(y = CompleteResponses$brand,
                              p = 0.75,
                              list = FALSE)

## Separating the data into training and testing 
training <- CompleteResponses[inTrain,]
testing <- CompleteResponses[-inTrain,]

##Set cross validation parameters
fitControlRF <- trainControl(method = "repeatedcv",
                           number = 10,
                           repeats = 3,
                           search = "random",
                           preProc = c("center", "scale"))
                           

#Train RandomForest model
set.seed(123)
RandomForestFit<- train(brand ~ .,
                         data = training,
                         method = "rf",
                         metric = "Accuracy",
                         trControl = fitControlRF)

#Tune random forest parameters manually
Rfmtry4 <- randomForest(brand ~ .,
                    data = training,
                    ntree = 500,
                    mtry = 4,
                    importance = TRUE,
                    proximity = TRUE,
                    trControl = fitControlRF)

##See results 
print(Rfmtry4)
plot(Rfmtry4)

##Use VarImp() to see how model prioritized each feature in the training 
varImp(Rfmtry4)

##Plot the importance of the variables
varImpPlot(Rfmtry4)


