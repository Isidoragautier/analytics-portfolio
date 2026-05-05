# Loan Approval Prediction

**Tools:** Python, Pandas, Scikit-learn, Matplotlib, Seaborn
**Dataset:** Synthetic loan approval dataset (modified from Kaggle — Lorenzo Zoppelletto)
**Course:** COMP6200 Data Science, Macquarie University

## Business question
Can applicant attributes reliably predict loan approval? Which features matter most, and which model and distance metric perform best?

## What I did
### 1. Data cleaning and preprocessing
- Dropped `RiskScore` column (>50% missing values)
- Removed rows with missing `MaritalStatus` (categorical — row deletion rule applied)
- Imputed missing `Age` values with column mean (numerical — imputation rule applied)
- Deleted `ApplicationDate` as all values were unique (no statistical value)
- Applied one-hot encoding to all remaining categorical columns (21 dummy variables created)
- Converted `ApplicationDate` to a numeric days-since-oldest-date feature
- Note: dataset is imbalanced — only ~24% of loans are approved; F1 score used alongside accuracy

### 2. Logistic Regression model
- 80/20 train-test split (stratified by student ID seed)
- Accuracy: 88.2% on test set; F1: low due to class imbalance, precision and recall reported
- Applied RFE across 1–56 features — optimal performance reached at **15 features**
- Accuracy and F1 both peaked at 15 features; further features added no benefit

### 3. KNN classifier
- Used the 15 features identified by RFE; applied StandardScaler normalisation
- 1-NN baseline: 100% training accuracy (overfitting confirmed), lower test performance
- GridSearchCV with 5-fold cross-validation over K = 1–30 to find optimal K
- Compared three distance metrics: **Euclidean outperformed Manhattan and Cosine** on both accuracy and F1

## Key findings
- Logistic Regression achieved 88.2% accuracy; RFE reduced dimensionality from 56 to 15 features with no performance loss
- Euclidean KNN with optimal K outperformed the other distance metrics
- Class imbalance (~24% approval rate) required F1 evaluation to avoid misleading accuracy interpretation
- Top predictive features identified through RFE: CreditScore, Income, LoanDuration, Experience, MonthlyDebtPayments among others

## Skills demonstrated
Classification modelling, missing value strategy (deletion vs imputation), one-hot encoding, class imbalance handling, RFE feature selection, KNN distance metric comparison, grid search, cross-validation, model evaluation (accuracy, F1, precision, recall)

## Files
- `Loan_Approval_Classification.ipynb` — full analysis notebook
- `data/loan_approval.csv` — dataset

