#int_conf_moy_Pop_norm

n<-100
alpha<-0.05
mu<-0
sigma<-1
x<-rnorm(n,mu,sigma)
xbar<-sum(x)/n

#var_conn
q<-qnorm(1-alpha/2)
ICc<-c(xbar-q*sigma/sqrt(n),xbar+q*sigma/sqrt(n))
ICc

#var_inconn
q<-qt(1-alpha/2,df=n-1)
var<-sum((x-xbar)^2)/n
sd<-sqrt(var)
ICi<-c(xbar-q*sd/sqrt(n-1),xbar+q*sd/sqrt(n-1))
ICi

##########################################################################

n<-100
mu<-0
sigma<-1
x<-rnorm(n,mu,sigma)
xbar<-sum(x)/n
var<-sum((x-xbar)^2)/n
sd<-sqrt(var)

#var_inconn
q1<-qt(1-0.10/2,df=n-1)
IC1<-c(xbar-q1*sd/sqrt(n-1),xbar+q1*sd/sqrt(n-1))

q2<-qt(1-0.05/2,df=n-1)
IC2<-c(xbar-q2*sd/sqrt(n-1),xbar+q2*sd/sqrt(n-1))

q3<-qt(1-0.01/2,df=n-1)
IC3<-c(xbar-q3*sd/sqrt(n-1),xbar+q3*sd/sqrt(n-1))

IC1;IC2;IC3
