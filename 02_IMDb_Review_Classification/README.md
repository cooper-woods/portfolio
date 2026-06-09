# IMDb Movie Reviews: Text Classification with Machine Learning
## DSST389: Advanced Data Science | University of Richmond

### Project Overview
This project classifies 50,000 IMDb movie reviews as positive or negative using two machine learning approaches: TF-IDF logistic regression and GloVe word embeddings with logistic regression. Through cross-validation and statistical testing, the project rigorously compares both methods and identifies when each is most appropriate.

### Research Questions
1. Can we accurately classify movie review sentiment from raw text?
2. Does TF-IDF or word embeddings better capture sentiment in reviews?
3. When should each approach be used in practice?

### Dataset
- **Source:** Stanford Large Movie Review Dataset
- **Size:** 50,000 labeled reviews
- **Balance:** 25,000 positive, 25,000 negative
- **Split:** 80% training / 20% test (stratified by sentiment)

### Methods

#### 1. TF-IDF + Logistic Regression
- Tokenized text, removed stopwords, kept top 100 terms
- Created TF-IDF feature matrix from training data
- Fit logistic regression classifier as interpretable baseline

#### 2. GloVe Word Embeddings + Logistic Regression
- Mapped tokens to 300-dimension pre-trained GloVe vectors
- Applied L1 regularization (Lasso) to reduce overfitting
- Grid search over 20 penalty values with 5-fold cross-validation

#### 3. Model Comparison
- Evaluated both models on held-out test set
- Applied paired t-test on prediction correctness
- Determined whether performance difference is statistically significant

### Key Findings

**TF-IDF Performance:**
- Achieved 76.2% accuracy on the test set
- Captures word importance specific to movie review vocabulary
- Strong signal words like "excellent," "boring," and "terrible" drive accuracy

**GloVe Embeddings Performance:**
- Achieved 66.5% accuracy on the test set
- General-purpose vectors don't reflect domain-specific sentiment patterns
- Better suited for tasks requiring semantic generalization across topics

**Model Comparison Insights:**
- TF-IDF outperformed embeddings by ~10 percentage points
- Difference was statistically significant (paired t-test, p < 0.05)
- With abundant labeled data and clear domain vocabulary, simpler methods often win

### Technical Implementation

**Libraries Used:**
- `tidymodels` — Unified ML workflow and pipeline structure
- `textrecipes` — Text preprocessing within model recipes
- `glmnet` — Regularized logistic regression (L1/Lasso)
- `tidytext` — Tokenization and stopword removal
- `ggplot2` — Visualization

**Key Code Chunks:**
1. Data loading and stratified train/test split
2. Recipe creation (preprocessing pipeline)
3. TF-IDF model specification and fitting
4. GloVe embedding lookup and model fitting
5. Cross-validation and hyperparameter tuning
6. Statistical comparison (paired t-test)

### Files in This Folder
- `IMDb_Review_Classification.qmd` — Source code (executable)
- `IMDb_Review_Classification.html` — Rendered output
- `README.md` — This file

### How to Run
1. Open `IMDb_Review_Classification.qmd` in RStudio
2. Ensure required packages are installed (code handles this automatically)
3. Click "Render" (or Ctrl+Shift+K)
4. Output will generate as HTML

### What I Learned
- How to build end-to-end ML pipelines using tidymodels
- How to compare text representation methods (TF-IDF vs. embeddings)
- How to use cross-validation and hyperparameter tuning properly
- How to validate model comparisons with statistical significance testing
- That simpler methods can outperform complex ones with the right data

### Skills Demonstrated
✅ Machine Learning (Classification)
✅ Text Feature Engineering (TF-IDF, Word Embeddings)
✅ Cross-Validation & Hyperparameter Tuning
✅ Statistical Hypothesis Testing
✅ Model Evaluation & Comparison
✅ Reproducible Research (Quarto)
✅ Scientific Writing

---

**For Data Analyst Roles:** Shows ability to evaluate multiple approaches, communicate model performance clearly, and make evidence-based recommendations.

**For CS Master's Programs:** Demonstrates ML fundamentals, statistical rigor (cross-validation + significance testing), and deep understanding of text representation methods.

---

**Co-authored with:** Amaree Walker

*Project completed: April 2025*
