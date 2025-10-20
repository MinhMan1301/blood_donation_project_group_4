CREATE DATABASE blood_donation;
USE blood_donation;


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
    FOREIGN KEY (bank_id) REFERENCES Blood_Bank(bank_id),
) ENGINE=InnoDB;

-- BLOOD_BANK 
CREATE TABLE IF NOT EXISTS BLOOD_BANK ( 
  bank_id INT AUTO_INCREMENT PRIMARY KEY, 
  bank_name VARCHAR(255) NOT NULL, 
  location  VARCHAR(255) NOT NULL, 
   contact_phone VARCHAR(15),
  contact_email VARCHAR(100) 
  volume DECIMAL(10,2) DEFAULT 0,
 assigned_doctor INT,
  FOREIGN KEY (assigned_doctor) REFERENCES Doctor(doctor_id)
);

-- ACCOUNT 
CREATE TABLE IF NOT EXISTS ACCOUNT( 
  id INT AUTO_INCREMENT PRIMARY KEY, 
  email VARCHAR(255)  UNIQUE NOT NULL,
 password VARCHAR(255) NOT NULL, 
 role ENUM ('Patient', 'Doctor', 'BankStaff', 'Admin') NOT NULL,
is_active BOOLEAN DEFAULT TRUE,
time_created TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- request table
CREATE TABLE IF NOT EXISTS Request (
    request_id INT AUTO_INCREMENT PRIMARY KEY,
    patient_id INT NOT NULL,
    bank_id INT NOT NULL,
    blood_type ENUM('A+', 'A-', 'B+', 'B-', 'AB+', 'AB-', 'O+', 'O-') NOT NULL,
    quantity INT CHECK (quantity > 0),
    status ENUM('Pending', 'Approved', 'Fulfilled', 'Rejected') DEFAULT 'Pending',
    date_request DATE NOT NULL,
    date_response DATETIME NULL,
    fulfilled_inventory_id INT NULL,
    FOREIGN KEY (patient_id) REFERENCES Account(user_id) ON DELETE CASCADE,
    FOREIGN KEY (bank_id) REFERENCES Blood_Bank(bank_id) ON DELETE CASCADE,
    FOREIGN KEY (fulfilled_inventory_id) REFERENCES Blood_Inventory(unit_id) ON DELETE SET NULL
) ENGINE=InnoDB;