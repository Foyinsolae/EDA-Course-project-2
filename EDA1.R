url1 <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2FNEI_data.zip"
destfile1 <- "destfile.zip"
 
if(!file.exists(destfile1)) {
      download.file(url1, 
          destfile = destfile1, 
                        + method = "curl")
     unzip(destfile1, exdir = ".")
   }
NEI <- readRDS("summarySCC_PM25.rds")
SCC <- readRDS("Source_Classification_Code.rds")
head(NEI)
yearly_emmissions <- aggregate(Emissions ~ year, NEI, sum)
#EDA1.png
cols <- c("pink", "blue", "aquamarine", "red")
barplot(height=yearly_emmissions$Emissions/1000, names.arg=yearly_emmissions$year, 
          xlab="Year", ylab=expression('Aggregated Emission'),main=expression('Aggregated PM'[2.5]*' Emmissions by Year'), col = cols)