n = 100
alpha=0.05
x = rnorm(n)
m = cumsum(x)/(1:n)
v = 1
q = qnorm(1-(alpha/2))
ic1 = m+q*sqrt(v)/sqrt(1:n)
ic2 = m-q*sqrt(v)/sqrt(1:n)
plot(m,type="l")
abline(h=0,col="blue")
lines(ic1,col="red",lty="dotted")
lines(ic2,col="red",lty="dotted")