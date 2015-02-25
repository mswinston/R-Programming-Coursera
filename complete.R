complete <- function(directory, id = 1:332){
  files <- list.files(directory, full.names=TRUE)
  dat <- data.frame()
  
  for(i in id){
  temp <- read.csv(files[i])
  nocc <- sum(complete.cases(temp))
  dat <- rbind(dat, list(id=i, nobs=nocc))
  }
  
  return(dat)
}
  
