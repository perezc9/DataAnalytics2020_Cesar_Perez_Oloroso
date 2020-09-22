library(readr)
help("read.csv")
data1 <-read.csv(file.choose(),header=T)

plot(ecdf(EPI_data$EPI), do.points=FALSE, verticals=TRUE)

par(pty="s")
qqnorm(EPI_data$EPI); qqline(EPI_data$EPI)

x <-seq(30,91, 1)
qqplot(qt(ppoints(250), df = 5), x, xlab="Q-Q plot for t dsn")
qqline(x)