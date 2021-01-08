USE sql_intro;

SELECT 
 s.s_name 
FROM 
    teacher AS t, -- also aliasing
    student AS s, 
    student_teacher AS st
WHERE 
 st.t_id = t.t_id AND  
 st.s_id = s.s_id 
 AND t.t_name = "FOSTER"

   