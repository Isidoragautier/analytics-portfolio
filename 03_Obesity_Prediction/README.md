# Predicting Obesity Levels Based on Eating Habits and Physical Condition

**Tools:** Python, Pandas, Scikit-learn, Matplotlib, Seaborn  
**Dataset:** UCI Machine Learning Repository — Obesity Estimation dataset  
**Course:** Macquarie University portfolio project  

## Business question
Can eating habits and physical activity data reliably predict obesity
classification? Which model and features perform best?

## What I did
### 1. Data preprocessing
- Loaded and cleaned the dataset
- Applied encoding and transformations for categorical variables
- Split data into training and test sets

### 2. Models built
**K-Nearest Neighbours (KNN)**
- Used cross-validation to find optimal K
- Best performance at K = 4 with 92% accuracy

**Logistic Regression**
- Applied Recursive Feature Elimination (RFE) to identify key predictors
- Evaluated using accuracy, precision, recall, and F1 score
- Generated confusion matrices for each obesity class

## Key findings
- KNN achieved 92% accuracy at K = 4
- RFE identified the most predictive features for obesity classification
- Both models evaluated with full classification reports and confusion matrices

## Skills demonstrated
Supervised machine learning, cross-validation, feature selection (RFE),
model evaluation, confusion matrix interpretation, classification reporting

## Files
- Main analysis notebook (add filename when uploaded)
