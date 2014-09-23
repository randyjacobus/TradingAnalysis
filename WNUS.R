setwd("Z:/Analytics/RAnalysis")
yields<-read.csv("Futures.csv")
names(yields)<-c("DATE","T25","T15")
head(yields)
sapply(yields,class)
yields$Curve<-yields[,2]-yields[,3]
head(yields)

setwd("Users/rolandjacobus/Documents/Thesis")
yields<-read.csv("Futures.csv")
names(yields)<-c("DATE","T25","T15")
yields$Curve<-yields[,2]-yields[,3]
Diff<-diff(yields$Curve,lag=1)*100
yields<-yields[-1,]
yields$diff<-Diff
head(yields)
summary(yields$diff)
hist(yields$diff)
