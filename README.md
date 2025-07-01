# 🏋️‍♀️ Sport Centre Database Project

This project involves designing and implementing a relational database for a **sports centre’s guided group exercise program**. It covers storing structured information about:

- Group exercise classes  
- Exercise categories  
- Instructors  
- Halls  
- Timetable details  

---

## 🎯 Project Objectives

- Learn the fundamentals of **database design** using **Entity-Relationship (ER) modeling**
- Map ER diagrams into **relational SQL schemas**
- Gain hands-on experience in managing and querying a database system

---

## 📚 Project Description

The goal is to model and store detailed information about group exercise activities within a sports centre environment.

### 📌 Data Requirements

#### 🧘 Group Exercise Classes
Each class includes:
- Unique ID (artificial, integer)
- Unique name
- Description
- Duration (minutes)
- Difficulty level (1–4)

#### 🗂️ Categories
- Unique category ID (integer)
- Unique category name  
- Each class belongs to one category  
- A category can include multiple classes  
> *Example:* A class called *Basics of Yoga* may fall under the category *Body Maintenance*.

#### 👩‍🏫 Instructors
- Unique ID (integer)
- Full name
- Date of birth  
- Instructors can teach multiple classes  
- Each class can be taught by multiple instructors

#### 🗓️ Timetable
Stores schedule info for classes:
- Day of the week
- Start and end time
- Maximum number of participants  
Each timetable entry:
- Is unique per class-day-time combination  
- Is taught by one instructor  
- Is held in one hall  

#### 🏟️ Halls
- Unique hall ID (integer)
- Unique hall name
- Capacity (number of places)  
A single hall can host multiple different classes.

---

## 📝 Notes

- The design follows **realistic participation constraints and cardinality ratios** where applicable.
- Certain real-world complexities like customer information, seasonal schedules (spring/summer/autumn), and exact class attendance have been deliberately simplified to keep the project manageable.

---

## 💻 Tech Stack

- **Database System**: SQL Lite  
- **Modeling**: ER Diagrams (with dbdiagram.io)  
- **Language**: SQL

---

## 📂 Repo Structure

```bash
├── table schemas.sql             #schema implementation
├── SQL database schema.png       # visual schema
├── ER Diagram.png                # visual ER model
├── Queries.sql                   # implemented queries
├── example_data                  # sample data entries
└── README.md
