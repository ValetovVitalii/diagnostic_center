CREATE INDEX idx_patient_phone ON patients(phone);
CREATE INDEX idx_patient_email ON patients(email);

CREATE INDEX idx_doctor_phone ON doctors(phone);
CREATE INDEX idx_doctor_email ON doctors(email);
CREATE INDEX idx_doctor_specialization ON doctors(specialization);

CREATE INDEX idx_appointment_patient ON appointments(patient_id);
CREATE INDEX idx_appointment_doctor ON appointments(doctor_id);
CREATE INDEX idx_appointment_service ON appointments(service_id);
CREATE INDEX idx_appointment_date ON appointments(appointment_date);
CREATE INDEX idx_payment_patient ON payments(patient_id);
CREATE INDEX idx_payment_status ON payments(status);
CREATE INDEX idx_payment_date ON payments(payment_date);*/

EXPLAIN ANALYZE SELECT * FROM patients WHERE phone like '%+7';
EXPLAIN ANALYZE SELECT * FROM appointments WHERE appointment_date BETWEEN '2024-01-01' AND '2025-04-01';
