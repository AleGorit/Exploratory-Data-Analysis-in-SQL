# HR Portfolio Project – SQL Data Cleaning, Analysis & Visualization

This project focuses on cleaning and exploring HR employee data using SQL. It is designed as part of a data analytics portfolio to demonstrate key skills in data wrangling, transformation, and exploratory data analysis (EDA) using Microsoft SQL Server.

##  Dataset

The data is stored in a table called `[Human_Resources]` within the database `HR_Portfolio_Project`. It includes employee information such as:

* Name, gender, race, job title
* Birthdate, term date
* Department, location, and state

##  Tools & Technologies

SSMS (SQL Server Management Studio)
Power BI


##  Data Cleaning Steps

1. **Dropped unnecessary columns** such as `id`.
2. **Standardized missing values** in the `termdate` field by replacing `NULL` with `'1900-01-01'` (as `'0000-00-00'` is invalid in SQL Server).
3. **Added a new column** `age` to calculate employee age using `birthdate`.
4. **Ensured logical consistency** by filtering active employees (non-terminated) and those aged 18 and above.

---

## 📊 Exploratory Data Analysis (EDA)

The analysis focused on understanding the composition of the workforce. Key queries included:

### 👥 Demographics

* **Gender distribution** of active employees
* **Race breakdown** across the organization
* **Age distribution** and age group segmentation

### 🌍 Location-Based Analysis

* Distribution of employees by **location (HQ vs remote)**
* Employee count by **city/state**

### 🏢 Departmental Breakdown

* **Gender representation** across departments
* **Job title** distribution
* Department-level summaries

---

## 📌 Key Insights

* A clear breakdown of diversity by **gender and race**
* Most employees fall within the **18–40 age group**
* Centralized vs remote workforce distribution
* Roles and departments with higher/lower gender representation


---

## 📈 Visualization

* Export cleaned data to Power BI visualization.
* Added KPIs to analyze hiring/termination trends.



