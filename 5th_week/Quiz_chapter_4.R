#1

a<-list(1,"abc",TRUE)


#2.1

x1<-sample(10:20,100,replace=TRUE)

findnumber <- function(x) {
  tmp <- as.character(x)
  wl <- list()
  for (i in 1:length(tmp)) {
    nbs<- tmp[i]
    wl[[nbs]] <- c(wl[[nbs]],i)
  }
  return (wl)
}

num_rate <- findnumber(x1)

#2.2

max_rate_for <- function(x) {
  max_rate<-0
  max_num<-0
  for (i in 1:length(x)) {
    tmp_rate <- length(x[[i]])
    if (tmp_rate > max_rate) {
      max_rate<-tmp_rate
      max_num<-names(x[i])
      }
  }
  max_num
}

max_num <- max_rate_for(num_rate)


#2.3

sapply(num_rate, length)

max_num_2<-names(num_rate[which.max(sapply(num_rate, length))])

