#int_conf_moy_var_conn_Pop_qcq

n<-100
alpha<-0.05
teta<-1
x<-rexp(n,teta)
xbar<-sum(x)/n
var<-sum((x-xbar)^2)/n
sd<-sqrt(var)
q<-qt(1-alpha/2,n-1)
IC<-c(xbar-q*sd/sqrt(n-1),xbar+q*sd/sqrt(n-1))
IC

#########################################################################

n<-100
teta<-1
x<-rexp(n,teta)
xbar<-sum(x)/n
var<-sum((x-xbar)^2)/n
sd<-sqrt(var)

q1<-qt(1-0.10/2,df=n-1)
IC1<-c(xbar-q1*sd/sqrt(n-1),xbar+q1*sd/sqrt(n-1))

q2<-qt(1-0.05/2,df=n-1)
IC2<-c(xbar-q2*sd/sqrt(n-1),xbar+q2*sd/sqrt(n-1))

q3<-qt(1-0.01/2,df=n-1)
IC3<-c(xbar-q3*sd/sqrt(n-1),xbar+q3*sd/sqrt(n-1))

IC1;IC2;IC3
xbar



#########################################################################

n<-100
lambda<-1
x<-rpois(n,lambda)
xbar<-sum(x)/n
var<-sum((x-xbar)^2)/n
sd<-sqrt(var)

q1<-qt(1-0.10/2,df=n-1)
IC1<-c(xbar-q1*sd/sqrt(n-1),xbar+q1*sd/sqrt(n-1))

q2<-qt(1-0.05/2,df=n-1)
IC2<-c(xbar-q2*sd/sqrt(n-1),xbar+q2*sd/sqrt(n-1))

q3<-qt(1-0.01/2,df=n-1)
IC3<-c(xbar-q3*sd/sqrt(n-1),xbar+q3*sd/sqrt(n-1))

IC1;IC2;IC3
xbar

