USE sql_intro;
SELECT symptoms_family, COUNT(*) FROM patient
WHERE disease = "cabbage disease"
GROUP BY symptoms_family;