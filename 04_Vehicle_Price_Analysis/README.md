# Vehicle Price Analysis

**Tools:** Python, Pandas, Matplotlib, Seaborn, Scikit-learn
**Dataset:** Indian car sales dataset (Kaggle)
**Course:** COMP6200 Data Science, Macquarie University

## What this project covers
Two-part analysis of a car sales dataset: exploratory data analysis followed by predictive regression modelling.

### Part 1 — Exploratory Data Analysis (`01_Car_Price_EDA.ipynb`)
- Removed rows with missing year values and fuel type "none" (454 rows removed total)
- Filtered outliers: retained first, second, and third owner cars with diesel or petrol fuel sold by dealers or individuals
- Produced descriptive statistics on km driven, selling price by seller type, and year by owner type
- Built box plots comparing selling price against fuel type, year, seller type, transmission, and owner history
- Key finding: newer cars, diesel fuel, automatic transmission, and dealer sales correlate with higher prices

### Part 2 — Predictive Modelling (`02_Car_Price_Modelling.ipynb`)
- Applied OrdinalEncoder to categorical features (fuel, seller type, owner)
- Built correlation heatmap to identify most and least correlated features with selling price
- Trained 4 linear regression models (models a–d) across two train/test splits (10%/90% and 90%/10%) using the 2 most and 2 least correlated features
- Evaluated models using MSE, RMSE, and R²
- Conducted a data ethics analysis on the importance of context in data visualisation

## Key findings
- Year of manufacture is the strongest positive predictor of selling price
- Model C (90% training data, most correlated features) achieved the best RMSE
- Models trained on more data consistently outperformed those with only 10% training data
- Least correlated features (km driven, owner count) produced significantly worse predictions

## Skills demonstrated
Data cleaning, outlier detection, EDA, correlation analysis, feature encoding, linear regression, train/test split comparison, model evaluation (MSE, RMSE, R²), data ethics analysis

## Files
- `01_Car_Price_EDA.ipynb` — exploratory data analysis
- `02_Car_Price_Modelling.ipynb` — predictive modelling
- `data/car_sell.csv` — raw dataset
- `data/car_sells_clean_data.csv` — cleaned dataset

