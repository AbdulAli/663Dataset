library("gtools")
library("dplyr")

range<-c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16)
yes_result<-matrix(nrow=16,ncol=171,byrow = TRUE)
no_result<-matrix(nrow=16,ncol=171,byrow = TRUE)
#C1 9X171
#C2 16X171
#C3 18X18
#C4 18X18

for (i in range)
{ # i is row counter
  setwd(paste("/home/hareem/Videos/663Dataset/Configurations/Baseline/Configuration2_Results/DataK=",i,sep=""))
  fileNames = list.files(pattern="*tr.csv") 
  fileNames<-mixedsort(fileNames)        				        #correcting file order
  
  for (j in 1:length(fileNames)){
    print(fileNames[j])
    # j is col counter 
    f1<-read.csv(file=fileNames[j],header=TRUE)
    YesRecords<-f1 %>% filter(f1$bug=="YES")
    yes_result[i,j] = nrow(YesRecords)                     				  #record is just for one file 
    
    NoRecords<-f1 %>% filter(f1$bug=="NO")
    no_result[i,j] = nrow(NoRecords) 
  }
  
}
write.csv(file="YesRecords.csv",yes_result)
write.csv(file="NoRecords.csv",no_result)