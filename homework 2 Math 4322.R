?lm()
lm.fit<-lm(mpg~horsepower,data=Auto)
summary(lm.fit)

predict(lm.fit,data.frame(horsepower=c(98)),interval="prediction")
predict(lm.fit,data.frame(horsepower=c(98)),interval="confidence")

plot(Auto$horsepower, Auto$mpg, main = "Scatterplot of mpg vs. horsepower", xlab = "horsepower", ylab = "mpg", col = "blue")
abline(lm.fit,lwd=5,col="red")

which.max(hatvalues(lm.fit))
par(mfrow = c(2,2))
plot(lm.fit)

data(Carseats)
str(Carseats)
pairs(Carseats[,c(1,2,3,4,5,6,8,9)])
cor(Carseats[,c(1,2,3,4,5,6,8,9)])
str(Carseats)
lm.fit2<-lm(Sales~CompPrice + Income + Advertising + Population + Price + Age + Education,data=Carseats)
plot(lm.fit2)

x6 <- lm(Sales~Price + Income + US, data=Carseats)
str(Carseats)
x7 <- lm(Sales~Price + Income + US + Price:US + Income:US, data=Carseats)
summary(x7)













boston.zn<-lm(crim~zn,data=Boston)
summary(boston.zn)
boston.indus<-lm(crim~indus,data=Boston)
summary(boston.indus)
boston.chas<-lm(crim~chas,data=Boston)
summary(boston.chas)
boston.nox<-lm(crim~nox,data=Boston)
summary(boston.nox)
boston.rm<-lm(crim~rm,data=Boston)
summary(boston.rm)
boston.age<-lm(crim~age,data=Boston)
summary(boston.age)
boston.dis<-lm(crim~dis,data=Boston)
summary(boston.dis)
boston.rad<-lm(crim~rad,data=Boston)
summary(boston.rad)
boston.tax<-lm(crim~tax,data=Boston)
summary(boston.tax)
boston.ptratio<-lm(crim~ptratio,data=Boston)
summary(boston.ptratio)
boston.black<-lm(crim~black,data=Boston)
summary(boston.black)
boston.lstat<-lm(crim~lstat,data=Boston)
summary(boston.lstat)
boston.medv<-lm(crim~medv,data=Boston)
summary(boston.medv)

boston.all<-lm(crim~.,Boston)
summary(boston.all)

boston.zn1<-lm(crim~poly(zn,3),data=Boston)
summary(boston.zn1)
par(mfrow=c(2,2))
plot(boston.zn1)
boston.indus1<-lm(crim~poly(indus,3),data=Boston)
summary(boston.indus1)
par(mfrow=c(2,2))
plot(boston.indus1)
boston.nox1<-lm(crim~poly(nox,3),data=Boston)
summary(boston.nox1)
par(mfrow=c(2,2))

plot(boston.nox1)
boston.rm1<-lm(crim~poly(rm,3),data=Boston)
summary(boston.rm1)
par(mfrow=c(2,2))

plot(boston.rm1)
boston.age1<-lm(crim~poly(age,3),data=Boston)
summary(boston.age1)
par(mfrow=c(2,2))

plot(boston.age1)
boston.dis1<-lm(crim~poly(dis,3),data=Boston)
summary(boston.dis1)
par(mfrow=c(2,2))

plot(boston.dis1)
boston.rad1<-lm(crim~poly(rad,3),data=Boston)
summary(boston.rad1)
plot(boston.rad1)
boston.tax1<-lm(crim~poly(tax,3),data=Boston)
summary(boston.tax1)
plot(boston.tax1)
boston.ptratio1<-lm(crim~poly(ptratio,3),data=Boston)
summary(boston.ptratio1)
plot(boston.ptratio1)
boston.black1<-lm(crim~poly(black,3),data=Boston)
summary(boston.black1)
plot(boston.black1)
boston.lstat1<-lm(crim~poly(lstat,3),data=Boston)
summary(boston.lstat1)
plot(boston.lstat1)
boston.medv1<-lm(crim~poly(medv,3),data=Boston)
summary(boston.medv1)
plot(boston.medv1)