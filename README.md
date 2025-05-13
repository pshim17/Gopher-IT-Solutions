# 🎫 Gopher IT Solutions - Ticket Tracker

![Gophers at Work](/images/gophers_at_work.png)

Welcome to **Gopher IT Solutions**, a fun and functional Rails app for tracking IT support requests — powered by a team of imaginary forest gophers 🐿️.
gac
This app allows users to create, view, update, and list support tickets. It's built with Ruby on Rails and styled with simple HTML, Tailwind-style utilities, and inline CSS for clarity.

---

## 🚀 Features

- ✅ View all submitted tickets (`index`)
- ✅ View individual ticket details (`show`)
- ✅ Submit new tickets (`new`)
- ✅ Edit existing tickets (`edit`)
- 🪵 Stylized forest-themed interface

---

## 🛠 Setup Instructions

1. **Clone the repository**:

   ```bash
   git clone https://github.com/cowens87/gopher-it-solutions.git
   cd gopher-it-solutions
   bundle install
   rails db:create db:migrate db:seed
   rails server
   ```