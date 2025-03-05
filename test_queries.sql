SELECT a.id, p.patient_name, a.status
FROM appointments a
JOIN patients p ON a.patient_id = p.patient_id
WHERE a.status = 'Запланировано';

SELECT 
d.doctor_name,    COUNT(a.id) AS total_appointments
FROM appointments a
JOIN doctors d ON a.doctor_id = d.doctor_id
GROUP BY d.doctor_name
HAVING COUNT(a.id) > 1;

SELECT 
    COUNT(*) AS total_appointments,
    AVG(s.price) AS average_service_price,
    SUM(p.amount) AS total_payments
FROM appointments a
JOIN services s ON a.service_id = s.service_id
JOIN payments p ON a.patient_id = p.patient_id;

SELECT     
COUNT(*) AS total_appointments,  
AVG(s.price) AS average_service_price,
    SUM(s.price) AS total_payments
FROM appointments a
JOIN services s ON a.service_id = s.service_id;

SELECT a.*
FROM appointments a
JOIN patients p ON a.patient_id = p.patient_id
JOIN services s ON a.service_id = s.service_id
WHERE 
    a.status = 'Запланировано' 
    AND a.appointment_date > NOW()
    AND s.service_id = 7;
