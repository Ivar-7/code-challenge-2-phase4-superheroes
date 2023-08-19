# Heroes and Superpowers Tracker API

## Project Journey

This document outlines the steps I took to develop the Heroes and Superpowers Tracker API.

### Step 1: Project Setup

- Created a new Rails project.
- Established a private GitHub repository for version control.
- Added my teaching mentor as a contributor.
- Maintained regular commits to track progress.

### Step 2: Models and Migrations

- Defined model relationships:
  - `Hero` has many `Power`s through `HeroPower`.
  - `Power` has many `Hero`s through `HeroPower`.
  - `HeroPower` belongs to a `Hero` and a `Power`.
- Generated models and migrations.
- Established relationships within model files.
- Ran migrations to create necessary database tables.

### Step 3: Validations

- Implemented validations:
  - In `HeroPower` model: Ensured `strength` is among 'Strong', 'Weak', 'Average'.
  - In `Power` model: Ensured `description` is present and at least 20 characters long.

### Step 4: Routes and JSON Format

- Created routes for API endpoints with specific JSON formats.
- Configured routes:
  - `GET /heroes` - List of heroes.
  - `GET /heroes/:id` - Hero details with associated powers.
  - `GET /powers` - List of available powers.
  - `GET /powers/:id` - Power details.
  - `PATCH /powers/:id` - Update a power's description.
  - `POST /hero_powers` - Create a new `HeroPower`.

### Step 5: Testing and Iteration

- Conducted thorough testing to ensure functionality.
- Verified each route's correct JSON format.
- Iterated code based on testing outcomes.

## Conclusion

Through this journey, I successfully created the Heroes and Superpowers Tracker API.
