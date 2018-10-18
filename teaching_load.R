# Code to generate barplot of Dr. Tayo's teaching load at Pittsburg State University

# author: Benjamin O. Tayo

# date: 10/17/2018

#import necessary libraries
library(readr)
library(tidyverse)

#import dataset
data<-read_csv("teaching_load.csv")

names(data)<-c("term","load")

#generate barplot
data%>%ggplot(aes(reorder(term,load),load))+geom_col(fill="blue")+
  ggtitle("B. Tayo Teaching Load at PSU from F13 to S19")+
  xlab("term")+ylab("load (hrs)")+
  theme(plot.title = element_text(color="black", size=12, hjust=0.5, face="bold"),
        axis.title.x = element_text(color="black", size=12, face="bold"),
        axis.title.y = element_text(color="black", size=12, face="bold"))
