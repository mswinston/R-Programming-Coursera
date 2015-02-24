complete <- function(directory, id = 1:332){
  files <- list.files(directory, full.names=TRUE)
  dat <- data.frame()
  
  for (i in id){
    dat <- rbind(dat, read.csv(files[i]))  
    nocc <- sum(complete.cases(dat))
  }
  
  data.frame(id=id,nobs=nocc) 
  
}
