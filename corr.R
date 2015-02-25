source ("/Users/Morgan Sarah Winston/Documents/Hawaii/Spring 2015/Coursera/complete.R")
corr <- function(directory, threshold = 0){
 temp <- complete(directory)
 cor_vector <- vector() 
 
  if (sum(temp$nobs > threshold) > 0){
    # Return numeric vector of correlation between nitrogen and sulfate.
    for (i in 1:length(list.files(directory, full.names=TRUE))){
      file <- read.csv(list.files(directory, full.names=TRUE)[i])
      
      if (sum(complete.cases(file)) > threshold){
        cor_vector <- c(cor_vector, cor(file$sulfate, file$nitrate, use = "complete.obs"))
      }
        else (cor_vector = cor_vector)
       
    }
 
  } else (cor_vector <- 0)
    
  return(cor_vector)
 
}
