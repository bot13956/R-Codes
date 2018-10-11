library(readr)
library(tidyverse)
data<-read.csv("WA_Sales_Products_2012-14.csv")

#graph 1
data%>%ggplot(aes(Retailer.country,Quantity))+geom_boxplot()

#graph 2)
 data%>%ggplot(aes(Quantity,Revenue,color=Retailer.type))+geom_point(aes(shape = Retailer.type))
 
#graph 3
 data%>%ggplot(aes(Quantity,Revenue,color=Retailer.type))+geom_point()+facet_wrap(~Retailer.type)
 