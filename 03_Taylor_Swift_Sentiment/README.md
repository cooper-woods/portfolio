# Taylor Swift: Sentiment Analysis Across Albums

## DSST389: Advanced Data Science | University of Richmond

### Project Overview

I analyzed sentiment across Taylor Swift's complete discography (600+ songs, 10+ albums) using two different sentiment analysis methods: **AFINN** (continuous sentiment scores) and **Bing** (binary positive/negative). The analysis explores whether Reputation truly is Taylor's darkest album and how sentiment shifts with creative eras over 50+ years.

### Research Questions

1. Does Reputation have distinctly more negative sentiment than other Taylor Swift albums?

2. How has Taylor Swift's lyrical sentiment evolved across her career?

3. Do different sentiment analysis methods reveal different patterns?

### Dataset

- **Source:** Taylor Swift Complete Lyrics Corpus

- **Size:** 600+ songs across 10+ studio albums

- **Time Period:** 2006-2024 (entire career)

- **Albums:** Debut through Folklore era

- **Format:** Structured metadata (album, track, year) + lyrics text

### Methods

#### Sentiment Lexicon Comparison

1. **AFINN Lexicon**

   - Continuous sentiment scores: -5 (most negative) to +5 (most positive)

   - Per-word sentiment summed and normalized by song length

   - Better captures intensity of sentiment

   

2. **Bing Lexicon**

   - Binary classification: positive or negative

   - Words classified independently

   - Simpler, more intuitive interpretation

   - Used to classify songs as positive/neutral/negative

#### Temporal Analysis

- Grouped by album and year

- Tracked sentiment trends 2006-2024

- Connected trends to album themes and life events

#### Visualizations

- **Violin plots:** Show distribution of sentiment across albums

- **Box plots:** Show median and outliers

- **Line plots:** Show temporal trends

- **Stacked bar charts:** Show proportion of positive/negative/neutral songs

### Key Findings

1. **Reputation's Darkness:** Yes, confirmed! Reputation has lower average sentiment than most albums, consistent with its darker production and themes.

2. **Sentiment Evolution:**

   - **2006-2009 (Early albums):** High positive sentiment (Debut, Fearless)

   - **2010-2014 (Transition):** Dip in sentiment, exploring themes of heartbreak

   - **2014-2017 (Reputation era):** Most negative period, dark themes dominant

   - **2017-2020+ (Folklore forward):** Sentiment rebounds slightly, more introspective but less angry

3. **Lexicon Differences:**

   - AFINN captures nuance better; shows broader range

   - Bing is more binary; useful for classification but loses intensity information

### Technical Implementation

**Libraries Used:**

- `tidytext` — Sentiment lexicon access and joining

- `tidyverse` — Data manipulation and visualization

- `ggplot2` — Professional visualizations

- `scales` — Better axis formatting

**Key Analysis Steps:**

1. Tokenize all lyrics by song

2. Join with AFINN and Bing sentiment lexicons

3. Calculate sentiment by song (sum and normalize)

4. Aggregate by album and year

5. Create comparative visualizations

6. Interpret patterns in relation to album narratives

### Files in This Folder

- `Taylor_Swift_Sentiment.qmd` — Full source code (executable)

- `Taylor_Swift_Sentiment.html` — Rendered analysis

- `README.md` — This file

### How to Run

1. Ensure you have Taylor Swift lyrics data

2. Open `Taylor_Swift_Sentiment.qmd` in RStudio

3. Click **Render**

4. View interactive HTML output

### What I Learned

✅ **Sentiment Analysis:** Different lexicons reveal different aspects of text

✅ **Temporal Analysis:** How to track patterns over time

✅ **Domain Expertise:** Connecting quantitative findings to music context

✅ **Visualization:** Choosing appropriate plots for different data types

✅ **Nuance:** Recognition that single sentiment score can't capture everything

### Skills Demonstrated

- ✅ Sentiment Analysis (AFINN, Bing)

- ✅ Text Mining and NLP

- ✅ Time Series Visualization

- ✅ Comparative Analysis (lexicons, albums)

- ✅ Data Storytelling

- ✅ Domain Integration (music knowledge)

- ✅ Professional Visualization

### Portfolio Relevance

**For Data Analyst Roles:**

- Shows ability to work with text/sentiment data

- Demonstrates clear visualization and communication

- Illustrates how to choose analysis methods (lexicon selection)

- Shows storytelling ability (connecting data to narrative)

**For CS Master's Programs:**

- Demonstrates NLP fundamentals

- Shows understanding of different approaches to same problem

- Illustrates data exploration and hypothesis testing

---

*Project completed: March 2025*
