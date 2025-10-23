## 🩸 Blood Donation & Hospital Resource Management System 🩸

A comprehensive management system built to optimize the entire **blood donation lifecycle**, from **aggregating and managing donor data** to **coordinating and processing blood resources** within hospitals. The core objective is to establish a transparent and **rapid online communication channel**, allowing donors to interact directly with hospitals, minimizing travel time, and ensuring hospitals have a real-time updated blood inventory.

---

## 🚀 Key Features & Core Value Proposition

This project focuses on creating an efficient and humanitarian blood management process:

### Primary Functions:

* **Donor Management:**
    * Detailed profile registration, including donation history, health status, and blood type.
    * Automated scheduling reminders for periodic donations, adhering to medical guidelines.
* **Hospital Blood Inventory Management:**
    * Hospitals can log, withdraw, and track blood stock by blood type and expiration date.
    * Automatic **Threshold Alerts** when the stock of a specific blood type falls below a safe level.
* **Direct & Rapid Interaction:**
    * **Online Blood Requests:** Hospitals can post urgent blood needs and instantly search for compatible donors within the system.
    * **Appointment Booking:** Donors can proactively schedule donation appointments via the website, reducing waiting times.
* **Donor Relationship Management:** Tracking and analyzing donor participation to build suitable recognition and loyalty programs.

### Unique/Proposed Features (Highlights):

* **Geo-analysis System:** Analyzes and displays a map of donor density by blood type in surrounding hospital areas, aiding in more effective blood drive organization decisions.
* **Blood Traceability:** Allows the donor to track how their blood unit was used (information is anonymized to protect the recipient's privacy).

---

## 🛠️ Technology Stack

| Category | Technology & Tools | Role Description |
| :--- | :--- | :--- |
| **Backend & Core Logic** | **Java (Spring Boot)** | Building a robust, secure API and handling the complex business logic of the management system. |
| **Frontend (Interface)** | **HTML, CSS** | Developing a user-friendly and accessible interface for both donors and hospital staff. |
| **Database (DB)** | **PostgreSQL & MySQL** | Used in combination to ensure flexibility and scalability in storing critical medical data. |
| **Source Control** | **GitHub** | Managing code versions, tracking issues, and supporting the collaborative development workflow. |
| **Design Tools** | **Figma, draw.io** | Designing the User Interface (UI/UX) and creating data flow/system architecture diagrams. |
| **Documentation & Modeling**| **Office 365, ERD Plus**| Developing technical documentation, user manuals, and the Entity-Relationship Diagram (ERD). |

---

## 💻 Installation and Startup Guide

To run this application in a local environment, follow these steps:

### 1. Prerequisites

* [Java Development Kit (JDK) 11+](https://www.oracle.com/java/technologies/downloads/)
* [Apache Maven](https://maven.apache.org/download.cgi) (for Spring Boot project management)
* A Database Management System (PostgreSQL or MySQL)
* [Git](https://git-scm.com/)

### 2. Project Setup

1.  **Clone the Repository:**
    ```bash
    git clone [YOUR_REPOSITORY_LINK]
    cd blood-donation-system
    ```
2.  **Database Configuration:**
    * Create a new database instance in PostgreSQL/MySQL.
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

You can contribute to this project by opening an Issue to report bugs or suggest new features. Please refer to the [CONTRIBUTING.md](CONTRIBUTING.md) file for detailed guidelines on submitting contributions via Pull Requests.

---

## 📄 License

This project is licensed under the **MIT License**.

---

## 📞 Contact

* **Your Name/Development Team:** [Name/Team]
* **Support Email:** [Your Email]
* **GitHub:** [@Your\_GitHub\_Username](YOUR\_GITHUB\_LINK)
