range<-c(1,2)
dir_rec[1]<-c()
dir_rec[2]<-c()

dir_rec<-c(0)
for (i in range)
{ 
setwd(paste("/home/hareem/Videos/663Dataset/Configurations/Baseline/Config/DataK=",i,sep=""))
fileNames = list.files(pattern="*tr.csv") 
#declaring a variable that will be used later

for (j in 1:length(fileNames)){
  
  f1<-read.csv(file=fileNames[j],header=TRUE)
  record<-nrow(f1)                           #record is just for one file 
  dir_rec<-c(dir_rec,record)
  print("Record")
  print(dir_rec)
  if(j==length(fileNames))
  { dir_rec[i]<-list(dir_rec)                  #record of all files in a directory goes to temp
    print("dir_rec: i")
    print(dir_rec[i])}
}
a<-dir_rec[1]
b<-dir_rec[2]
print(a)
print(b)

mylist<-list(a,b)
}

#my list contains records of entire configuration
# Handling unequal lengths while combining all results



n.obs <- sapply(mylist, length)
seq.max <- seq_len(max(n.obs))
mat <- t(sapply(mylist, "[", i = seq.max))


write.csv(file="abc.csv",mat)

