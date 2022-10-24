n<-100
p<-0.5
x<-rbinom(n,1,p)

#IC_exact

t<-sum(x)

binom.test(t,n,conf.level=1-0.10)

binom.test(t,n,conf.level=1-0.05)

binom.test(t,n,conf.level=1-0.01)

#IC_approx

xbar<-t/n
var<-sum((x-xbar)^2)/n
sd<-sqrt(var)

q1<-qnorm(1-0.10/2)
IC1<-c(xbar-q1*sd/sqrt(n-1),xbar+q1*sd/sqrt(n-1))

q2<-qnorm(1-0.05/2)
IC2<-c(xbar-q2*sd/sqrt(n-1),xbar+q2*sd/sqrt(n-1))

q3<-qnorm(1-0.01/2)
IC3<-c(xbar-q3*sd/sqrt(n-1),xbar+q3*sd/sqrt(n-1))

IC1;IC2;IC3
xbar


