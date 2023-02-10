
library(readr)
DF <- read_csv("C:/Users/PC_/Downloads/Exam.csv")
View(DF)

install.packages("googledrive")
library(googledrive)
drive_auth()
drive_find(n_max=10)
filep=drive_download("Exam.csv" ,overwrite = T)
filep$path
drive_user()
nrow(DF)
ncol(DF)
head(DF,10)
DF[1:10, ]
tail(DF, 10)

sapply(DF, class)
library(dplyr)
glimpse(DF)

typeof(DF)
summary(DF)


summary(DF,is.numeric())

numeric_variables<-unlist(lapply(DF,is.numeric))
DF1<-DF[numeric_variables]
head(DF1)

library("dplyr")
 length(select_if(DF,is.numeric))
Summary(select_if(DF,is.numeric))
DF.info()
info(DF)
info_of(DF)
DF['Vide'] = 0

Vide<-0
DF<-cbind(DF,Vide)
View(DF)

install.packages("plot3D")
library(plot3D)
install.packages("plot3Drgl")
install.packages("rgl")
library(ggplot2)
library(rgl)
# Create his3D using plot3D
hist3D_fancy(x=DF$open,y=DF$high,DF$volume, colvar=DF$low)
# Make the rgl version
library(plot3Drgl)
plotrgl()

hist3D_fancy(DF$open, DF$high, colvar=DF$volume,
             )

ggplot(data = DF, mapping = aes(x = open, y = low, color = open)) +
  geom_line() +
  facet_wrap(facets =  vars(genus))
