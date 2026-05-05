# Critical Analysis — Australian Vehicle Prices

**Tools:** Python, Pandas, Matplotlib, Seaborn, Scikit-learn
**Dataset:** Australian vehicle price listings (16,734 records, 19 features)
**Course:** COMP6200 Data Science, Macquarie University

## What this project covers
This is a **code audit and correction** exercise. The task involved reviewing a provided data science notebook (authored by a third party), identifying errors in methodology and implementation, and writing corrected code with justifications for each fix.

## Errors identified and corrected

**Error 1 — Missing value strategy:** Original code dropped all rows with missing values, which would have discarded over 5% of the data in several columns. Corrected to use mode imputation for discrete variables (CylindersinEngine, Doors, Seats), median for skewed distributions (Displacement), and mean for normally distributed ones (FuelConsumption).

**Error 2 — Encoding choice:** Original code applied OrdinalEncoder to all categorical features including nominal ones (Brand, FuelType, BodyType etc.) which implies a non-existent order. Corrected to use one-hot encoding for nominal features.

**Error 3 — Feature selection:** Original code used FuelConsumption as one of the top 5 correlated features. After recalculating the correlation matrix, UsedCode (used vs new) is the correct 5th feature.

**Error 4 — Overfitting/underfitting check:** Original code only evaluated the linear regression model on the test set. Corrected to evaluate on both training and test sets to detect overfitting or underfitting.

**Error 5 — Hyperparameter tuning:** Original code set `max_depth=2` for the Decision Tree and claimed it was tuned to avoid underfitting, but no tuning was performed. Corrected using GridSearchCV over max_depth = 2–10 to find the optimal depth.

**Error 6 — Activation function:** Original MLP used `activation=identity`, which produces a linear transformation equivalent to linear regression. Corrected to `activation=relu` to enable non-linear relationship modelling.

## Model performance (with corrections applied)

| Model | Test R² | Notes |
|---|---|---|
| Linear Regression | Low | No overfitting; underfits the data |
| Decision Tree (tuned) | Higher | Best performer after hyperparameter tuning |
| MLP (relu) | Comparable to DTR | Non-linear relationships captured |

## Skills demonstrated
Code review, error identification, missing value strategy selection, feature encoding, correlation-based feature selection, overfitting/underfitting analysis, hyperparameter tuning (GridSearchCV), neural network configuration, critical thinking

## Files
- `critical_analysis.ipynb` — annotated notebook with errors marked and corrections implemented
- `data/australian_vehicle_prices.csv` — dataset

