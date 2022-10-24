n=10
x=rnorm(n)

mu=cumsum(x)/(1:n)
ss=cumsum(x-mu)^2
s=c(ss[1],ss[2:(n-1)]/(1:(n-2)),ss[n]/(n-1))
#s=c(ss[1],ss[2:(n)]/(1:(n-1)))
l1=qchisq(0.975,n-1)
l2=qchisq(0.025,n-1)
ic1=((n-1)*s^2)/l1
ic2=((n-1)*s^2)/l2
plot(s^2,type="l")
abline(h=mean(s^2),col="red")
lines(ic1,col="blue",lty="dotted")
lines(ic2,col="blue",lty="dotted")
