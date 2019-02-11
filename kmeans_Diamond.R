#Load the data
diamond <- read.csv("C:/python/diamonds.csv")
names(diamond)
nrow(diamond)
head(diamond)

#Remove the variable "cut"
data<-diamond
data$cut<-NULL
head(data)

#Apply the k-means
clus_output<-kmeans(data,5)
clus_output

clus_output$size
clus_output$cluster

#Plot the clusters in different colors according to our model
plot(data, col=clus_output$cluster)

plot(diamond[c("price", "carat")], col=clus_output$cluster)
plot(diamond[c("price", "carat")], col=diamond$cut)

table(diamond$cut, clus_output$cluster)
