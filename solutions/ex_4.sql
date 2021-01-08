USE sql_intro;
SELECT 
 patient.id, disease.survival_rate
FROM 
    patient,
    disease 
WHERE 
 patient.disease = disease.name
 ORDER BY patient.id ASC