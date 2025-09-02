setwd("C:\\Users\\IT24102155\\Desktop\\IT24102155")
Delivery_Times <- read.table("Exercise - Lab 05.txt", header = TRUE)

colnames(Delivery_Times) <- "Delivery_Time"
head(Delivery_Times)
str(Delivery_Times)

breaks <- seq(20, 70, length.out = 10)
hist(Delivery_Times$Delivery_Time,right = FALSE,breaks = breaks,main = "Histogram of Delivery Times",xlab = "Delivery Time",ylab = "Frequency")

hist_data <- hist(Delivery_Times$Delivery_Time, breaks = breaks, right = FALSE, plot = FALSE)
frequencies <- hist_data$counts
cum_freq <- cumsum(frequencies)
print(frequencies)
print(cum_freq)

midpoints <- hist_data$mids
plot(midpoints, cum_freq, type = "b",
     main = "Cumulative Frequency Polygon for Delivery Time",
     xlab = "Delivery Time (minutes)",
     ylab = "Cumulative Frequency",
     pch = 16)



