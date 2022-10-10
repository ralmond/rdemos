## is.na and anyNA

mmat <- matrix(1:12,3,4)
mmat[2,3] <-NA
is.na(mmat)
anyNA(mmat)

## NAs are contageos
mmat+1
mmat >5
mmat == NA
0/0
log(0)

mean(mmat)
mean(mmat,na.rm=TRUE)

is.na(mmat[1,1]) <- TRUE
mmat
is.na(mmat[1,1]) <- FALSE ## This doesn't work
mmat[1,1] <- 1
mmat

## Making matrixes
matrix(1:12,3,4)
matrix(1:12,3,4,byrow=TRUE)

rmat <- matrix(rnorm(500),100,5)
colnames(rmat) <- paste("var",1:5,sep="")
head(rmat)
summary(rmat)

## Data frames
df <- data.frame(x=1:50, y=rnorm(50),
                 z=runif(50)<.5)
head(df)
head(df$y)
df$w <- NA
head(df)
head(df[1])
head(df[c(1,3)])
df[1,3]

## Rep
rep(1:3,2)
rep(1:3,each=2)
rep(c("control","experimental"),each=8)
arm <- factor(rep(c("control","experimental"),each=8))


hml <- factor(c("high","high","med",
                   "med","low","low"))
as.numeric(hml)
hml <- ordered(c("high","high","med",
                   "med","low","low"),
                  levels=c("low","med","high"))
as.numeric(hml)


## apply
apply(mmat,1,sum) ## row sums
apply(mmat,2,sum) ## column sums
mmat
apply(mmat,1,sum,na.rm=TRUE) ## row sums
apply(mmat,2,sum,na.rm=TRUE) ## column sums

sapply(df,mean,na.rm=TRUE)

as.data.frame(mmat)
as.matrix(df)
