
CREATE DATABASE IF NOT EXISTS blood_donation;
USE blood_donation;

-- ACCOUNT TABLE

CREATE TABLE IF NOT EXISTS Account (
    user_id INT AUTO_INCREMENT PRIMARY KEY,
    email VARCHAR(255) UNIQUE NOT NULL,
    password VARCHAR(255) NOT NULL,
    role ENUM('ADMIN', 'DOCTOR', 'PATIENT', 'DONOR', 'BANK_STAFF') NOT NULL,
    is_active BOOLEAN DEFAULT TRUE,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB;

-- BLOOD_BANK TABLE

CREATE TABLE IF NOT EXISTS Blood_Bank (
    bank_id INT AUTO_INCREMENT PRIMARY KEY,
    bank_name VARCHAR(255) NOT NULL,
    contact_email VARCHAR(255) UNIQUE,
    contact_phone VARCHAR(15) NOT NULL,
    location VARCHAR(255) NOT NULL,
    capacity DECIMAL(10,2) CHECK (capacity > 0),
    assigned_doctor_id INT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (assigned_doctor_id) REFERENCES Account(user_id) ON DELETE SET NULL
) ENGINE=InnoDB;

-- BLOOD INVENTORY
CREATE TABLE IF NOT EXISTS Blood_Inventory(
    unit_id INT AUTO_INCREMENT PRIMARY KEY,
    blood_type ENUM('A+', 'A-', 'B+', 'B-', 'AB+', 'AB-', 'O+', 'O-') NOT NULL,
    RH ENUM('+', '-') NOT NULL,
    volume_Litter DECIMAL(10,2) NOT NULL,
    donated_date DATE NOT NULL,
    expired_date DATE NOT NULL,
    status ENUM('available', 'used', 'expired') DEFAULT 'available',
    CONSTRAINT chk_dates CHECK (expired_date > donated_date)
) ENGINE=InnoDB;

-- DONATION EVENT
CREATE TABLE IF NOT EXISTS Donation_Event (
    donation_id INT PRIMARY KEY,
    Date_event DATE NOT NULL,
    location VARCHAR(255) NOT NULL,
    volume_collected DECIMAL(10, 2) NOT NULL
)ENGINE=InnoDB;