# Permalist Project

This project is a to-do list app built with Express, EJS, and PostgreSQL. It demonstrates how a simple web app can store data in a database instead of keeping everything in memory.

## Purpose

The goal of this project is to practice:
- full-stack CRUD operations
- PostgreSQL database integration
- Express routing and form handling
- editing and deleting records
- server-rendered views with EJS

## Tech Stack
- Node.js
- Express.js
- PostgreSQL
- EJS
- CSS

## Features
- Add a new task
- Edit an existing task
- Delete a task
- View all tasks from the database
- Keep the app persistent across reloads

## Database setup

Create a database named `permalist` and run the SQL in `queries.sql`.

```sql
CREATE DATABASE permalist;
\c permalist
\i queries.sql
```

## Run locally

```bash
npm install
node solution.js
```

Then open:

```bash
http://localhost:3000
```

## Notes
This is a solid example of a real-world CRUD application and a key step in learning how backend logic connects with a database in a full-stack project.
