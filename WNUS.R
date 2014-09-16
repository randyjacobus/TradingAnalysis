setwd("Z:/Analytics/RAnalysis")
yields<-read.csv("Futures.csv")
names(yields)<-c("DATE","T25","T15")
head(yields)
sapply(yields,class)
yields$Curve<-yields[,2]-yields[,3]
head(yields)