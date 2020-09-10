help("read.csv")
data1 <-read.csv(file.choose(),header=T)
data1
summary(EPI_data$EPI)
boxplot(EPI_data$EPI)
fivenum(EPI_data$EPI,na.rm=TRUE)
