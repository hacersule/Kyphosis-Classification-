# Kyphosis Classification with Tree-Based Models (R)

This project applies tree-based machine learning methods to the Kyphosis dataset in R.
The goal is to explore interpretable models for clinical classification using simple
and reproducible code.

---

## Dataset
The Kyphosis dataset contains clinical information about pediatric patients after
spinal surgery.

**Target variable**
- Kyphosis (present / absent)

**Features**
- Age: age in months
- Number: number of vertebrae involved
- Start: starting vertebra level

---

## Models Used
This project includes three different tree-based approaches:

1. **Decision Tree (CART – rpart)**  
   Classical interpretable decision tree model.

2. **Conditional Inference Tree (ctree – party)**  
   Statistical tree model based on hypothesis testing.

3. **Random Forest**  
   Ensemble model used to evaluate variable importance and overall performance.

---

## Visual Outputs
Running the script generates **three visual models**:

1. Decision Tree for Kyphosis Classification  
2. Conditional Inference Tree for Kyphosis  
3. Fancy (colored) Decision Tree visualization

These plots help interpret how clinical features affect the prediction.

---

## How to Run

```r
source("kyphosis_ml_pipeline.R")

