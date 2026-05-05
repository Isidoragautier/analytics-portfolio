# Queensland Road Crash Visual Analysis

**Tools:** Python (Pandas), Tableau  
**Dataset:** Queensland Government Open Data Portal — 300,000+ crash records (2001-2023)  
**Course:** BUSA8090 — Data Visualisation, Macquarie University  

## Business question
What temporal, spatial, and severity patterns in Queensland road crashes
can inform targeted road safety interventions?

## What I did
### 1. Data cleaning (Python)
- Removed 87,432 "Property Damage" records discontinued after 2010
  to maintain time series consistency
- Standardised postcode field to string format; removed 1 unknown record
- Removed 376 records (0.12%) lacking latitude/longitude data
- Converted date fields to datetime and extracted year, month, and hour

### 2. Visualisations (Tableau — 9 charts)
- Time series of total crashes 2001-2023 with trend line
- Monthly crash totals to identify seasonal patterns
- Multi-series crash severity over time (fatal, hospitalisation, medical, minor)
- Choropleth map of fatal crash casualties by Queensland postcode
- Top 10 high-risk postcodes bar chart
- Fatal crash time series for top 10 postcodes
- Stacked bar chart of crashes by severity and hour of day
- Severity distribution across top 10 crash types
- Normalised heatmap of crash severity proportions by hour

## Key findings
- Total crashes declined since 2008 peak; fatalities remain stable
- Crash volume peaks 3-5pm (commute hours) but fatalities spread across all hours
- Postcode 4570 (Southern QLD) has the highest fatal casualty count (172)
- Head-on and off-carriageway crashes have the highest fatality proportions
- Technology spending pattern... (road data — see report)

## Files
- `data_cleaning.ipynb` — Python data preparation notebook
- Tableau dashboards published at: [Tableau Public link — add when published]

## Ethical considerations
Consistent processing applied across all crash types. Incomplete records
removed rather than imputed to avoid misleading safety conclusions.
