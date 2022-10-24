#int_conf_moy_Pop_qcq

n<-100
alpha<-0.05
q<-qt(1-alpha/2,n-1)
teta<-1
x<-rexp(n,teta)
xbar<-sum(x)/n

#var_conn

u2<-sum((x-1/teta)^2)/n
sd1<-sqrt(u2)
IC1<-c(xbar-q*sd1/sqrt(n-1),xbar+q*sd1/sqrt(n-1))
IC1



