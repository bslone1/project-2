# Project-2
ETL project for NU data analytics bootcamp

## Project Proposal
Use the data sets below to create a database that allows users to identify hospital and providers in the US. The eventual goal of this relational database is to be used as an interface for users to access providers close to home and compare costs of hospital stays by DRG (Diagnosis Related Grouping). The database will provide information on:

* Hospitals in your area
* Providers in your area
* Cost/Payment (Medicare) by DRG
* Hospital volume trends

## Extract Data Utilized
The data used was extracted from cms.gov. A federal government website managed and paid for by the U.S. Centers for Medicare & Medicaid Services.

Medicare_Inpatient_Hospital_by_Provider_and_Service_2019
https://data.cms.gov/

## Transformation
Once the two datasets were selected and extracted, the data was transformed using Python and Jupyter Notebooks. Because the datasets were so large, we selected relevant columns for our questions and dropped the rest. The columns selected were renamed for readability and ease of access. The columns used in the transformation were: *fill in column names here*

After selecting and renaming columns, we joined the two datasets on hospital address. Only one dataset had the hospital location identification number, but both had the hospital street address.
## Load

## Outliers

## Next Steps
