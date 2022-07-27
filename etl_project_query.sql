-- Query to check successful load
SELECT * FROM joined_df;
SELECT * FROM hospital;
SELECT * FROM practitioner;

-- Join tables on street address
SELECT hospital."provider_CCN", hospital."DRG_desc", practitioner.provider_type
FROM hospital
INNER JOIN practitioner
ON hospital.street_address = practitioner.street_address;