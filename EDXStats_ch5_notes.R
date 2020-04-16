require(ISLR)
require(boot)
?cv.glm

plot(mpg~horsepower,data=Auto)

#################################
## LOOCV: Leave One Out CV
#################################

# DELTA is the CV prediction error 
glm.fit=glm(mpg~horsepower, data=Auto)
cv.glm(Auto,glm.fit)$delta

## FUNCTION TO USE FORMULA 5.2
loocv = function(fit){
  h=lm.influence(fit)$h
  mean((residuals(fit)/(1-h))^2)
}

## CHECKING
loocv(glm.fit)

cv.error=rep(0,5)
degree=1:5
for(d in degree){
  glm.fit=glm(mpg~poly(horsepower,d), data=Auto)
  cv.error[d]=loocv(glm.fit)
}
plot(degree, cv.error, type="b")

#################################
## 10-Fold CV
#################################

cv.error10=rep(0,5)
for(d in degree){
  glm.fit=glm(mpg~poly(horsepower,d), data=Auto)
  cv.error10[d]=cv.glm(Auto, glm.fit,K=10)$delta[1]
}

lines(degree, cv.error10, type="b",col="red")


#################################
## BOOTSTRAPPING
## Minimum Risk Investment 5.2
#################################


alpha=function(x,y){
  vx=var(x)
  vy=var(y)
  cxy=cov(x,y)
  (vy-cxy)/(vx+vy-2*cxy)
}










## QUIZ QUESTIONS
# B1 is first predictor (not coef)
load("Documents/EDXStats/5.R.RData")
glm.fit=glm(y~X1+X2, data=Xy)

summary(glm.fit)




matplot(Xy,type="l")
