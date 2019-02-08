#Set seed
set.seed(123)

#Run the model
Rfmtry4

##Testing model on test set
predRfmtry4 <- predict(Rfmtry4, newdata = testing)
testing$Pred <- predRfmtry4
postResample(predRfmtry4, testing$brand)

## Applying prediction on incomplete data
pred.daIncRf <- predict(Rfmtry4, newdata = IncompleteSurvey)
IncompleteSurvey$PredIncRf <- pred.daIncRf
postResample(pred.daIncRf, IncompleteSurvey$brand)

summary(pred.daIncRf)
ggplot(IncompleteSurvey) + geom_point(aes(x=age, y=salary, color=pred.daIncRf)) 
