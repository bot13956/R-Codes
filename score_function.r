# Program to assign letter grades to exam scores for a 100 points exam. Program takes as 
imput a vector containing scores in the range 0 to 100.


score_func <-function(x){
  if(x > 100 | x < 0){
    print("Score is out of range. Please enter a score in range [0,100]")
  }
  else {
    if(x >=90 & x <= 100){
      "A"
    }
    else {
      if(x >=80 & x < 90){
        "B"
      }
      else {
        if(x >=70 & x < 80){
          "C"
        }
        else {
        if(x >=60 & x < 70){
          "D"
        }
          else {
            "F"
          }
        }
      }
    }
  }
}

score_list_func <-function(x){
m <-length(x)
score_vec <-vector(length = m)
for (i in 1:m){
    score_vec[i]<-score_func(x[i])
}
score_vec
}

