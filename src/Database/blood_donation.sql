-- DONATION TABLE
CREATE TABLE IF NOT EXISTS Donation_Event (
    donation_id INT AUTO_INCREMENT PRIMARY KEY,
    volume INT CHECK (volume > 0), 
    date DATE NOT NULL,
    location VARCHAR(255) NOT NULL
) ENGINE=InnoDB;

-- REQUEST TABLE
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
