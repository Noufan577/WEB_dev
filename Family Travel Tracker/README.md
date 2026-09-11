# Family Travel Tracker

This project is a PostgreSQL-backed travel tracker that lets users track countries visited by different family members.

## Purpose

The aim of this app is to practice:
- building a full-stack web app with Express
- connecting to PostgreSQL with the pg package
- storing and querying relational data
- rendering dynamic pages with EJS
- creating user-specific data views

## Tech Stack
- Node.js
- Express.js
- PostgreSQL
- EJS
- CSS

## Features
- Choose a family member
- Add visited countries
- View each user’s country list
- Display a world map-based interface
- Create new family members with custom colors

## Database setup

Create the tables and seed data using the SQL in `schema.sql`.

```bash
psql -U postgres
CREATE DATABASE udemy;
\c udemy
\i schema.sql
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
This project is a practical database-driven app from the web development course and is a strong example of connecting frontend logic, backend routes, and SQL data together.
