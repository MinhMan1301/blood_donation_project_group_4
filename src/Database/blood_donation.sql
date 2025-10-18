CREATE DATABASE blood_donation;
USE blood_donation;


-- Blood_Iventory
CREATE TABLE IF NOT EXISTS Blood_Inventory(
    unit_id INT AUTO_INCREMENT PRIMARY KEY,
    blood_type ENUM('A+', 'A-', 'B+', 'B-', 'AB+', 'AB-', 'O+', 'O-') NOT NULL,
    RH ENUM('+', '-') NOT NULL,
    volume_Litter DECIMAL(10,2) NOT NULL,
    donated_date DATE NOT NULL,
    expired_date DATE NOT NULL,
    status ENUM('available', 'used', 'expired') DEFAULT 'available',
    CONSTRAINT chk_dates CHECK (expired_date > donated_date)
);

