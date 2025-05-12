# 📚 LOB Exam Scheduler

A web-based scheduling system built with **Elixir** and **Phoenix LiveView** that allows administrators to assign subjects, rooms, and invigilators while automatically detecting conflicts. Students can log in to view their personalized exam timetables in real-time, with optional notifications for upcoming exams.

---

## 🚀 Features

- 👨‍🏫 Admin dashboard for managing subjects, rooms, students, and lecturers
- 🧠 Automatic conflict detection (room clashes, double-booked students or staff)
- 📅 Real-time timetable generation with Phoenix LiveView
- 🔔 Optional email or browser notifications before exam dates
- 🔐 Secure login for students and administrators
- 📊 Future: Export schedules (PDF/CSV), integrate calendar sync

---

## 🛠️ Tech Stack

- **Elixir & Phoenix Framework** – backend and real-time logic
- **Phoenix LiveView** – real-time UI without JavaScript
- **PostgreSQL** – relational database
- **Tailwind CSS** – lightweight UI styling
- **Oban** – background job scheduling (for notifications)
- **Swoosh** – email notifications

---

## 📦 Installation

1. **Clone the repo:**
   ```bash
   git clone https://github.com/HonoreNiyomen/lob-exam-scheduler.git
   cd lob-exam-scheduler
