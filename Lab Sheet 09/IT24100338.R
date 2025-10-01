setwd("/Users/dumeesha/Desktop/IT24100338")
getwd()
setwd("/Users/dumeesha/Desktop/IT24100338")

set.seed(123)  # for reproducible results
baking_times <- rnorm(25, mean = 45, sd = 2)
print(baking_times)

test_result <- t.test(baking_times, mu = 46, alternative = "less")
print("Generated sample:")
print(baking_times)

print("Hypothesis test results:")
print(test_result)