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
- **Figure 1:** Time series of total crashes 2001–2023 with trend line
- **Figure 2:** Total crashes by month to identify seasonal patterns
- **Figure 3:** Multi-series crash severity over time (fatal, hospitalisation, medical, minor) — `Crushes by Severity by Date.png`
- **Figure 4:** Choropleth map of fatal crash casualties by Queensland postcode — `Fatal Crash Casualties Count by Queensland Post Code.png`
- **Figure 5:** Top 10 postcodes by fatal crash casualties — `Top 10 Postcodes by Fatal Crash Casualties.png`
- **Figure 6:** Fatal crash casualties time series for top 10 high-risk postcodes
- **Figure 7:** Crashes by severity and hour of day — `Crashes by Severity by Hour.png`
- **Figure 8:** Severity distribution across top 10 crash types — `Crash Type Severity Distribution Across Top 10 Crash Causes.png`
- **Figure 9:** Normalised heatmap of hourly crash severity proportions — `Hourly Crash Severity Proportions Normalized by Crash Volume.png`

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

