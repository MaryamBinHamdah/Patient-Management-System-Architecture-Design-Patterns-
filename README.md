# 🏥 Patient Management System: Advanced OOAD & Design Patterns Framework
This repository contains the complete analysis, design, and implementation model for a comprehensive **Patient Management System (PMS)**. Developed as part of the "Object-Oriented Analysis and Design (CIS 3113)" course, this project demonstrates advanced software engineering principles, UML modeling, and design patterns.

---

## 🚀 Project Overview

The goal was to design a scalable and maintainable hospital management system. We followed an **Agile Development process** using the **Iterative and Incremental model**, ensuring a structured approach to complex requirements.

### Key Features:
- **Patient Management:** Automated registration and unique ID tracking.
- **Appointment System:** Real-time doctor availability checks and scheduling.
- **Admission Management:** Bed allocation and ward tracking.
- **Secure Payment Processing:** Support for Cash and Credit Card via state-based workflows.

---

## 🎨 Design Patterns Deep-Dive

To ensure a decoupled and maintainable system, we implemented several advanced design patterns:

| Pattern | The Problem | The Solution |
| :--- | :--- | :--- |
| **Facade** | Complexity in scheduling involving multiple classes. | Provided a single entry point (`SchedulingFacade`) to manage interactions. |
| **State** | Managing payment stages (Submission, Processing, Approval). | Isolated state logic into separate classes to eliminate complex if/else code. |
| **Singleton** | Risk of conflicting global settings or redundant objects. | Guaranteed a single instance of `SystemConfiguration` for consistent settings. |

---

## 🗺️ Project Roadmap (Agile Sprints)

| Sprint | Focus | Deliverables |
| :--- | :--- | :--- |
| **Sprint 1** | New Patient Registration | Use Case, Sequence Diagram, Patient Entity Factory. |
| **Sprint 2** | Appointment Scheduling | Facade Pattern Implementation, Doctor Availability Logic. |
| **Sprint 3** | Payment Processing | State Design Pattern, Bank Integration, ERD Schema. |

---

## 💡Roles & Key Learnings

My main responsibilities included:
*   **System Requirements:** Defining core functional and non-functional requirements.
*   **Design Patterns:** Designing the **State Pattern** for payment processing to ensure clean, scalable logic.
*   **Implementation Model:** Mapping the logical design to physical components and deployment servers.
*   **Database Design:** Creating the **ERD** and mapping entity classes to a normalized SQL schema.

---
**Domain Class Diagram**

![Domain Class Diagram](https://github.com/user-attachments/assets/ebf3f3c8-bb5f-4f19-9797-af3cabb79d5c )

**State Pattern Diagram**

![State Pattern Diagram](https://github.com/user-attachments/assets/c79f34d0-a87f-4fe0-953a-ec33bdd1bd66 )

**Deployment Diagram**

![Deployment Diagram](https://github.com/user-attachments/assets/beb1f11e-db9f-4639-89f1-c876e0562784 )

**Entity-Relationship Diagram (ERD)**

![Entity-Relationship Diagram (ERD)](https://github.com/user-attachments/assets/14f244db-8b97-49b4-a54e-ea227ee33ad1 )



---
## 📄 Project Files & Documentation

Explore the technical foundations of the project:

- **☕ Java Foundation:** [PMS Java Skeleton Code.java](JAVA/PMS%20Java%20Skeleton%20Code.java)
- **🗄️ Database Schema:** [PMS SQL Seed Script.sql](SQL/PMS%20SQL%20Seed%20Script.sql)
- **📘 Full Project Report:** [View Patient Management System Report (PDF)](Report/Patient-Management-System-Report.docx/Patient-Management-System-Report.pdf)

---
## 👥 The Team

This project was a successful collaboration between:

*   **Maryam BinHamdah** ([@MaryamBinHamdah](https://github.com/MaryamBinHamdah ))
*   **Hessa Khalfan** ([@Heskal](https://github.com/Heskal ))



Our teamwork was essential in tackling the diverse challenges of this project, from initial data exploration to the final model deployment.
