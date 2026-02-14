# 🚀 Computer Seekho — Enquiry & Student Lifecycle Management System

Computer Seekho is a full-stack enquiry management and student lifecycle platform designed for education institutes like CDAC. The system helps institutes efficiently manage course enquiries, follow-ups, admissions, partial payments, and student placements in a secure and scalable architecture.

---

## 🎯 Project Objective

This project simulates how real education institutes manage their student pipeline from initial enquiry to final placement. It reduces manual work, improves follow-up tracking, and provides better visibility into student progress.

---

## ✨ Key Features

### 🔹 Enquiry Management

* Capture student course enquiries
* Track enquiry status
* Auto-close enquiries after 3 days without follow-up

### 🔹 Admin Follow-up System

* Admin can contact enquirers via call/email/message
* Follow-up tracking dashboard
* Daily follow-up monitoring

### 🔹 Course & Batch Information

* View available courses
* Batch details and pricing
* Subject information

### 🔹 Partial Payment Support

* Students can pay fees partially
* Payment tracking system
* Automatic conversion from enquirer → student

### 🔹 Student Management

* Student record maintenance
* Course access after admission
* Progress tracking

### 🔹 Placement Tracking

* Track which student is placed
* Company-wise placement records
* Institute performance visibility

### 🔹 Secure Authentication

* JWT-based authentication
* Spring Security integration
* Role-based access

---

## 🛠️ Tech Stack

### 🎨 Frontend

* React.js
* JavaScript
* HTML5
* CSS3
* Axios
* React Router

### ⚙️ Backend

* Java
* Spring Boot
* Spring Security
* JWT Authentication
* REST APIs
* Maven

### 🗄️ Database

* MySQL
* Spring Data JPA (Hibernate)

### 🔧 Tools

* Git & GitHub
* VS Code
* Postman

---

## 🏗️ System Architecture

The project follows a layered architecture:

```
Controller Layer → Service Layer → Repository Layer → Database
```

This ensures:

* ✅ Clean separation of concerns
* ✅ Better maintainability
* ✅ Scalability
* ✅ Testability

---

## 📁 Project Structure

```
Computer-Seekho/
│
├── Back-end/
│   ├── ComputerSeekho.JAVA
│   └── ComputerSeekho.Net
│
├── Front-end/
│
├── MySQL.sql
└── README.md
```

---

## 🔄 Application Flow

1. User submits course enquiry
2. Admin performs follow-up within 3 days
3. Student confirms admission
4. Student makes partial/full payment
5. Enquirer converts to student
6. Student accesses course
7. Placement status is tracked

---

## ⚙️ How to Run Locally

### ✅ 1. Clone Repository

```bash
git clone https://github.com/Muhafij/Computer-Seekho-.git
cd Computer-Seekho-
```

---

### ✅ 2. Setup Database

* Create MySQL database
* Run:

```bash
MySQL.sql
```

---

### ✅ 3. Run Backend (Spring Boot)

```bash
cd Back-end/ComputerSeekho.JAVA
mvn spring-boot:run
```

Backend runs on:

```
http://localhost:8080
```

---

### ✅ 4. Run Frontend

```bash
cd Front-end
npm install
npm run dev
```

Frontend runs on:

```
http://localhost:5173
```

---

## 🔐 Security Highlights

* JWT token-based authentication
* Spring Security filter chain
* Protected REST endpoints
* Role-based admin access

---

## 🚀 Future Enhancements

* 🔐 Refresh token mechanism
* 📊 Advanced analytics dashboard
* ☁️ Cloud deployment (AWS/Azure)
* 📱 Mobile responsive improvements
* 🔔 Notification system

---

## 👨‍💻 Author

**Muhafij Naikawadi**

* GitHub: https://github.com/Muhafij
* LinkedIn: https://www.linkedin.com/in/muhafij39/

---

## ⭐ Support

If you found this project helpful, please give it a ⭐ on GitHub.
