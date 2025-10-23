## 🩸 Blood Donation & Hospital Resource Management System 🩸

A comprehensive platform designed to optimize the entire **blood donation lifecycle** and **resource management** within healthcare institutions. The system provides a rapid, transparent online channel, allowing donors to directly interact with hospitals, minimizing logistical friction, and ensuring that hospital blood inventory is managed and updated in real-time.

---

## 🚀 Key Features & Core Value Proposition

This project focuses on creating an efficient and humanitarian blood management process, connecting donors, hospitals, and blood banks seamlessly:

### 🔒 Primary Functions:

* **Donor & Patient Management:** Detailed profiles, health status tracking, and historical records for both donors and patients.
* **Blood Inventory Control:** Real-time tracking of blood units, categorized by blood type, RH factor, and expiration date across various Blood Banks.
* **Request Management:** Handling urgent blood requests from patients/doctors, connecting them directly with available inventory and matching donors.
* **Donation Event Coordination:** Management and scheduling of organized blood donation events, linked to specific Blood Banks.
* **User Roles & Security:** Dedicated accounts for Donors, Patients, and Doctors, ensuring secure, role-based access control.

### 🔑 Unique/Proposed Features (Highlights):

* **Geo-analysis System:** Visualizing donor density by blood type on a map to optimize the location and timing of blood drives.
* **Blood Traceability:** Allowing donors to view the status of their donated unit (anonymized) after it enters the inventory.

---

## 🏗️ System Architecture & Database Structure

The system is built on a robust architecture designed for data integrity and complex relationship management, crucial for medical applications.

### 1. 💻 Technology Stack

| Category | Technology & Tools | Role Description |
| :--- | :--- | :--- |
| **Backend & Core Logic** | **Java (Spring Boot)** | Building a robust, secure API and handling the complex business logic of the management system. |
| **Frontend (Interface)** | **HTML, CSS** | Developing a user-friendly and accessible interface for all user roles. |
| **Database (DB)** | **PostgreSQL & MySQL** | Used in combination to ensure flexibility and scalability in storing critical medical data. |
| **Source Control** | **GitHub** | Managing code versions, tracking issues, and supporting collaborative development. |
| **Design Tools** | **Figma, draw.io, ERD Plus** | Designing the UI/UX and creating the detailed data models (ERD/Schema). |

### 2. 📊 (Schema.png)

The relational database design features a normalized structure to handle key entities and their complex relationships:

* **Core Entities:** `patients`, `donors`, `doctor`, and `account` (for user authentication).
* **Logistics & Inventory:** `blood_inventory`, `blood_bank`, and `donation_event`.
* **Workflow:** `request` connects patients/doctors to the inventory.
* **Junction Tables (Many-to-Many):** `doctor_bloodbank` (Doctor working at Bank) and `donors_donationevent` (Donor enrolls in Event).

### 3. 📈 Entity-Relationship Diagram (ERD\_Cardinality\_ratio.drawio.png)

The ERD visualizes the conceptual model, highlighting the cardinality of relationships, ensuring data accuracy:

* ** 🧵 Key Relationships:**
    * `Account` has a **One-to-One** relationship with `Patients`, `Donors`, and `Doctor`.
    * `Doctor` can `manage` multiple `Blood_Bank`s **(1:N)** and `work_at` a `Blood_Bank` **(1:N)**.
    * A `Request` involves one `Patient` and is fulfilled by units from the `Blood_Inventory`.
    * `Donation_Event` involves multiple `Donors` and is `organize`d by a `Blood_Bank`.

---

## 💻 Installation and Startup Guide

To run this application in a local environment, follow these steps:

### 1. 🏴󠁲󠁯󠁩󠁦󠁿 Prerequisites

* [Java Development Kit (JDK) 11+](https://www.oracle.com/java/technologies/downloads/)
* [Apache Maven](https://maven.apache.org/download.cgi)
* A Database Management System (PostgreSQL or MySQL)
* [Git](https://git-scm.com/)

### 2. 🆙 Project Setup

1.  **Clone the Repository:**
    ```bash
    git clone [YOUR_REPOSITORY_LINK]
    cd blood-donation-system
    ```
2.  **Database Configuration:**
    * Create a new database instance.
    * Update the Spring Boot configuration file (`application.properties` or `application.yml`) with your DB connection details.
    ```properties
    # Example in application.properties
    spring.datasource.url=jdbc:postgresql://localhost:5432/blood_db
    spring.datasource.username=[username]
    spring.datasource.password=[password]
    spring.jpa.hibernate.ddl-auto=update # or none
    ```
3.  **Build and Run the Spring Boot Application (Backend):**
    ```bash
    mvn clean install
    mvn spring-boot:run
    ```
4.  **Access the Application:**
    The application should be available at `http://localhost:8080` (or the port you configured).

---

## 🤝 Contributing

You can contribute to this project by opening an **Issue** to report bugs or suggest new features. For information regarding our **team's task assignments and internal workflow**, please refer to the documentation located in the **report file** folder.

---

## 📄 License
**All Rights Reserved. For Reference Use Only.**

This project is primarily intended for **academic/portfolio reference and viewing purposes**. While the code is visible and can be downloaded, it is **not distributed under an Open Source License**. Standard copyright law applies.

* **You MAY** view and download the code for learning or reference.
* **You MAY NOT** use this code for commercial purposes, distribute modified versions, or deploy it publicly without explicit written permission from the project owner.

---

## 📞 Contact

* **Leader:** [Pham Nguyen Minh Man]
* **Support Email:** [phamminhman1312005@gmail.com]
* **GitHub:** [MinhMan1301](https://github.com/MinhMan1301)
