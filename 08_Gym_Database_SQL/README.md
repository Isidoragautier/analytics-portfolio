# Gym Database Design & SQL Business Analysis

**Tools:** MySQL, MySQL Workbench  
**Dataset:** Synthetic gym data (700 members, 10 trainers, 5 classrooms, 152 class sessions)  
**Course:** BUSA8090 Database Management, Macquarie University  

---

## Business Question

How can a gym use a relational database and SQL analytics to optimise classroom usage, trainer workloads, revenue, and member retention across different membership plans?

---

## What I Did

### 1. Database Design
- Designed a fully normalised relational schema for a fictional gym, **Pulse Fitness**, using **Chen's ERD notation**
- Defined 7 entities: Member, Trainer, MembershipPlan, ClassType, ClassSession, Classroom, Enrollment, PersonalTrainingSession
- Applied referential integrity rules throughout: PKs from 1-side become FKs on the M-side
- Used **composite primary keys** for many-to-many junction tables (Enrollment, PersonalTrainingSession)
- Added domain constraint: `CHECK (PlanName IN ('Student Plan', 'Premium Plan', 'Basic Plan'))`

### 2. Data Generation & Import
- Generated 700+ member records using structured ChatGPT prompts tailored to business rules (e.g. student members must be under 25)
- Imported data via MySQL Workbench Table Data Import Wizard using pre-cleaned CSVs
- Ensured scheduling integrity: no trainer or classroom double-booked in the same time slot

### 3. Business Analysis (6 SQL Queries)

| # | Analysis | Key Metric |
|---|----------|------------|
| 1 | Classroom Utilisation | Avg daily hours used per room |
| 2 | Trainer Workload | Class hours + PT sessions per trainer |
| 3 | Trainer Revenue & Profit | PT revenue minus estimated payroll cost |
| 4 | Membership Plan Performance | Monthly revenue + retention rate per plan |
| 5 | Member Demographics & Service Preferences | Age/gender breakdown by plan, class, PT |
| 6 | Class Utilisation | Avg fill rate and zero-enrolment sessions per class type |

---

## Key Findings

- **Classrooms** are used on fewer than 27% of available days — significant capacity waste
- **Trainer T001** is the most profitable ($3,052 net), while **T005 and T007** are operating at a net loss
- **Premium Plan** generates the most revenue but has lower retention (79%) vs Basic Plan (92%)
- **Pilates** has the highest average class fill rate (21%) despite running only 8 sessions — strong case for expansion
- **Zumba** is the most scheduled class but has 35 zero-attendance sessions — overscheduled relative to demand
- **36–50 and 50+ age groups** dominate Premium Plan adoption and PT usage

---

## Skills Demonstrated

Relational database design, ERD (Chen's notation), normalisation, SQL DDL/DML, complex joins, subqueries, aggregation, business analytics, insight communication, data-driven recommendations

---

## Files

| File | Description |
|------|-------------|
| `schema_creation.sql` | Full CREATE TABLE statements with constraints and keys |
| `data_insertion.sql` | Sample INSERT statements for each table |
| `business_analysis_queries.sql` | All 6 business SQL queries with comments |
| `BUSA8090_Assignment1_Report.pdf` | Full report with ERD, query results, insights and recommendations |
