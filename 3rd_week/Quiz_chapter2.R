#1
month<-c("Jan","Feb","Mar","Apr","May","Jun","Jul","Aug","Sep","Oct","Nov","Dec")

#2
odd_month<-NULL
for(n in 1:length(month)){
  if (n %% 2 == 1){
    odd_month<-c(odd_month,month[n])
  }
}

#2 alt
month_odd<-month[seq(1,length(month),2)]

#3
month_8<-c(rep(c("mon","tue","wed","thu","fri","sat","sun"),4),"mon","tue","wed")
month_8[23]

#3 alt
month_8_alt<-rep(c("mon","tue","wed","thu","fri","sat","sun"),5)
month_8_alt<-month_8_alt[1:31]
month_8[23]

#4
which(month_8 == "sat")

#5
z<-c(1,3,NA,9,10)

z_withoutNA<-z[c(!is.na(z))]

#5 alt

z_withoutNA<-subset(z)

