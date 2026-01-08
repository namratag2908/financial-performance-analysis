"""
Data Cleaning Script
Purpose: Clean raw financial data and prepare analysis-ready dataset
"""

import pandas as pd

df = pd.read_csv("data/raw_data/financial_data.csv")

print(df.head())
