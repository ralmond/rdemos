## Load in the Data

statA.linear <- read.csv("Papers/statsA-linear.csv")
statA.adaptive <- read.csv("Papers/statsA-adaptive.csv")
statA.userContorl <- read.csv("Papers/statsA-userControl.csv")
statA <- rbind(statA.adaptive,statA.linear,statA.userContorl)

statB.linear <- read.csv("Papers/statsB-linear.csv")
statB.adaptive <- read.csv("Papers/statsB-adaptive.csv")
statB.userContorl <- read.csv("Papers/statsB-userControl.csv")
statB <- rbind(statB.adaptive,statB.linear,statB.userContorl)

## Calculate Modal Scores
statA$Physics_Mode <- ordered(max.col(statA[,20:22]),levels=1:3,labels=c("H","M","L"))
statB$Physics_Mode <- ordered(max.col(statB[,20:22]),levels=1:3,labels=c("H","M","L"))


library(tidyverse)

statAB <- full_join(statA[,-1],statB[,-1],by=c("app","uid"),
                    suffix=c("A","B"))
## Row 200 is a test user, not good data.
write.csv(statAB[-200,],"statAB.csv")

