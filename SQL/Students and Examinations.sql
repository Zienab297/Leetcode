SELECT st.student_id, st.student_name, 
        su.subject_name, COUNT(e.student_id) AS attended_exams
FROM students AS st 
CROSS JOIN subjects AS su
LEFT JOIN examinations AS e
ON st.student_id = e.student_id
AND e.subject_name = su.subject_name
GROUP BY st.student_id, st.student_name, su.subject_name
ORDER BY st.student_id;
