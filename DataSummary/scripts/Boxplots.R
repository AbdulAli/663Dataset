f1<-read.csv(file="C2_TrDataSize.csv", header=TRUE)
boxplot(f1$K.1,f1$K.2,f1$K.3,f1$K.4,f1$K.5,f1$K.6,f1$K.7,f1$K.8,f1$K.9,f1$K.10,f1$K.11,f1$K.12,f1$K.13,f1$K.14,f1$K.15,f1$K.16, names=c("K=1","K=2","K=3","K=4","K=5","K=6","K=7","K=8","K=9","K=10","K=11","K=12","K=13","K=14","K=15","K=16"),main="Configuration CI - Training Data Size", ylab="Number of Instances",xlab="Window")




f1<-read.csv(file="C1_BugRatio.csv", header=TRUE)
boxplot(f1$K.1,f1$K.2,f1$K.3,f1$K.4,f1$K.5,f1$K.6,f1$K.7,f1$K.8,f1$K.9,names=c("K=1","K=2","K=3","K=4","K=5","K=6","K=7","K=8","K=9"),main="Configuration CI - Percentage Defects in Training Data", ylab="% Defects",xlab="Window")
abline(h=0.5, col = "Black")

f1<-read.csv(file="C2_BugRatio.csv", header=TRUE)
boxplot(f1$K.1,f1$K.2,f1$K.3,f1$K.4,f1$K.5,f1$K.6,f1$K.7,f1$K.8,f1$K.9,f1$K.10,f1$K.11,f1$K.12,f1$K.13,f1$K.14,f1$K.15,f1$K.16, names=c("K=1","K=2","K=3","K=4","K=5","K=6","K=7","K=8","K=9","K=10","K=11","K=12","K=13","K=14","K=15","K=16"),main="Configuration CI - Percentage Defects in Training Data", ylab="% Defects",xlab="Window", ylim=c(0,1))
abline(h=0.5, col = "Black")

f1<-read.csv(file="C4_BugRatio.csv",header=TRUE)
boxplot(f1$K.1,f1$K.2,f1$K.3,f1$K.4,f1$K.5,f1$K.6,f1$K.7,f1$K.8,f1$K.9,f1$K.10,f1$K.11,f1$K.12,f1$K.13,f1$K.14,f1$K.15,f1$K.16,f1$K.17,f1$K.18 , names=c("K=1","K=2","K=3","K=4","K=5","K=6","K=7","K=8","K=9","K=10","K=11","K=12","K=13","K=14","K=15","K=16","K=17","K=18"),main="Configuration II - Percentage Defects in Training Data", ylab="% Defects", xlab="Window", ylim=c(0,1))
