# ==========================================================
# Kyphosis Classification using Tree-Based Machine Learning
# Author: Hacer Şule Kurtuluş
# Description:
# This script applies decision tree, conditional inference tree,
# and random forest models to the Kyphosis dataset in R.
# ==========================================================


# ----------------------------------------------------------
# Install and load required package for decision trees
# ----------------------------------------------------------
install.packages("rpart")
library(rpart)

# ----------------------------------------------------------
# Load and inspect the Kyphosis dataset
# ----------------------------------------------------------
data(kyphosis)
head(kyphosis)
head(kyphosis, 10)

# ----------------------------------------------------------
# Train a CART decision tree model
# ----------------------------------------------------------
fit <- rpart(Kyphosis ~ Age + Number + Start, data = kyphosis)

# ----------------------------------------------------------
# Display complexity parameter table (for pruning)
# ----------------------------------------------------------
printcp(fit)

# ----------------------------------------------------------
# Plot cross-validation results for pruning
# ----------------------------------------------------------
plotcp(fit)

# ----------------------------------------------------------
# Show a detailed summary of the decision tree model
# ----------------------------------------------------------
summary(fit)

# ----------------------------------------------------------
# Plot the decision tree structure
# ----------------------------------------------------------
plot(fit, uniform = TRUE,
     main = "Decision Tree for Kyphosis Classification")
text(fit, use.n = TRUE, cex = 0.8)

# ----------------------------------------------------------
# Install and load packages for enhanced tree visualization
# ----------------------------------------------------------
install.packages("rattle")
install.packages("rpart.plot")
install.packages("RColorBrewer")

library(rattle)
library(rpart.plot)
library(RColorBrewer)

# ----------------------------------------------------------
# Create a colored and more readable decision tree plot
# ----------------------------------------------------------
fancyRpartPlot(fit)

# ----------------------------------------------------------
# Install and load package for conditional inference trees
# ----------------------------------------------------------
install.packages("party")
library(party)

# ----------------------------------------------------------
# Train a conditional inference tree model
# ----------------------------------------------------------
fit <- ctree(Kyphosis ~ Age + Number + Start, data = kyphosis)

# ----------------------------------------------------------
# Plot the conditional inference tree
# ----------------------------------------------------------
plot(fit, main = "Conditional Inference Tree for Kyphosis")

# ----------------------------------------------------------
# Install and load package for Random Forest
# ----------------------------------------------------------
install.packages("randomForest")
library(randomForest)

# ----------------------------------------------------------
# Train a Random Forest model
# ----------------------------------------------------------
fit <- randomForest(Kyphosis ~ Age + Number + Start, data = kyphosis)

# ----------------------------------------------------------
# Print model summary
# ----------------------------------------------------------
print(fit)

# ----------------------------------------------------------
# Display variable importance scores
# ----------------------------------------------------------
importance(fit)

