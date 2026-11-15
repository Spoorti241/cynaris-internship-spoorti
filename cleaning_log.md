# Data Cleaning Log – Week 2 Day 4

## Dataset Information
- Dataset: retail_sales_dataset.csv
- Original rows: 1000
- Original columns: 9

## Data Quality Assessment

| Check | Before Cleaning | After Cleaning |
|---|---:|---:|
| Missing values | 0 | 0 |
| Duplicate rows | 0 | 0 |
| Outliers (IQR) | 0 | 0 |

## Cleaning Operations Performed

1. Loaded the retail sales dataset using Pandas.
2. Checked dataset dimensions, data types, and summary statistics.
3. Converted the Date column from string to datetime.
4. Standardised Gender and Product Category text values.
5. Checked missing values and demonstrated median and mode imputation.
6. Detected outliers using the IQR method.
7. No outliers were found, so no capping or deletion was required.
8. Saved the cleaned dataset as cleaned_dataset.csv.

## Final Result

- All 1000 records were preserved.
- No missing values or duplicate rows were found.
- Date and categorical text values were standardised.
- Cleaned dataset saved successfully.

## Conclusion

The retail sales dataset was already in good quality. Only data type conversion and text standardisation were necessary. No records needed to be deleted or modified to handle missing values or outliers.