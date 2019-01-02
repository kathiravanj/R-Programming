#Load the data
superheroes <- read.csv("C:/python/charcters_stats.csv")
names(superheroes)

#Split dataset into training and testing by count
nrow(superheroes)
limit <- floor((nrow(superheroes)/4)*3)
training <- superheroes[1:limit, ]         
testing <- superheroes[(limit+1):nrow(superheroes), ]   

summary(superheroes)

#Fit a logistic regression model using training data
marvel_model<-glm(Alignment~Intelligence+Strength+Speed+Durability+Power+Combat, data=training, family=binomial)
summary(marvel_model)

#Use the fitted model to do the predictions in the testing data
model_pred_prob<-predict(marvel_model, testing, type="response")

model_pred_direction<-rep("bad", 150)
model_pred_direction[model_pred_prob>0.5]<-"good"

#Create a confusion matrix and compute misclassification rate
table(testing$Alignment, model_pred_direction)
mean(model_pred_direction!=testing$Alignment)

