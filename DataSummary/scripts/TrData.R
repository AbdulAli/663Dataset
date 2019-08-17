range<-c(8,9)
mylist<-list(c())
#mylist[0]<-c()
for (i in range)
{   index=1
    setwd(paste("/home/hareem/Videos/663Dataset/Configurations/Baseline/Configuration1_Results/DataK=",i,sep=""))
    fileNames = list.files(pattern="*tr.csv") 
			#declaring a variable that will be used later
    dir_rec<-c()
    for (j in 1:length(fileNames)){
        f1<-read.csv(file=fileNames[j],header=TRUE)
        record<-nrow(f1)                     #record is just for one file   
        dir_rec<-c(dir_rec,record)           #record of all files in a directory goes to temp
        print("dir_rec:")
        print(dir_rec)
    }
    if(i==8){
      print("if")
      mylist<-list(dir_rec)
    }else {
       print("else")
        mylist<-list(mylist[index-1],dir_rec)
    }
    index=index+1
    print(mylist)
   
    
     #my list contains records of entire configuration
    # Handling unequal lengths while combining all results
   
}


n.obs <- sapply(mylist, length)
seq.max <- seq_len(max(n.obs))
mat <- t(sapply(mylist, "[", i = seq.max))


write.csv(file="abc.csv",mat)

