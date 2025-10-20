-- DONATION TABLE
CREATE TABLE IF NOT EXISTS Donation (
    donation_id INT AUTO_INCREMENT PRIMARY KEY,
    donor_id INT NOT NULL,
    bank_id INT NOT NULL,
    event_id INT NULL,
    inventory_id INT NULL,
    donation_date DATE NOT NULL,
    volume_Litter DECIMAL(10,2) CHECK (volume_Litter > 0),
    status ENUM('pending', 'approved', 'rejected', 'completed') DEFAULT 'pending',
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (donor_id) REFERENCES Account(user_id) ON DELETE CASCADE,
    FOREIGN KEY (bank_id) REFERENCES Blood_Bank(bank_id) ON DELETE CASCADE,
    FOREIGN KEY (event_id) REFERENCES Donation_Event(donation_id) ON DELETE SET NULL,
    FOREIGN KEY (inventory_id) REFERENCES Blood_Inventory(unit_id) ON DELETE SET NULL
) ENGINE=InnoDB;

-- REQUEST TABLE
CREATE TABLE IF NOT EXISTS Request (
    request_id INT AUTO_INCREMENT PRIMARY KEY,
    patient_id INT NOT NULL,
    bank_id INT NOT NULL,
    blood_type ENUM('A+', 'A-', 'B+', 'B-', 'AB+', 'AB-', 'O+', 'O-') NOT NULL,
    RH ENUM('+', '-') NOT NULL,
    volume_Litter DECIMAL(10,2) CHECK (volume_Litter > 0),
    request_date DATE NOT NULL,
    status ENUM('pending', 'approved', 'rejected', 'fulfilled', 'cancelled') DEFAULT 'pending',
    fulfilled_inventory_id INT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (patient_id) REFERENCES Account(user_id) ON DELETE CASCADE,
    FOREIGN KEY (bank_id) REFERENCES Blood_Bank(bank_id) ON DELETE CASCADE,
    FOREIGN KEY (fulfilled_inventory_id) REFERENCES Blood_Inventory(unit_id) ON DELETE SET NULL
) ENGINE=InnoDB;
