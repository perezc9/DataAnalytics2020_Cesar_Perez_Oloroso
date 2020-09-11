data1 <-read.csv(file.choose(),header=T)
data1

EPILand <- EPI_data$EPI[!EPI_data$Landlock]
Eland <- EPILand[!is.na(EPILand)]
hist(Eland)
hist(Eland, seq(30., 95., 1.0), prob = TRUE)

#Repeat for other columns
#No_surface_water
EPINSW <- EPI_data$EPI[!EPI_data$No_surface_water]
EWater <- EPINSW[!is.na(EPINSW)]
hist(EWater)
hist(EWater, seq(30., 95., 1.0), prob = TRUE)

#Desert
EPIDesert <- EPI_data$EPI[!EPI_data$Desert]
EDes <- EPIDesert[!is.na(EPIDesert)]
hist(EDes)
hist(EDes, seq(30., 95., 1.0), prob = TRUE)

#High_Population_Density
EPIHPD <- EPI_data$EPI[!EPI_data$High_Population_Density]
EHPD <- EPIHPD[!is.na(EPIHPD)]
hist(EHPD)
hist(EHPD, seq(30., 95., 1.0), prob = TRUE)

