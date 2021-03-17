#Loading package.
library(dplyr)

#Loading tracking table.
df <- read.table("genes.fpkm_tracking",header=TRUE)

#Applying filter.
filtered <- filter(df,df$FPKM>1)

#Summarizing data frame.
summary(df)

par(mfrow=c(1,2))

#Plotting the histograms.
hist(log10(df$FPKM)+1,freq=TRUE,main="Histogram of FPKM values",xlab="log10(FPKM) + 1")
hist(log10(filtered$FPKM)+1,freq=TRUE,main="Histogram of FPKM values > 1",xlab="log10(FPKM>1) + 1")
