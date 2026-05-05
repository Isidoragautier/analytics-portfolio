# Coffee Sales MapReduce Analysis

**Tools:** Python, mrjob, MongoDB, pymongo, Matplotlib  
**Dataset:** Coffee shop transaction records (card-based purchases)  
**Course:** COMP6210 Big Data, Macquarie University  

---

## Business Question

Which coffee types are underperforming in total sales, and who are the highest-spending customers — and how do their purchasing patterns evolve month by month?

---

## What I Did

### Task 1 — Data Extraction & Cleaning
- Connected to a local MongoDB instance and queried the `coffee_sales` collection
- Filtered out cash transactions (no user ID available) to retain only card-based purchases
- Extracted and parsed datetime fields into structured day/month/year/time components
- Stored cleaned output to both a text file (`task1_1_output.txt`) and a new MongoDB collection (`coffee_extracted`)

### Task 2.1 — Bottom 3 Coffee Types by Total Sales
- Built a **two-step MapReduce job** using mrjob:
  - Step 1: Aggregated monthly and total sales per coffee type
  - Step 2: Ranked all coffee types and selected the bottom 3
- Reformatted monthly data chronologically and saved results to `task2_1_output.txt`
- Visualised monthly sales trends for the 3 lowest-performing types in a line chart

### Task 2.2 — Top 5 Customers by Total Spend
- Built a second **two-step MapReduce job**:
  - Step 1: Aggregated monthly and total spending per loyalty card user
  - Step 2: Ranked all customers and selected the top 5 spenders
- Aligned each customer's spending to a common time axis (filling missing months with `None`)
- Visualised monthly spend trends for all 5 customers in a multi-line chart

---

## Key Findings

- The three lowest-selling coffee types are **Espresso, Cocoa, and Cortado** — all showing flat or inconsistent monthly trends
- The top 5 customers (identified by last 4 digits of card: 0012, 0141, 0009, 0276, 0507) show volatile monthly spend — suggesting occasional high-value purchases rather than consistent loyalty
- Cocoa and Cortado have the lowest total revenue, making them candidates for menu review or promotional investment

---

## MapReduce Flow

```
Input (CSV lines)
    ↓
mapper_0: emit (coffee_type / user_id, (month, year, money))
    ↓
reducer_0: aggregate monthly totals + overall total per key
    ↓
mapper_1: emit (None, (key, aggregated_data))   ← forces single reducer
    ↓
reducer_1: sort by total → select bottom 3 / top 5 → reformat chronologically
    ↓
Output (key, [[year, month, sales], ...])
```

---

## Skills Demonstrated

Distributed data processing, MapReduce design patterns, MongoDB integration, datetime parsing, multi-step job orchestration, time series visualisation, business insight communication

---

## Files

| File | Description |
|------|-------------|
| `task1_1_extraction.py` | MongoDB connection, field extraction, cash filter, output to file + collection |
| `task1_2_total_sales.py` | Single-step MapReduce: total sales per coffee type |
| `task2_1_bottom_coffee.py` | Two-step MapReduce: bottom 3 coffee types with monthly breakdown |
| `task2_2_top_customers.py` | Two-step MapReduce: top 5 customers with monthly spend |
| `task2_1_plot.py` | Line chart: monthly sales for bottom 3 coffee types |
| `task2_2_plot.py` | Line chart: monthly spend for top 5 customers |
| `COMP6210_Assignment1_Report.pdf` | Full report with pseudo code, flowcharts, and results |
