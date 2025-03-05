CREATE TABLE patients(
patient_id SERIAL PRIMARY KEY,
patient_name VARCHAR(255) NOT NULL,
birth_date DATE NOT NULL,
phone VARCHAR(12) UNIQUE,
email VARCHAR(100) UNIQUE,
address TEXT,
insurance_number VARCHAR(50) UNIQUE,
registration_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE services(
service_id SERIAL PRIMARY KEY,
service_name VARCHAR(255) NOT NULL,
description TEXT,
price DECIMAL(10,2) NOT NULL,
duration_minutes INT NOT NULL
);

CREATE TABLE doctors(
doctor_id SERIAL PRIMARY KEY,
doctor_name VARCHAR(255) NOT NULL
specialization VARCHAR(255) NOT NULL,
phone VARCHAR(12) UNIQUE,
email VARCHAR(100) UNIQUE
);

CREATE TABLE appointments (
    id SERIAL PRIMARY KEY,
    patient_id INT REFERENCES patients(id) ON DELETE CASCADE,
    service_id INT REFERENCES services(id) ON DELETE RESTRICT,
    doctor_id INT REFERENCES doctors(id) ON DELETE SET NULL,
    appointment_date TIMESTAMP NOT NULL,
    status VARCHAR(20) CHECK (status IN ('Запланировано', 'Выполнено', 'Отменено')) DEFAULT 'Запланировано'
);

CREATE TABLE diagnostic_results (
id SERIAL PRIMARY KEY,
appointment_id INT REFERENCES appointments(id) ON DELETE CASCADE,
result_text TEXT,
file_url VARCHAR(255),
result_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE payments (
    id SERIAL PRIMARY KEY,
    patient_id INT REFERENCES patients(id) ON DELETE CASCADE,
    amount DECIMAL(10,2) NOT NULL,
    payment_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    status VARCHAR(20) CHECK (status IN ('Оплачено', 'Ожидание', 'Отменено')) DEFAULT 'Ожидание'
);
