setwd("/Users/dumeesha/Desktop/IT24100338")

data <- read.table("Data - Lab 8.txt", header = TRUE)
attach(data)

# Population mean and standard deviation
pop_mean <- mean(Nicotine)
pop_sd <- sd(Nicotine)

pop_mean
pop_sd

set.seed(123)
samples <- matrix(nrow = 6, ncol = 25)

for(i in 1:25) {
    samples[, i] <- sample(Nicotine, size = 6, replace = TRUE)
}

colnames(samples) <- paste("Sample", 1:25, sep = "_")

# Sample means and sample standard deviations
sample_means <- apply(samples, 2, mean)
sample_sds <- apply(samples, 2, sd)

# Display sample results
results <- data.frame(
    Sample = 1:25,
    Mean = round(sample_means, 4),
    SD = round(sample_sds, 4)
)
print(results)

mean_of_sample_means <- mean(sample_means)
sd_of_sample_means <- sd(sample_means)

mean_of_sample_means
sd_of_sample_means