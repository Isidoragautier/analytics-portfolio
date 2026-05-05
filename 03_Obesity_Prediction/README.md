# Predicting Obesity Levels Based on Eating Habits and Physical Condition

**Tools:** Python, Pandas, Scikit-learn, Matplotlib, Seaborn
**Dataset:** UCI Machine Learning Repository — Obesity Estimation dataset
**Course:** COMP6200 Data Science, Macquarie University

## Business question
Can eating habits and physical activity data reliably predict whether a person is obese? Which model and features perform best?

## What I did
### 1. Data preprocessing
- Loaded dataset (1,861 entries, no missing values)
- Applied IQR outlier removal on Age — removed 250 rows
- Created binary target variable `Obesity_Bool` (BMI > 30 = obese) by deriving BMI from height and weight, then dropping both columns to prevent data leakage
- Renamed columns for readability and applied label encoding to binary features
- Applied ordinal encoding to frequency-based features (never/sometimes/frequently/always)
- Applied one-hot encoding to transportation and other nominal features
- Dropped multicollinearity-prone columns after encoding

### 2. Models built

**Logistic Regression**
- Trained on 80/20 train-test split with StandardScaler normalisation
- Accuracy: 78% on test set; no significant overfitting observed
- Applied Recursive Feature Elimination (RFE) across 1–17 features to identify optimal subset
- RFE confirmed top predictors: family history of overweight, age, and frequency of high-calorie food consumption

**K-Nearest Neighbours (KNN)**
- Used GridSearchCV with 5-fold cross-validation across K = 1–50
- Best K identified via cross-validation; achieved 92% accuracy and F1 score of 0.89 on test set

**Decision Tree**
- Trained as a third comparison model
- Accuracy: 81%, F1: 0.81

## Key findings
- KNN achieved the highest accuracy (92%) and is the best-performing model for this dataset
- Logistic Regression (78%) showed no overfitting but underfits relative to KNN
- Decision Tree (81%) provides a balanced middle ground with interpretability
- Top predictors: family history of overweight, age, and high-calorie food consumption frequency

## Skills demonstrated
Supervised machine learning, binary target engineering, cross-validation, grid search, feature selection (RFE), ordinal and one-hot encoding, model comparison, confusion matrix interpretation

## Files
- `Obesity_Prediction_KNN_LogReg.ipynb` — full analysis notebook
- `data/ObesityDataSet.csv` — dataset

