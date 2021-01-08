USE sql_intro;
SELECT ethnicity.name, COUNT(*) FROM ethnicity, patient
WHERE patient.disease = "lettuce disease"
AND patient.ethnicity = ethnicity.id
GROUP BY ethnicity.name
