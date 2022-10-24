#Int_conf_moy
x<-c(...,...,...,...,...)
t.test(x)$conf.int
att(,"conf.level")


#int_conf_moy_var_conn
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



#int_conf_var_mu_connu
n=100
mu<-2
sigma<-2
N=1/n
y<-rnorm(n,mu,sigma)
U<-sqrt(N*(sum((x-mu)^2)))
k1<-qchisq(0.05,df=n)
k2<-qchisq(0.95,df=n)
IC=c(n*U^2/k1,50*U^2/k2)
IC


n=1000
k=mea=lb=ub=2:n
for (i in 2:n){
x=rnorm(i)
mea[i]=mean(x)
lb[i]=mean(x)-sd(x)/sqrt(i)*1.96
ub[i]=mean(x)+sd(x)/sqrt(i)*1.96
}
plot(mea,type='l')
lines(lb,type='l', col=2)
lines(ub,type='l', col=3)


ub=




