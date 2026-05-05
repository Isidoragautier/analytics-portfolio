# Customer Shopping Behaviour Analysis

**Tools:** Python, Pandas, Matplotlib, Seaborn, SciPy
**Dataset:** Istanbul shopping mall transactions (99,000+ rows) — [Kaggle](https://www.kaggle.com/datasets/mehmettahiraslan/customer-shopping-dataset)
**Course:** COMP6200 Data Science, Macquarie University

## Business question
Which customer segments and categories should the shopping mall target for marketing campaigns, and what patterns exist in payment behaviour and sales trends?

## What I did
### 1. Data cleaning
- Removed 3 rows with missing price and payment method values
- Converted mixed-format invoice dates including Excel serial numbers to datetime
- Corrected typos in categorical fields (gender, category, payment method, shopping mall name)
- Removed 3 duplicate invoice records
- Applied IQR outlier detection by category — no price outliers found

### 2. Analysis
- Calculated total spending by category and identified top 3: Clothing, Shoes, Technology
- Built scatter plots and correlation analysis between age and spending across all categories
- Segmented customers into 7 age brackets and compared average spending
- Compared spending distribution between genders using box plots
- Analysed payment method proportions by category
- Created monthly and yearly sales trend line charts for the top 3 categories

## Key findings
- Clothing, Shoes, and Technology are the top 3 spending categories
- No significant correlation between age and spending in any category
- Spending is near-identical between genders across all categories
- Cash is the most common payment method; credit card accounts for ~35% of spending
- Clothing shows a declining sales trend; Technology remains stable
- Recommended marketing focus: Technology category and credit card holder campaigns

## Charts
- `Boxplot spending by gender and category.png` — spending distribution by gender across all categories
- `Monthly spending seasonality.png` — monthly sales trends for top 3 categories

## Skills demonstrated
Data cleaning, date parsing, IQR outlier detection, EDA, correlation analysis, customer segmentation, time series visualisation, business insight communication

## Files
- `Customer_shopping_file.ipynb` — full analysis notebook
- `customer_shopping_data.csv` — dataset

