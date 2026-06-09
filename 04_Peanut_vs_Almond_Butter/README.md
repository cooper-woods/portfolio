# Nutritional Comparison: Peanut vs Almond Butter

## DSST389: Advanced Data Science | University of Richmond

### Project Overview

With ~4.5 million U.S. adults having peanut allergies, finding nutritionally comparable alternatives is important. I analyzed 32 brands of peanut and almond butter from the True Food database to compare **protein content** and **food processing scores** (FPro). The goal: provide evidence-based recommendations for allergy sufferers seeking nutritional balance.

### Research Questions

1. Does almond butter provide similar protein content to peanut butter?

2. Is almond butter less processed than peanut butter?

3. What trade-offs exist between processing and protein content?

4. What brands offer the best balance for allergy sufferers?

### Dataset

- **Source:** True Food Database (powered by Grocery DB)

- **Size:** 32 brands (11 peanut, 21 almond)

- **Variables:** Product name, protein content (g), FPro score (0-1), category

- **FPro Score:** Lower = less processed, Higher = more processed

- **Unit:** Protein measured per serving (grams)

### Methods

#### Descriptive Analysis

- Calculated mean and standard error for each butter type

- Created summary statistics by category

#### Visualization Approaches

1. **Scatter Plot with Trend Lines**

   - X-axis: Food Processing Score (FPro)

   - Y-axis: Protein Content (g)

   - Separate regression lines for each butter type

   - Product labels for identification

   - Shows relationship between processing and protein

2. **Bar Chart with Error Bars**

   - Compares mean FPro by butter type

   - Standard error bars show variability

   - Visual comparison of processing levels

#### Statistical Comparison

- Calculated mean and SE for protein and FPro

- Compared distributions between types

- Identified outliers and interesting products

### Key Findings

1. **Protein Content:** Peanut butter has inherently higher protein (~8g) compared to almond butter (~6g)

   - Peanuts are naturally protein-dense legumes

   - Almond butter requires supplementation to match (rare)

2. **Processing:** Almond butter generally has lower FPro scores (less processed)

   - Many almond butters are simple: almonds + salt

   - Peanut butters often have added oils, sugars

   - Trade-off: better protein vs. less processing

3. **Consumer Recommendations:**

   - **Seeking High Protein:** Choose peanut butter alternatives with minimal processing

   - **Seeking Low Processing:** Almond butter generally wins, accept slightly lower protein

   - **Best Balance:** Look for almond butter brands with added protein (whey, pea protein)

### Technical Implementation

**Libraries Used:**

- `tidyverse` — Data manipulation, visualization

- `ggplot2` — Professional graphics

- `ggrepel` — Label placement without overlap

- `dplyr` — Data filtering and summarization

**Key Steps:**

1. Load and clean butter data

2. Rename variables for clarity

3. Calculate summary statistics

4. Create scatter plot with regression lines

5. Create bar plot with error bars

6. Interpret findings

### Files in This Folder

- `Peanut_vs_Almond_Butter.qmd` — Full source code (executable)

- `Peanut_vs_Almond_Butter.html` — Rendered analysis

- `data/butters.csv` — Source dataset (optional to include)

- `README.md` — This file

### How to Run

1. Load `butters.csv` in your data folder

2. Open `Peanut_vs_Almond_Butter.qmd` in RStudio

3. Click **Render**

4. View interactive HTML output

### What I Learned

✅ **Real-World Problem Solving:** Taking a health question and using data to answer it

✅ **Exploratory Analysis:** Finding patterns without complex models

✅ **Visualization Selection:** Choosing appropriate plots for different questions

✅ **Error Bars:** Communicating uncertainty in estimates

✅ **Stakeholder Communication:** Making findings accessible to non-technical audience

✅ **Actionable Insights:** Turning analysis into consumer recommendations

### Skills Demonstrated

- ✅ Exploratory Data Analysis (EDA)

- ✅ Data Visualization (scatter, bar charts)

- ✅ Descriptive Statistics

- ✅ Data Filtering and Transformation

- ✅ Domain Integration (nutrition, allergies)

- ✅ Stakeholder Communication

- ✅ Real-World Application

### Portfolio Relevance

**For Data Analyst Roles:**

- Perfect example of "find a problem, use data to solve it"

- Shows practical business/consumer application

- Demonstrates clear communication to non-technical stakeholders

- Illustrates how simple analysis can drive decisions

**For CS Master's Programs:**

- Shows understanding of exploratory analysis

- Demonstrates ability to formulate and answer research questions

- Shows practical application of statistics

---

**Co-authored with:** Anush Margaryan

*Project completed: February 2025*
