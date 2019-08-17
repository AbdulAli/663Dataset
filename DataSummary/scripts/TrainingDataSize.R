library("gtools")
range<-c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18)
result<-matrix(nrow=18,ncol=18,byrow = TRUE)
#C1 9X171
#C2 16X171
#C3 18X18
#C4 18X18

for (i in range)
{ # i is row counter
  setwd(paste("/home/hareem/Videos/663Dataset/Configurations/Baseline/Configuration4_Results/DataK=",i,sep=""))
  getwd()
  fileNames = list.files(pattern="*tr.csv") 
  fileNames<-mixedsort(fileNames)        				 #correcting file order
  
  for (j in 1:length(fileNames)){
    print(fileNames[j])
   # j is col counter 
    f1<-read.csv(file=fileNames[j],header=TRUE)
    result[i,j]=nrow(f1)                      				 #record is just for one file 
    
  }
  
}
result<-t(result)
write.csv(file="abc.csv",result)

