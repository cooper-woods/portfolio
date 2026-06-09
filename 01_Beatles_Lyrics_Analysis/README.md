# Beatles Lyrics: Textual Analysis of Lennon vs. McCartney

## DSST389: Advanced Data Science | University of Richmond

### Project Overview

This project compares the lyrical styles of John Lennon and Paul McCartney by analyzing text from 200+ Beatles songs using natural language processing techniques.

### Research Question

Do Lennon and McCartney have distinctly different lyrical styles? What themes emerge in each songwriter's work?

### Dataset

- **Source:** Beatles song lyrics dataset

- **Size:** ~200 songs with songwriter attribution

- **Format:** CSV with columns: song, album, songwriter, lyrics, year

- **Time Period:** 1962-1970 (Beatles era)

### Methods

#### 1. Topic Modeling (LDA)

- Applied Latent Dirichlet Allocation with k=5 topics

- Fitted separate models for Lennon and McCartney

- Identified five distinct themes in each songwriter's work

#### 2. Sentiment Analysis

- Used AFINN lexicon (scores -5 to +5 per word)

- Calculated normalized sentiment scores per song

- Compared distributions across songwriters

#### 3. Temporal Analysis

- Analyzed how sentiment evolved 1962-1970

- Connected trends to album releases and band dynamics

### Key Findings

**Lennon's Characteristics:**

- Greater emotional variability and intensity

- Themes: vulnerability, existential questioning, philosophical messaging

- Sentiment ranges more broadly (more lows, more highs)

**McCartney's Characteristics:**

- More consistently upbeat and structured

- Themes: storytelling, character-driven narratives, emotional clarity

- More stable sentiment with positive bias

**Temporal Insights:**

- Both writers' sentiment dips during experimental period (1965-1967, Revolver/Sgt. Pepper's era)

- Convergence toward emotional neutrality by 1969

- Reflects band tensions and creative evolution

### Technical Implementation

**Libraries Used:**

- `tidytext` — Text tokenization and processing

- `topicmodels` — LDA implementation

- `tidyverse` — Data manipulation

- `ggplot2` — Visualization

**Key Code Chunks:**

1. Data loading and cleaning

2. Tokenization and stopword removal

3. Document-term matrix creation

4. LDA model fitting

5. Sentiment scoring and visualization

### Files in This Folder

- `Beatles_Lyrics_Analysis.qmd` — Source code (executable)

- `Beatles_Lyrics_Analysis.html` — Rendered output

- `Beatles_Lyrics_Analysis.pdf` — PDF version

- `README.md` — This file

### How to Run

1. Open `Beatles_Lyrics_Analysis.qmd` in RStudio

2. Click "Render" (or Ctrl+Shift+K)

3. Output will generate as HTML

### What I Learned

- How to implement advanced NLP techniques in R

- How to interpret topic models and validate them

- How to combine multiple analysis methods for deeper insights

- How quantitative analysis can validate qualitative understanding

### Skills Demonstrated

✅ Natural Language Processing

✅ Topic Modeling (LDA)

✅ Sentiment Analysis

✅ Data Visualization

✅ Statistical Interpretation

✅ Reproducible Research (Quarto)

✅ Scientific Writing

---

**For Data Analyst Roles:** Shows ability to extract insights from unstructured text and communicate findings clearly.

**For CS Master's Programs:** Demonstrates algorithmic understanding, statistical rigor, and reproducible research practices.
