#IC_var


n<-100
alpha<-0.05
mu<-0
sigma<-1
x<-rnorm(n,mu,sigma)
xbar<-sum(x)/n

#mu_connu
R2<-sum((x-mu)^2)/n
k1<-qchisq(alpha/2,df=n)
k2<-qchisq(1-alpha/2,df=n)
IC=c(n*R2/k2,n*R2/k1)
IC

#mu_inconn
S2<-sum((x-xbar)^2)/n
s1<-qchisq(alpha/2,df=n-1)
s2<-qchisq(1-alpha/2,df=n-1)
IC=c(n*S2/s2,n*S2/s1)
IC

########################################################################

n<-100
mu<-0
sigma<-1
x<-rnorm(n,mu,sigma)
xbar<-sum(x)/n
S2<-sum((x-xbar)^2)/n
s1<-qchisq(0.10/2,df=n-1)
s2<-qchisq(1-0.10/2,df=n-1)
IC1=c(n*S2/s2,n*S2/s1)
IC1

s1<-qchisq(0.05/2,df=n-1)
s2<-qchisq(1-0.05/2,df=n-1)
IC2=c(n*S2/s2,n*S2/s1)
IC2

s1<-qchisq(0.01/2,df=n-1)
s2<-qchisq(1-0.01/2,df=n-1)
IC3=c(n*S2/s2,n*S2/s1)
IC3






