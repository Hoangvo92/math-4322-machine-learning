library(MASS)
library(ISLR)

fix(Boston)
names(Boston)

#Task #1: Copy-paste the output you got from the second lm.fit line
lm.fit = lm(medv~lstat, data=Boston)
lm.fit


#task #2:
summary(lm.fit)

#task 3:
lm.fit$coefficients
coef(lm.fit)
names(lm.fit)
lm.fit$df.residual
confint(lm.fit)
predict(lm.fit, data.frame(lstat = c(5,10,15)), interval = "confidence")
predict(lm.fit, data.frame(lstat = c(5,10,15)), interval = "prediction")

#task 4:
attach(Boston)
plot(lstat, medv)
abline(lm.fit)

plot(lm.fit)
par(mfrow=c(2.2))
plot(lm.fit)
par(mfrow=c(1,1))

# task 5:
lm.fit=lm(medv~lstat+age, data = Boston)
summary(lm.fit)

lm.fit = lm(medv~. , data=Boston)
summary(lm.fit)

# task 6:
lm.fit1=lm(medv~.-age, data=Boston)

summary(lm(medv~lstat*age, data=Boston))
summary(lm(medv~lstat + age + lstat:age, data=Boston))