# Queensland Road Crash Visual Analysis

**Tools:** Python (Pandas), Tableau
**Dataset:** Queensland Government Open Data Portal — 300,000+ crash records (2001–2023)
**Course:** BUSA8090 Data Visualisation, Macquarie University

## Business question
What temporal, spatial, and severity patterns in Queensland road crashes can inform targeted road safety interventions?

## What I did
### 1. Data cleaning (Python)
- Removed 87,432 "Property Damage" records discontinued after 2010 to maintain time series consistency
- Standardised postcode field to string format; removed 1 unknown record
- Removed 376 records (0.12%) lacking latitude/longitude data
- Converted date fields to datetime and extracted year, month, and hour
- Engineered day-of-week and weekday/weekend features

### 2. Visualisations (Tableau — 9 charts)

**Figure 3: Crashes by Severity Over Time**
![Crashes by Severity Over Time](Screenshot%202024-07-31%20112811.png)

**Figure 4: Fatal Crash Casualties by Queensland Postcode**
![Fatal Crash Casualties Count by Queensland Post Code](Fatal%20Crash%20Casualties%20Count%20by%20Queensland%20Post%20Code.png)

**Figure 5: Top 10 Postcodes by Fatal Crash Casualties**
![Top 10 Postcodes by Fatal Crash Casualties](Top%2010%20Postcodes%20by%20Fatal%20Crash%20Casualties.png)

**Figure 7: Crashes by Severity by Hour**
![Crashes by Severity by Hour](Crashes%20by%20Severity%20by%20Hour.png)

**Figure 8: Crash Type Severity Distribution Across Top 10 Crash Causes**
![Crash Type Severity Distribution Across Top 10 Crash Causes](Crash%20Type%20Severity%20Distribution%20Across%20Top%2010%20Crash%20Causes.png)

**Figure 9: Hourly Crash Severity Proportions Normalised by Crash Volume**
![Hourly Crash Severity Proportions Normalized by Crash Volume](Hourly%20Crash%20Severity%20Proportions%20Normalized%20by%20Crash%20Volume.png)

> Figures 1, 2, and 6 are available in `Road_Crash_Report.pdf`

## Key findings
- Total crashes declined significantly since 2008 peak; fatalities remain stable
- Crash volume peaks July–August (mid-year); fatalities spread across all hours
- Postcode 4570 (Southern QLD) has the highest fatal casualty count (172)
- Head-on and off-carriageway crashes have the highest fatality proportions
- Crash severity peaks during commute hours (3–5pm) but fatal crashes occur throughout the day

## Ethical considerations
Consistent processing applied across all crash types. Incomplete records removed rather than imputed to avoid misleading safety conclusions. Visualisations designed to accurately represent severity proportions without distortion.

## Files
- `Data_Cleaning.ipynb` — Python data preparation notebook
- `Road_Crash_Report.pdf` — full written report with all 9 Tableau visualisations

