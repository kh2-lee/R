 #1.

 Q <- matrix(c(50,60,80,100,150,200,30,40,70),nrow=3)
  
 P <- matrix(c(10.60,17.20,22.50))
 
 #a
 cost_total <- Q %*% P
 
 #b
 cnt_deliveries <- c(18,10,7) # matrix : 다음에 오류가 있습니다Q * cnt_deliveries : 배열의 크기가 올바르지 않습니다
 cnt_bags_total_kg <- Q * cnt_deliveries
 cnt_bags_total <- sum(cnt_bags_total_kg)
 
 
 #2.
 
 y <- matrix(c(1:9),nrow=3,byrow=TRUE)
 
 #a
 y1 <- y * y
 y2 <- y + y
 y3 <- y + 3
 y4 <- 1 / y
 
 #b
 colnames(y) <- c("A","B","C")
 y5 <- y[y[,"C"] > 5,"C"]
 
 #c
 y6 <- y[-1,]
 
 #d
 f <- function(x) ifelse ( x %% 2 == 0,0,x )
 y7 <- apply(y,2,f)
 
 #e
 y8 <- y
 dim(y8) <- c(9,1)
 
 
 #3.
 x <- matrix(c(5,4,1,8,0,2,3,7,9),nrow=3)
 
 #a
 x[c(TRUE,FALSE,TRUE),c(TRUE,TRUE,FALSE)] # x[2,], x[,3] delete
 
 #b
 x[c(TRUE,FALSE),c(2,3)] # X[2,] delete, x[,2:3] select