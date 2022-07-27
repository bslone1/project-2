DROP TABLE IF EXISTS joined_df;
DROP TABLE IF EXISTS practitioner;
DROP TABLE IF EXISTS hospital;
CREATE TABLE practitioner(
    index INT,
    "NPI" INT NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    first_name VARCHAR(11),
    street_address VARCHAR(34) NOT NULL,
    provider_type VARCHAR(45) NOT NULL,
    state_abv VARCHAR(2) NOT NULL
);

CREATE TABLE hospital(
   index INT,
   "provider_CCN" INTEGER  NOT NULL,
   org_name VARCHAR(50) NOT NULL,
   street_address VARCHAR(44) NOT NULL,
   city VARCHAR(20) NOT NULL,
   state_abv VARCHAR(2) NOT NULL,
   "state_FIPS" INTEGER  NOT NULL,
   zip_code INTEGER  NOT NULL,
   "RUCA" NUMERIC(4,1) NOT NULL,
   "RUCA_desc" VARCHAR(100) NOT NULL,
   "DRG_code"INTEGER  NOT NULL,
   "DRG_desc"VARCHAR(68) NOT NULL,
   total_discharges VARCHAR(5) NOT NULL,
   avg_submitted_covered_charges VARCHAR(13) NOT NULL,
   avg_total_payment_amnt VARCHAR(11) NOT NULL,
   avg_medicare_payment_amnt VARCHAR(11) NOT NULL
);

CREATE TABLE joined_df(
index INT,
"provider_CCN" VARCHAR,
org_name VARCHAR,
street_address VARCHAR,
city VARCHAR,
"state_FIPS" INT,
zip_code VARCHAR,
"RUCA" INT,
"RUCA_desc" VARCHAR,
"DRG_code" INT,
"DRG_desc" VARCHAR,
"total_discharges" INT,
"avg_submitted_covered_charges" VARCHAR,
"avg_total_payment_amnt" VARCHAR,
"avg_medicare_payment_amnt" VARCHAR,
"NPI" VARCHAR,
last_name VARCHAR,
first_name VARCHAR,
provider_type VARCHAR,
"state_abvP" VARCHAR
);

