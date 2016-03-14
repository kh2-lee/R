# a
#people_info <- read.table("Chapter5_pic1.csv",sep=",",stringsAsFactors = FALSE)
people_info <- read.csv("Chapter5_pic1.csv",stringsAsFactors = FALSE)
names(people_info) <- c("Name","Surname","Gender","Age","DateofBirth","WorkingPeriod")


# b
people_under_50<-people_info[people_info$Age < 50,c("Name","Gender","Age")]
#people_under_50<-people_info[people_info$Age < 50,1:4]
#people_under_50<-people_under_50[,-2]

#c
sonya<-people_info
sonya[sonya$Name == "Sonya",]$Age <- 40
sonya[sonya$Name == "Sonya",]$DateofBirth <- "1976.09.21"

#d
d<-people_info
d$WorkingPeriod <- d$WorkingPeriod-1

#e
add_chunmee<-rbind(people_info,list("Choonme","Cha","Female",29,"1987.04.26",5))

#f
mean(people_info$Age)
mean(people_info$WorkingPeriod)

#g
#remove_surname<-people_info[,-2]
people_info$Surname <- NULL

#h
#h<-people_info[with(people_info, order(WorkingPeriod)),]
h<-people_info[order(people_info$WorkingPeriod),]

#i
Name<-c("Jim","Sonya","Rachel","Edward","Dasan")
Hobby<-c("Voleyball","Walkiing","Billards","Skiing","Music")
people_hobby<-data.frame(Name,Hobby)

#j
write.csv(merge(people_info,people_hobby),file="Chapter5_result.csv")