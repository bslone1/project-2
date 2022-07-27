# Project-2
ETL project for NU data analytics bootcamp

## Project Proposal
Use the data sets below to create a database that allows users to identify hospital and providers in the US. The eventual goal of this relational database is to be used as an interface for users to access providers close to home and compare costs of hospital stays by DRG (Diagnosis Related Grouping). The database will provide information on:

* Hospitals in your area
* Providers in your area
* Average Cost/Payment (Medicare) by DRG
* Hospital volume trends

## Extract Data Utilized
The data used was extracted from cms.gov. A federal government website managed and paid for by the U.S. Centers for Medicare & Medicaid Services.

The Hospital Dataframe pulled from this dataset: Medicare Inpatient Hospital by Provider and Service 2019
Found here: https://data.cms.gov/provider-summary-by-type-of-service/medicare-inpatient-hospitals/medicare-inpatient-hospitals-by-provider-and-service

The Practitioner Dataframe also pulled from data.cms.gov, but using their API. 
API Documentation here: 
https://data.cms.gov/provider-summary-by-type-of-service/medicare-physician-other-practitioners/medicare-physician-other-practitioners-by-provider-and-service/api-docs 


## Transformation
After getting both datasets into their own dataframes, column names were edited for clarity and consistency, and the dataframes were joined into a single joined_df dataframe on the "street_address" column, using an outer join. Any null/NaN values were dropped from the dataframe so that rows from the hospital dataframe that were missing corresponsing practitioner data were dropped. Any duplicate columns on the joined dateframe were dropped, in this case there were two "state_abv" columns.  

String manipulation was performed on the joined dataframe columns to remove commas and apostrophes from numerical data. 

## Load
A relational database (SQL) was chosen in this case because the datasets are structured, there is not missing data, and the relationships between datapoints can be defined easily. 
As a result of the extraction and transformation of the dataset, people covered by Medicare seeking medical services can use this database to more easily compare costs per service type (DRG_code) and find/compare healthcare practitioners in their area by name and provider type. 

## Outliers

## Next Steps
