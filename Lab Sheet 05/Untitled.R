setwd("/Users/dumeesha/Desktop/IT24100338")

Delivery_Times <- read.table("Exercise - Lab 05.txt", header = TRUE)
str(Delivery_Times)
fix(Delivery_Times)
attach(Delivery_Times)



raw_data <- readLines("Exercise - Lab 05.txt")


delivery_times_numeric <- as.numeric(raw_data[-1])  


str(delivery_times_numeric)


histogram <- hist(delivery_times_numeric, 
                 main = "Histogram of Delivery Times", 
                 xlab = "Delivery Time (minutes)",
                 breaks = seq(20, 70, length = 10), 
                 right = FALSE,
                 col = "lightblue")
                 
breaks <- round(histogram$breaks)
freq <- histogram$counts
cum_freq <- cumsum(freq)


new <- c(0, cum_freq)  # Start with 0 cumulative frequency

plot(breaks, new, 
     type = "l", 
     main = "Cumulative Frequency Polygon (Ogive) for Delivery Times",
     xlab = "Delivery Time (minutes)", 
     ylab = "Cumulative Frequency",
     ylim = c(0, max(cum_freq) + 5),
     col = "blue",
     lwd = 2)


points(breaks, new, pch = 16, col = "red")


cumulative_table <- cbind(Upper_Limit = breaks, Cumulative_Frequency = new)
print(cumulative_table)