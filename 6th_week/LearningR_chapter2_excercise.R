# Excercise 2-1
#  1.
x=1:1000
atan(1/x)

# 2.
x<-1:1000
y<-atan(1/x)
z<-1/tan(y)

# Excercise 2-2
x==z
identical(x,z) # returns TRUE in two objects for being exactly equal. (type of x is not equal z)
#typeof(x)
#typeof(z)
all.equal(x,z) # returns differences of two objects.
#a<-c(TRUE,TRUE,TRUE,TRUE)
#b<-c(TRUE,FALSE,TRUE,TRUE)
#all.equal(a,b)
all.equal(x,z,tolerance=0) #abs(current-target)/target <= tolerance : TRUE
#all.equal(1,2,tolerance=10)

# Excercise 2-3
# 1. 
true_and_missing<-c(TRUE,NA,TRUE,NA)
false_and_missing<-c(NA,FALSE,NA,FALSE)
mixed<-c(TRUE,FALSE,NA)

any(true_and_missing) #Given a set of logical vectors, is at least one of the values true?
any(false_and_missing)
#any(false_and_missing,na.rm=TRUE)
any(mixed)

all(true_and_missing)
#all(true_and_missing,na.rm=TRUE)
all(false_and_missing)
all(mixed)