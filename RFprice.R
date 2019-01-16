library(leaps)  #loading package
RF=read.table(file=file.choose(),header=TRUE, sep=",")  #loading dataset
attach(RF) 
regression.full=regsubsets(PRICE~.,data=RF,nvmax=21) #Stepwise regression
reg.summary=summary(regression.full)
reg.summary$rsq
par(mfrow =c(2,2)) #graph the plot for RSS Cp  and BIC
plot(reg.summary$rss ,xlab=" Number of Variables ",ylab=" RSS",,
type="l")
plot(reg.summary$adjr2 ,xlab =" Number of Variables ",
ylab=" Adjusted RSq",type="l")
which.max (reg.summary$adjr2)
points (16, reg.summary$adjr2[16], col ="red",cex =2, pch =20)
plot(reg.summary$cp ,xlab =" Number of Variables ",ylab="Cp",
type="l")
which.min (reg.summary$cp )
points (15, reg.summary$cp [16], col ="red",cex =2, pch =20)
which.min (reg.summary$bic )
plot(reg.summary$bic ,xlab=" Number of Variables ",ylab=" BIC",
type="l")
points (15, reg.summary$bic [16], col =" red",cex =2, pch =20)

coef(regression.full,15) #Find out the coefficient of each predictor

library(car)   #loading package
library(hydroGOF)   #loading package
RF=read.table(file=file.choose(),header=TRUE, sep=",")     #loading dataset  
RFfit = lm(PRICE~.-BRANDNAM-RSIZE,data=RF);         #run linear regression
summary(RFfit);  #get summary of the model
confint(RFfit);  #Find out the coefficient of each predictor
rmse(RF$PRICE,RFfit$fit);  #RMSE of the model

RFfit.res = resid(RFfit)   #geting residuals of the model
plot(RFfit.res,ylab="Residuals",main="Residual plot")   #plot residuals
abline(0,0)
plot(rstudent(RFfit),ylab="Residuals",main="Standradized Residual plot") 
abline(0,0)
qqnorm(RFfit.res)  #Q-Q plot
qqline(RFfit.res)
durbinWatsonTest(RFfit)   #Run Durbin Watson Test



library(car)      #loading package
par(mfrow =c(1,3))   #set up graphing window format
p = 16; 
n = 37;
#fit cutoff point
2*sqrt(p/n);
#leverage cutoff point 
(2*p)/n
ss=print(influence.measures(RFfit))  #influence.measure procedure
names(ss)
xx=ss$infmat
#plot Dffit chart, Cook.D chart and Leverage chart
plot(xx[,17],ylab="Dffit",xlab="Observations",main="Diffit Measurements")  #plot Dffit chart
abline(2*sqrt(p/n),0)
plot(xx[,19],ylab="Cook.d",xlab="Observations",ylim=c(0,1.2),main="Cook.D Measurements")
abline(1,0)
plot(xx[,20],ylab="Hat",xlab="Observations",main="Leverage Measurements")
abline((2*p)/n,0)

library(MASS);   #loading package
RFfit = lm(PRICE~.-BRANDNAM-RSIZE,data=RF);
boxcox(RFfit)  #Boxcox procedure

RF=read.table(file=file.choose(),header=TRUE, sep=",")
RFfit = lm(PRICE~.-BRANDNAM-RSIZE,data=RF);
RFCORR = RF[,-c(1,3,8)] 
cor(RFCORR)   #Find out the correlation between the dependent variable
vif(RFfit)         #Find out the Vif
