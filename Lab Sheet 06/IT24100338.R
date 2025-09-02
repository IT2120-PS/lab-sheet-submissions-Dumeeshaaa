setwd("/Users/dumeesha/Desktop/IT24100338")

cat("Distribution of X: Binomial distribution with n = 50 and p = 0.85\n")
cat("   X ~ Binomial(n = 50, p = 0.85)\n\n")

cat("Probability that at least 47 students passed:\n")
prob_at_least_47 <- 1 - pbinom(46, size = 50, prob = 0.85)
cat("   P(X >= 47) =", round(prob_at_least_47, 4), "\n")
cat("   Calculation: 1 - pbinom(46, 50, 0.85)\n\n")

cat("Random variable X: Number of customer calls received in one hour\n\n")

cat("Distribution of X: Poisson distribution with λ = 12 calls per hour\n")
cat("    X ~ Poisson(λ = 12)\n\n")

cat("Probability that exactly 15 calls are received:\n")
prob_exactly_15 <- dpois(15, lambda = 12)
cat("    P(X = 15) =", round(prob_exactly_15, 4), "\n")
cat("    Calculation: dpois(15, 12)\n\n")

