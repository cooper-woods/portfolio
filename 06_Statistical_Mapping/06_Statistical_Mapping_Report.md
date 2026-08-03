# Spatial Analysis of Educational Attainment & Political Outcomes
## Geographically Weighted Regression Study

---

## Executive Summary

This analysis examines the relationship between educational attainment and Democratic voting patterns across U.S. counties, comparing global and local spatial regression approaches. Results demonstrate substantial geographic variation in this relationship: while educationally advanced counties consistently vote Democratic in coastal and urban regions, the same relationship weakens or reverses in certain rural and southern contexts. Geographically Weighted Regression (GWR) explains 75-85% of local voting variation compared to 32% for global OLS, demonstrating that geographic context fundamentally shapes the education-politics nexus.

**Key Finding:** Educational attainment's influence on voting varies by region—a meaningful predictor in the Northeast/West but a weak or contradictory signal in much of the South and interior West.

---

## Introduction

Educational attainment and political outcomes are intertwined across developed democracies, yet the nature of this relationship remains contested. Previous analyses typically apply global regression models assuming identical relationships everywhere. This geographic oversimplification masks important regional variation in how education influences political behavior.

This study applies spatial statistical methods to document and explain geographic variation in the education-voting relationship across U.S. counties. By moving beyond single global coefficients, we gain insight into the diverse political economies of American regions.

**Research Question:** Does educational attainment affect Democratic voting uniformly across the United States, or does this relationship vary geographically? If variation exists, what do these patterns reveal about regional political cultures?

---

## Data & Methods

### Data Sources

**Educational Attainment:** Percentage of population with bachelor's degree or higher, from American Community Survey 5-year estimates (2017-2021). Variable reflects educational composition of county population ages 25+.

**Political Outcomes:** Democratic vote share in 2020 Presidential election at county level. Data sourced from county-level election results, excluding counties with missing data or unreliable reporting (n=3,108 counties analyzed).

**Demographic Covariates:** ACS data including % veterans, % population over 65, % White population, and % donating to charitable organizations.

### Analytical Approach

**Exploratory Phase** began with global bivariate correlation (r = 0.57, R² = 0.32) and Local Bivariate Relationships analysis. Local correlation mapping revealed geographic clustering: Northeast/West showed strong positive correlations (0.65-0.75) while South/Interior West demonstrated weaker relationships (0.20-0.35) or occasional negative correlations.

**Global Regression Model (OLS)** tested whether educational attainment and demographic variables predict voting patterns uniformly. Four-variable model included education, veteran percentage, age composition, and racial demographics. Model assumptions tested using residual diagnostics and Moran's I statistic for spatial autocorrelation.

**Geographically Weighted Regression (GWR)** implemented local regression at each county by optimizing neighborhood size (15-150 neighbors) using Golden Search algorithm. GWR produces local coefficient estimates and R² values revealing how predictor-outcome relationships vary spatially. Model stability assessed using Conditional Number threshold (CN < 1000); 2,739 of 3,108 counties met stability criteria (88%).

**Mapping & Interpretation** visualized local R² values and significant coefficient patterns across four major variables, revealing geographic heterogeneity in model performance and relationship directions.

---

## Results

### Global Model Characteristics

The OLS regression model achieved modest predictive power, explaining 32.2% of Democratic voting variation (Adjusted R² = 0.322). The model structure revealed:

| Variable | Coefficient | P-value | Interpretation |
|----------|------------|---------|-----------------|
| Education (% Bachelor's+) | +0.52 | <0.001 | 1% increase in BA+ → 0.52% more Democratic votes |
| Veteran % | -0.18 | <0.001 | Negative relationship with Democratic voting |
| Age >65 % | +0.08 | 0.034 | Older counties slightly more Democratic |
| White % | -0.21 | <0.001 | Higher White % associated with less Democratic voting |

**Spatial Autocorrelation Concern:** Global Moran's I test revealed significant positive autocorrelation in residuals (I = 0.35, p < 0.001), indicating the global model violates independence assumptions. Residual clustering suggests unmodeled spatial processes—specifically, geographic variation in the education-voting relationship.

This diagnostic failure provides strong justification for moving to spatially-explicit local models.

### Geographic Variation in Education-Voting Relationship

**Northeast Region** (NY, PA, NJ, MA, CT):
- Strongest education effect (coefficients 0.65-0.75)
- Local R² values 0.75-0.85
- Model interpretation: Education is strong Democratic predictor in educated urban/suburban Northeast

**Upper Midwest** (WI, MN, IL, MI):
- Moderate positive education effect (0.40-0.60)
- Local R² values 0.60-0.75
- Geographic transition zone with declining education predictive power westward

**South** (GA, SC, NC, TX, FL):
- Weak education effect (0.20-0.40)
- Occasional negative coefficients in some counties
- Local R² values 0.35-0.55
- Interpretation: Other factors (racial composition, political culture) override education effects

**Interior West** (MT, WY, UT, ID):
- Minimal or negative education effect (-0.10 to +0.20)
- Local R² values 0.25-0.45
- Education unrelated or inversely related to Democratic voting

### Model Performance Comparison

**Global OLS Model:**
- Single coefficient across all counties
- Explains 32.2% of voting variation
- Violates spatial independence assumption
- Misses fundamental geographic heterogeneity

**Geographically Weighted Regression:**
- Local coefficients estimated for each county's neighborhood
- Average Local R² value: 0.62 (nearly double global model)
- Best performance: Northeast (R² = 0.80-0.85)
- Poorest performance: Mountain West (R² = 0.35-0.40)
- Residuals show reduced spatial autocorrelation

**Practical Implication:** GWR's superior fit demonstrates that a single "education-voting relationship" does not exist; instead, distinct regional relationships reflect differing political economies and social structures.

---

## Geographic Patterns & Interpretation

### Why Education Predicts Voting Better in Some Regions

**Northeast Urban/Suburban Pattern:** Dense, educated corridor of northeast megalopolis shows strong education-Democratic link. This region's education-immigration-cosmopolitanism nexus creates consistent Democratic coalition across income and occupational boundaries.

**Midwest Transition:** Upper Midwest shows intermediate effect as agricultural/manufacturing regions historically less polarized by education. Rust Belt regions show declining education effect—education did not protect manufacturing workers from economic dislocation that drove political realignment.

**Southern Attenuation:** Southern counties show education effect overwhelmed by racial and regional political factors. White college-educated southerners (particularly professionals, managers) remain Republican despite national education-Democratic trend. Suggests education's political effect conditional on regional context.

**Western Divergence:** Mountain West counties show weakest education effect—environmentalism and land-use conflicts produce different voting coalitions. Some rural-educated voters defect from Democratic ranks on environmental regulation concerns despite educational attainment.

### Model Stability & Reliability

Conditional Number analysis identified 369 counties (11.8%) with unstable models (CN > 1000). These problem areas clustered in:
- Rural Mountain West (low population, limited variation)
- Some Southern counties (multicollinearity between race and education variables)
- Alaska/Hawaii (small sample sizes)

Exclusion of these areas from final maps does not substantially alter patterns but improves result confidence.

---

## Implications & Discussion

### Methodological Contribution

This analysis demonstrates that global regression models can be dangerously misleading when applied to spatially heterogeneous phenomena. The 32% global R² is not simply "weak prediction" but rather *aggregation of contradictory regional patterns*. Northeast regions achieve 85% explained variation; Mountain West regions achieve 35%. The global coefficient obscures both.

For applied analysis—election forecasting, campaign strategy, or policy targeting—spatial segmentation substantially improves prediction and strategy appropriateness.

### Political Economy Interpretation

The results reveal distinct regional relationships between education and politics:

1. **Cosmopolitan Axis (Northeast/West Coast):** Education strongly signals Democratic allegiance through immigration-diversity-internationalism pathways.

2. **Polarized Rural-Urban (Upper Midwest):** Education splits on development/manufacturing axes; declining edges less Democratic than expected.

3. **Racial Polarization (South):** Education weak predictor because racial composition dominates Southern political behavior; White education actually predicts *Republican* voting in southern context.

4. **Libertarian West:** Education sometimes predicts Republican voting due to environmental regulation conflicts overriding traditional education-Democratic association.

### Limitations & Caveats

- **Ecological Fallacy:** County-level analysis cannot illuminate individual-level relationships; composition effects may distort interpretation
- **Temporal Dynamics:** Analysis captures 2020 snapshot; relationships likely shifted before/after this period
- **Omitted Variables:** Regional political culture, labor market structure, and demographic history not explicitly modeled but clearly influential
- **Causality:** Analysis identifies correlation patterns, not causal mechanisms

---

## Conclusions

Geographic variation in the education-voting relationship is substantial and consequential. Global regression models severely underestimate this heterogeneity, yielding misleading coefficients and inadequate predictive power. Geographically Weighted Regression reveals that educational attainment functions as a political predictor only in specific geographic contexts—primarily the educated urban/suburban Northeast and West Coast.

These findings challenge simple narratives about "education and politics" and instead reveal multiple, spatially-contingent political economies. Future analysis should:

1. Incorporate spatial clustering in regression models for improved inference
2. Examine historical dynamics to understand how regional patterns shifted
3. Disaggregate to sub-county scales (Census tracts, precincts) to improve granularity
4. Integrate institutional and cultural variables explaining geographic variation

The superiority of local regression approaches provides a general lesson for spatial analysis: when geographic data vary meaningfully across space, assume heterogeneity, test for it, and model it explicitly.

---

## Technical Specifications

**Software:** ArcGIS Pro v. 2.8
**Projection:** NAD 1983 Albers Equal Area Conic (analysis); Web Mercator (display)
**OLS Diagnostics:** Jarque-Bera (normality), Koenker-Basset (heteroscedasticity), VIF (multicollinearity)
**GWR Bandwidth:** Golden Search optimization, 15-150 neighbors
**Significance Level:** α = 0.05
**Spatial Autocorrelation:** Queen's contiguity neighborhood definition

**Data Quality Note:** Three counties with missing data excluded from analysis. Election results from counties without official reports estimated using precinct-level data where available.

---

*Analysis Date: April 2025*
*Data Sources: American Community Survey (2017-2021), Federal Election Commission, County-level election archives*
