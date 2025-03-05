INSERT INTO patients (patient_id, patient_name, birth_date, phone, email)
VALUES 
(7, 'Алексей Смирнов', '1990-04-15', '+77011112233', 'alexey.smirnov@mail.com'),
(8, 'Екатерина Козлова', '1985-11-23', '+77021113344', 'ekaterina.kozlova@mail.com');

INSERT INTO patients (patient_id, patient_name, birth_date, phone, email)
VALUES 
(9, 'Максим Воронов', '1995-06-07', '+77031114455', 'maxim.voronov@mail.com'),
(10, 'Анна Семенова', '1992-08-30', '+77041115566', 'anna.semenova@mail.com');

INSERT INTO patients (patient_id, patient_name, birth_date, phone, email)
VALUES 
(11, 'Дмитрий Фролов', '1988-01-12', '+77051116677', 'dmitry.frolov@mail.com'),
(12, 'Ольга Захарова', '1997-03-19', '+77061117788', 'olga.zakharova@mail.com');

INSERT INTO patients (patient_id, patient_name, birth_date, phone, email)
VALUES 
(13, 'Иван Романов', '1983-12-05', '+77071118899', 'ivan.romanov@mail.com'),
(14, 'Марина Королёва', '1999-07-21', '+77081119900', 'marina.koroleva@mail.com');

INSERT INTO doctors (doctor_id, doctor_name, specialization)
VALUES 
(7, 'Владимир Кузнецов', 'Терапевт'),
(8, 'Татьяна Соловьева', 'Офтальмолог');

INSERT INTO patients (patient_id, patient_name, birth_date, phone, email)
VALUES 
(13, 'Иван Романов', '1983-12-05', '+77071118899', 'ivan.romanov@mail.com'),
(14, 'Марина Королёва', '1999-07-21', '+77081119900', 'marina.koroleva@mail.com'),
(15, 'Сергей Миронов', '1991-09-14', '+77091112233', 'sergey.mironov@mail.com'),
(16, 'Наталья Григорьева', '1986-02-28', '+77101113344', 'natalia.grigorieva@mail.com');

INSERT INTO appointments (id, patient_id, doctor_id, appointment_date, status)
VALUES 
(17, 7, 7, '2025-03-01 10:00:00', 'Запланировано'),
(18, 8, 7, '2025-03-02 11:30:00', 'Запланировано'),
(9, 9, 8, '2025-03-03 09:45:00', 'Запланировано'),
(10, 10, 8, '2025-03-04 14:00:00', 'Запланировано'),
(11, 11, 7, '2025-03-05 16:15:00', 'Запланировано'),
(12, 12, 8, '2025-03-06 12:45:00', 'Запланировано'),
(13, 13, 7, '2025-03-07 15:30:00', 'Запланировано'),
(14, 14, 8, '2025-03-08 13:00:00', 'Запланировано'),
(15, 15, 7, '2025-03-09 17:00:00', 'Запланировано'),
(16, 16, 8, '2025-03-10 08:30:00', 'Запланировано');

INSERT INTO services (service_id, service_name, description, price, duration_minutes)
VALUES
(7, 'Осмотр офтальмолога', 'Диагностика зрения', 4000.00, 30),
(8, 'Подбор очков и линз', 'Определение параметров зрения', 3000.00, 25);

INSERT INTO patients (patient_id, patient_name, birth_date, phone, email, address, insurance_number)
VALUES
(5, 'Алексей Смирнов', '1990-05-12', '7777777775', 'alexei.smirnov@mail.com', 'ул. Ленина, 10', 'INS-0005'),
(6, 'Елена Воробьева', '1985-09-25', '7777777776', 'elena.vorob@mail.com', 'ул. Гагарина, 15', 'INS-0006');

INSERT INTO services (service_id, service_name, description, price, duration_minutes)
VALUES
(5, 'Консультация терапевта (расширенная)', 'Полный осмотр, рекомендации по лечению', 5000.00, 40),
(6, 'Лечение терапевтическое', 'Комплексное лечение заболеваний внутренних органов', 8000.00, 60);

INSERT INTO doctors (doctor_id, doctor_name, specialization, phone, email)
VALUES
(5, 'Иван Петров', 'Терапевт', '7777777773', 'ivan.petrov@mail.com'),
(6, 'Мария Иванова', 'Офтальмолог', '7777777774', 'maria.ivanova@mail.com');

INSERT INTO appointments (id, patient_id, service_id, doctor_id, appointment_date, status)
VALUES
(5, 5, 5, 5, '2025-02-20 10:00:00', 'Запланировано'),
(6, 6, 6, 6, '2025-02-21 11:30:00', 'Запланировано');

INSERT INTO diagnostic_results (id, appointment_id, result_text, file_url, result_date)
VALUES
(5, 5, 'Рекомендовано сдать доп. анализы', 'files/result5.pdf', '2025-02-20 12:00:00'),
(6, 6, 'Диагноз подтверждён, назначено лечение', 'files/result6.pdf', '2025-02-21 13:00:00');

INSERT INTO payments (id, patient_id, amount, payment_date, status)
VALUES
(5, 5, 5000.00, '2025-02-20 12:30:00', 'Оплачено'),
(6, 6, 8000.00, '2025-02-21 13:30:00', 'Оплачено');

UPDATE appointments
SET service_id = 5
WHERE id IN (17, 11, 15);

UPDATE appointments
SET service_id = 6
WHERE id IN (18, 13);

UPDATE appointments
SET service_id = 7
WHERE id IN (9, 12, 16);

UPDATE appointments
SET service_id = 8
WHERE id IN (10, 14);
