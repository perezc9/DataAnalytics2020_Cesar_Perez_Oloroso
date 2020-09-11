help("read.csv")
data1 <-read.csv(file.choose(),header=T)
data1
summary(EPI_data$EPI)
boxplot(EPI_data$EPI)
fivenum(EPI_data$EPI,na.rm=TRUE)
stem(EPI_data$EPI)
hist(EPI_data$EPI)
hist(EPI_data$EPI, seq(30., 95., 1.0), prob=TRUE)
lines(density(EPI_data$EPI, na.rm=TRUE, bw=1))
lines(density(EPI_data$EPI, na.rm=TRUE, bw="SJ"))
rug(EPI_data$EPI)

#fitting a distribution EPI
plot(ecdf(EPI_data$EPI), do.points=FALSE, verticals=TRUE)
par(pty="s")
qqnorm(EPI_data$EPI); qqline(EPI_data$EPI)
x <-seq(30, 95, 1)
qqplot(qt(ppoints(250), df=5), x, xlab="Q-Q plot")
qqline(x)

#fitting a distribution DALY
plot(ecdf(EPI_data$DALY), do.points=FALSE, verticals=TRUE)
par(pty="s")
qqnorm(EPI_data$DALY); qqline(EPI_data$DALY)
qqplot(qt(ppoints(250), df=5), x, xlab="Q-Q plot")
qqline(x)

#fitting a distribution WATER_H
plot(ecdf(EPI_data$WATER_H), do.points=FALSE, verticals=TRUE)
par(pty="s")
qqnorm(EPI_data$WATER_H); qqline(EPI_data$WATER_H)
qqplot(qt(ppoints(250), df=5), x, xlab="Q-Q plot")
qqline(x)

boxplot(EPI_data$EPI, EPI_data$DALY)
qqplot(EPI_data$EPI, EPI_data$DALY)

#Inter-compare
boxplot(EPI_data$EPI, EPI_data$ENVHEALTH, EPI_data$ECOSYSTEM, EPI_data$DALY, EPI_data$AIR_H, EPI_data$WATER_H, EPI_data$AIR_E, EPI_data$WATER_E, EPI_data$BIODIVERSITY)