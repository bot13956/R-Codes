# Code to plot Born-Mayer potential energy for sodium chloride: NaCl

# author: Benjamin O. Tayo

# date: 10/12/2018

library(tidyverse)

#define x coordinate in atomic units (a.u = Bohr radius)
x<-seq(3,25,length=100)

# define Born-Mayer potential energy function
Born_Mayer<-function(x)(1.491+2692*exp(-1.837*x) - 27.2/x)

# apply Born-Mayer function to x coordinate to generate potential energy for each x
V<-sapply(x, Born_Mayer)

# store coordinate and potential energy in a data frame
data<-data.frame(x=x,V=V)

# generate visualization of potential energy
data%>%ggplot(aes(x,V))+
  geom_line(size=1.1)+
  xlab("x (a.u) ")+
  ylab("V (eV)")+
  ggtitle("Born-Mayer potential energy for NaCl")+
  theme(plot.title = element_text(color="black", size=12, hjust=0.5, face="bold"),
          axis.title.x = element_text(color="black", size=12, face="bold"),
          axis.title.y = element_text(color="black", size=12, face="bold"))
