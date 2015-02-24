pollutantmean <- function(directory, pollutant, id = 1:332){
 files <- list.files(directory, full.names=TRUE)
 dat <- data.frame()
 for (i in id){
   dat <- rbind(dat, read.csv(files[i]))
 }
 
 if (pollutant == "nitrate"){
   mean(dat$nitrate, na.rm=TRUE)
 }
 else{
   mean(dat$sulfate, na.rm=TRUE)
  }
}
