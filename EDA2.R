baltdata <- NEI[NEI$fips=="24510", ]
# Baltimore yearly emmisisons data
baltYrEmm <- aggregate(Emissions ~ year, baltdata, sum)
#EDA2.png
cols1 <- c("pink", "blue", "orange", "yellow")
barplot(height=baltYrEmm$Emissions/1000, names.arg=baltYrEmm$year, xlab="Year", 
         ylab=expression('Aggregated Emission'),main=expression('Baltimore Aggregated PM'[2.5]*' Emmissions by Year'), col = cols1)