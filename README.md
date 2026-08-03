# Data Science & GIS Portfolio
## Cooper Woods

Hello! I'm a data analyst and geospatial scientist with expertise in data analysis, spatial modeling, machine learning, natural language processing, and data visualization. This portfolio showcases projects spanning quantitative data science and geographic information systems.

---

## Featured Projects

### Data Science

#### 1. [Beatles Lyrics: Textual Analysis of Lennon vs. McCartney](./01_Beatles_Lyrics_Analysis/)
**Advanced NLP and Topic Modeling**

Using topic modeling (LDA) and sentiment analysis, I compared the lyrical styles of John Lennon and Paul McCartney across 200+ Beatles songs. The analysis reveals how Lennon's lyrics show greater emotional variability while McCartney's embrace narrative-driven storytelling.

- **Skills:** Natural Language Processing, Topic Modeling (LDA), Sentiment Analysis, Text Visualization
- **Methods:** LDA Topic Modeling, AFINN Sentiment Lexicon, Tidyverse, ggplot2
- **Dataset:** Complete Beatles discography (~200 songs)

[View Project](./01_Beatles_Lyrics_Analysis/) | [View Rendered Output](./01_Beatles_Lyrics_Analysis/Beatles_Lyrics_Analysis.html) | [Full Report](./01_Beatles_Lyrics_Analysis/Beatles_Lyrics_Analysis.html)

---

#### 2. [IMDb Movie Reviews: Text Classification with Machine Learning](./02_IMDb_Review_Classification/)
**Machine Learning & Model Comparison**

I classified 50,000 IMDb movie reviews as positive or negative using two approaches: tf-idf-based logistic regression and word embeddings (GloVe). Through cross-validation and statistical testing, I compared model performance and determined when each approach is most appropriate.

- **Skills:** Machine Learning, Text Classification, Statistical Testing, Model Evaluation
- **Methods:** TF-IDF, Word Embeddings (GloVe), Logistic Regression, Cross-Validation, Hyperparameter Tuning
- **Dataset:** Stanford Large Movie Review Dataset (50,000 reviews)

[View Project](./02_IMDb_Review_Classification/) | [View Rendered Output](./02_IMDb_Review_Classification/IMDb_Review_Classification.html) | [Full Report](./02_IMDb_Review_Classification/IMDb_Review_Classification.html)

---

#### 3. [Taylor Swift: Sentiment Analysis Across Albums](./03_Taylor_Swift_Sentiment/)
**Sentiment Analysis & Time Series**

I analyzed sentiment across Taylor Swift's 10+ studio albums using two sentiment lexicons (AFINN and Bing). The analysis explores how Reputation trends darker than other albums and how sentiment fluctuates with creative themes and life events.

- **Skills:** Sentiment Analysis, Text Mining, Data Visualization, Time Series Analysis
- **Methods:** AFINN & Bing Sentiment Lexicons, Violin & Box Plots, Temporal Visualization
- **Dataset:** Taylor Swift Complete Lyrics Corpus (~600 songs)

[View Project](./03_Taylor_Swift_Sentiment/) | [View Rendered Output](./03_Taylor_Swift_Sentiment/Taylor_Swift_Sentiment.html) | [Full Report](./03_Taylor_Swift_Sentiment/Taylor_Swift_Sentiment.html)

---

#### 4. [Peanut vs Almond Butter: Nutritional Analysis](./04_Peanut_vs_Almond_Butter/)
**Exploratory Data Analysis & Real-World Application**

Investigating nutritional alternatives for peanut allergy sufferers, I compared protein content and food processing scores across 32 peanut and almond butter brands. The analysis provides evidence-based recommendations for consumers seeking nutritional balance.

- **Skills:** Data Analysis, Exploratory Data Visualization, Statistical Summary, Consumer Insights
- **Methods:** Descriptive Statistics, Scatter Plots, Bar Charts with Error Bars, Data Filtering
- **Dataset:** True Food Database (32 products)
- **Collaborative Project:** Completed with Anush Margaryan

[View Project](./04_Peanut_vs_Almond_Butter/) | [View Rendered Output](./04_Peanut_vs_Almond_Butter/Peanut_vs_Almond_Butter.html) | [Full Report](./04_Peanut_vs_Almond_Butter/Peanut_vs_Almond_Butter.html)

---

### Geographic Information Systems & Spatial Analysis

#### 5. [Habitat Suitability Modeling for Endangered Species](./05_Habitat_Modeling/)
**Conservation Planning with Geospatial Analysis**

I developed a deterministic habitat suitability model for the endangered Bicknell's Thrush across New England, integrating occurrence records with elevation and land cover data. The model identifies 5,561 km² of suitable habitat and validates against 93.2% of documented bird sightings.

- **Skills:** Raster Analysis, Spatial Modeling, Habitat Suitability, Conservation Planning
- **Methods:** Raster Calculator (Conditional Logic), Spatial Join, Model Validation, Buffer Analysis
- **Datasets:** GBIF Species Occurrences, OpenTopography Elevation Model, NLCD Land Cover Classification
- **Tools:** ArcGIS Pro, Spatial Analysis

[View Project](./05_Habitat_Modeling/) | [Map Visualization](./05_Habitat_Modeling/05_Habitat_Modeling_Map1.jpg) | [Full Report](./05_Habitat_Modeling/05_Habitat_Modeling_Report.md)

---

#### 6. [Statistical Mapping & Geographically Weighted Regression](./06_Statistical_Mapping/)
**Advanced Spatial Statistics & Local Regression**

I analyzed educational attainment and Democratic voting patterns across U.S. counties using global (OLS) and local (GWR) regression approaches. Results reveal substantial geographic variation: education strongly predicts Democratic voting in the Northeast/West but shows weak or contradictory patterns in southern and rural regions.

- **Skills:** Spatial Statistics, Regression Modeling (OLS & GWR), Statistical Mapping, Spatial Autocorrelation
- **Methods:** Ordinary Least Squares, Geographically Weighted Regression, Local Bivariate Relationships, Moran's I Testing
- **Datasets:** American Community Survey (2017-2021), 2020 Presidential Election Results
- **Tools:** ArcGIS Pro, Spatial Analysis, Choropleth Mapping

[View Project](./06_Statistical_Mapping/) | [Map Visualizations](./06_Statistical_Mapping/) | [Full Report](./06_Statistical_Mapping/06_Statistical_Mapping_Report.md)

---

#### 7. [Network Analysis & Location-Allocation Optimization](./07_Network_Analysis/)
**Spatial Optimization & Route Planning**

I optimized pizza delivery operations in Giles County, Virginia using network analysis and location-allocation modeling. Analysis revealed 15% geographic coverage gaps and identified an optimal location for facility expansion that would capture 14% additional market demand.

- **Skills:** Network Analysis, Route Optimization, Service Area Analysis, Location-Allocation Modeling
- **Methods:** Network Dataset Construction, Route Finding, Service Area Generation, P-Median & Maximum Coverage Optimization
- **Datasets:** Virginia GIS Clearinghouse Road Network, Geocoded Facility Locations, Demand Points
- **Tools:** ArcGIS Pro, Network Analyst Extension

[View Project](./07_Network_Analysis/) | [Map Visualizations](./07_Network_Analysis/) | [Full Report](./07_Network_Analysis/07_Network_Analysis_Report.md)

---

## Skills & Technologies

**Programming & Data Science:**
- R (tidyverse, ggplot2, tidymodels, tidytext, dplyr)
- Python (foundational)
- Quarto & R Markdown
- Git & GitHub

**Analysis & Modeling:**
- Natural Language Processing (Topic Modeling, Sentiment Analysis, Text Classification)
- Machine Learning (Classification, Logistic Regression, Model Evaluation)
- Statistical Analysis (Hypothesis Testing, Cross-Validation, Paired t-tests)
- Spatial Statistics (OLS Regression, Geographically Weighted Regression, Autocorrelation Testing)

**Geographic Information Systems:**
- ArcGIS Pro (spatial analysis, modeling, cartography)
- Raster & Vector Analysis
- Network Analysis & Route Optimization
- Location-Allocation Modeling
- Habitat Suitability Modeling
- Statistical Mapping & Choropleth Design

**Data Visualization:**
- ggplot2 (R), ArcGIS Pro Cartography
- Interactive & Static Maps
- Time Series Visualization
- Exploratory Data Analysis Graphics

---

## About This Portfolio

This portfolio showcases analytical and technical projects from my undergraduate studies in data science and geography at the University of Richmond. Projects demonstrate proficiency in:

- **Data science:** from exploratory analysis through machine learning model development and evaluation
- **Spatial analysis:** from data integration through deterministic modeling and statistical inference
- **Communication:** translating complex analyses into clear visualizations and professional reports

Each project includes executable code, rendered outputs, and professional documentation, reflecting reproducible research practices and attention to clarity.

---

## How to Use This Portfolio

Each project folder contains:
- **Project README:** Overview, methodology, key findings
- **Professional Report:** Detailed analysis with insights and recommendations
- **Data Visualizations:** Maps or charts showcasing results
- **Source Code:** Executable scripts (`.qmd` for R projects, `.docx`/`.md` for GIS documentation)
- **Data Sources:** Complete citations and access information

**To explore a project:**
1. Click the project link above
2. Read the README for overview and context
3. View maps or visualizations for key results
4. Review the full report for detailed methodology and findings
5. Examine source code for technical implementation

---

## Contact & Connect

- **Email:** [cooper.woods@richmond.edu](mailto:cooper.woods@richmond.edu)
- **LinkedIn:** [linkedin.com/in/coopercwoods/](https://www.linkedin.com/in/coopercwoods/)
- **GitHub:** [github.com/cooper-woods](https://github.com/cooper-woods)

---

*Last Updated: August 2026*
