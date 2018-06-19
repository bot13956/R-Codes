#This code uses random numbers to calculate the error propagation associated with the spread (d = X - Y) 
#of two random variables X and Y. The simulated standard deviation is compared with theoretical values predicted
#using the Binomial distribution. Finally, the confidence interval (margin of error) is calculated for the spread. 
#Such calculations are very useful for doing polls analysis for predicting the outcome of a presidential election.                                                                  


B<-1000
N1<-100
N2<-200

outcome<-replicate(B,{
  X<-sample(c(1,0), N1, replace=TRUE)
  X_hat<-mean(X)
  s1<-sd(X)
  se1_cal<-s1/sqrt(N1)
  se1_theo<-sqrt(X_hat*(1-X_hat)/N1)
  Y<-sample(c(1,0), N2, replace=TRUE)
  Y_hat<-mean(Y)
  s2<-sd(Y)
  se2_cal<-s2/sqrt(N2)
  se2_theo<-sqrt(Y_hat*(1-Y_hat)/N2)
  se_tot_theo = sqrt(se1_theo^2 + se2_theo^2)
  se_tot_cal = sqrt(se1_cal^2 + se2_cal^2)
  c(X_hat-Y_hat, se_tot_theo,se_tot_cal)
})

values<-data.frame(t(outcome))
names(values)<-c("mean", "se_theo", "se_cal")
print(head(values))
print(sd(values$mean))

d<-mean(values$mean)
se_d<-sd(values$mean)
ci<-c(d + qnorm(0.025)*se_d, d + qnorm(0.975)*se_d)

  
