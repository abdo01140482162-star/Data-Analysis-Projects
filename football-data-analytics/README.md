# International Football Match Analytics & Outcome Prediction ⚽📊

An end-to-end data science project analyzing over 150 years of international football matches (from 1872 to 2026). The project covers extensive Exploratory Data Analysis (EDA), feature engineering, and a Machine Learning model using Random Forest to predict match outcomes.

This repository is designed to be a portfolio-ready project for GitHub.

---

## 📂 Project Structure

```
football-data-analytics/
│
├── data/
│   └── results.csv             # Raw dataset of international match results
│
├── notebooks/
│   └── football_analysis.ipynb # Main Jupyter Notebook containing the analysis & model
│
├── .gitignore                  # Git ignore rules for Python & Jupyter
├── requirements.txt            # Python library dependencies
└── README.md                   # Project documentation
```

---

## 🔍 Key Insights & Analysis Performed

### 1. Match Outcome & Home Advantage
- Visualized the distribution of match outcomes (Home Win, Away Win, Draw).
- Calculated that the **Home Advantage** is very real in international football, with home teams winning approximately **48.6%** of matches compared to away teams winning **28.3%**.

### 2. Goal Scoring Trends Over Time
- Analyzed the average number of goals scored per match from 1872 to 2026.
- Discovered historical trends, including higher scoring rates in the early 20th century and stabilization around **2.5 to 3.0 goals per match** in the modern era.

### 3. Top Active & Successful Teams
- Identified the top 10 most active international teams (led by Sweden, England, and Brazil).
- Determined the top 10 most successful teams based on total wins (led by Brazil).

### 4. Venue Impact (Neutral vs. Home Ground)
- Explored the impact of neutral ground matches on win percentages.
- Verified that playing on neutral venues (e.g., during World Cups) levels the playing field, significantly reducing the Home Win rate.

### 5. Goal Distribution & Historic Highs
- Analyzed the distribution of goals per match and extracted the top 5 highest-scoring matches in football history.

---

## 🤖 Machine Learning Model: Predicting Outcomes

- **Model:** Random Forest Classifier
- **Features Used:**
  - `home_team` (Label Encoded)
  - `away_team` (Label Encoded)
  - `tournament` (Label Encoded)
  - `neutral` (Binary)
  - `year` and `month` of the match
- **Target Variable:** `match_result` (Home Win, Away Win, Draw)
- **Evaluation:** Features importances were analyzed, showing that the home and away team identities along with the match year are the strongest predictors of international match outcomes.

---

## 🚀 How to Run the Project

### Prerequisites
Make sure you have Python installed.

### 1. Clone the Repository
```bash
git clone https://github.com/YOUR_USERNAME/football-data-analytics.git
cd football-data-analytics
```

### 2. Install Dependencies
```bash
pip install -r requirements.txt
```

### 3. Run the Jupyter Notebook
Start Jupyter Notebook or open it in VS Code:
```bash
jupyter notebook notebooks/football_analysis.ipynb
```
Run all cells to regenerate the visualizations and train the machine learning model.
