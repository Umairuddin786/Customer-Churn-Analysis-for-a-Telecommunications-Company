# Churn Analysis and Prediction

This project focuses on analyzing and predicting customer churn in the telecom sector. By leveraging SQL, DAX, and Python, we have built an analytical pipeline to extract insights, visualize churn trends, and predict high-risk customers likely to churn. The findings aim to assist the telecom company in creating targeted retention strategies.

---

## Table of Contents

- [Project Overview](#project-overview)
- [Dataset Description](#dataset-description)
- [Tools & Libraries](#tools--libraries)
- [Methodology](#methodology)
- [Key Findings](#key-findings)
- [Predictive Model](#predictive-model)
- [Conclusion](#conclusion)
- [Getting Started](#getting-started)

---

## Project Overview

The primary goal of this project is to:
1. Identify key factors contributing to customer churn.
2. Segment customers by churn risk using SQL and DAX analysis.
3. Predict potential churners using a Python-based predictive model.

## Dataset Description

The dataset contains customer demographic information, service usage details, and financial metrics, allowing us to analyze both churn trends and the financial impact of churn.

### Key Columns:
- **Customer Demographics**: Gender, Age, Marital Status
- **Service Details**: Internet Type, Device Protection, Online Backup, Contract Type, Payment Method
- **Financials**: Monthly Charges, Total Revenue, Refunds
- **Churn Metrics**: Tenure, Churn Category

## Tools & Libraries

- **SQL**: Data retrieval, joining, and preprocessing.
- **Power BI (DAX)**: Visualizations and dynamic metrics.
- **Python**: Modeling using libraries such as `pandas`, `scikit-learn`, and `matplotlib`.

## Methodology

1. **Data Collection and Cleaning**: Used SQL for cleaning, handling missing values, and engineering key features.
2. **Exploratory Data Analysis (EDA)**: Visualized churn insights using Power BI with DAX functions for metrics like churn rate by gender, contract, and tenure group.
3. **Financial Analysis**: Assessed churn impact on revenue, refunds, and average monthly charges.
4. **Churn Prediction**:
   - **Model Choice**: Logistic Regression for interpretable binary classification.
   - **Feature Engineering**: Selected features impacting churn, such as tenure, monthly charges, and service type.
   - **Model Evaluation**: Evaluated accuracy and recall to measure model performance.

## Key Findings

- **High Churn Segments**:
  - Month-to-Month contracts had the highest churn rate (77.16%).
  - Fiber Optic internet type had the highest churn among internet services.
  - Certain age groups, especially customers over 50, showed elevated churn.

- **Churn by Service**:
  - Customers without add-ons like Device Protection Plan and Online Security showed higher churn.
  
- **Financial Insights**:
  - Significant revenue loss is attributed to high churn segments, especially Month-to-Month customers.

## Predictive Model

Using Python, we built a Logistic Regression model to predict churn risk. The model was trained on customer attributes and service usage data, achieving an accuracy of approximately **85%**. This enables proactive customer retention strategies targeting predicted high-risk churners.

## Conclusion

This project successfully demonstrates the power of data-driven insights and predictive analytics in addressing customer churn. By targeting identified high-risk segments, telecom companies can implement retention strategies to reduce churn rates and protect revenue.

---

## Getting Started

### Prerequisites

- SQL environment (e.g., MySQL, PostgreSQL)
- Power BI for data visualization and analysis
- Python 3.x with the following libraries:
  - `pandas`, `numpy`, `matplotlib`, `scikit-learn`


