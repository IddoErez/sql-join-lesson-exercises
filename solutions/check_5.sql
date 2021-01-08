USE sql_intro;
SELECT 
 t.t_name
FROM 
    teacher AS t, -- also aliasing
    student AS s, 
    student_teacher AS st
WHERE 
 st.t_id = t.t_id AND 
 s.s_name = "Leo" AND 
 t.is_tenured = 1 

-- s.s_name = "Leo" AND
-- t.is_tenured IS TRUE AND
-- s.s_id = st.s_id AND
-- t.t_id = st.t_id;