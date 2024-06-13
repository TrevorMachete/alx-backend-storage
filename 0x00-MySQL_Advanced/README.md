# 0x00. MySQL Advanced: We Are All Unique!

Welcome to the repository for the project "0x00. MySQL Advanced" This project focuses on advanced SQL techniques, including the creation of tables, triggers, stored procedures, and functions to manage and manipulate data efficiently in a MySQL database.

## Project Tasks

### 0. We Are All Unique!
Creation of a `users` table with attributes `id`, `email`, and `name`. Ensures uniqueness for `email` and sets `id` as the primary key.

### 1. In and Not Out
Enhancement of the `users` table by adding a `country` attribute with a predefined set of values.

### 2. Best Band Ever!
A SQL script that ranks country origins of bands based on the number of fans.

### 3. Old School Band
Listing of all bands with 'Glam rock' as their main style, ranked by longevity.

### 4. Buy Buy Buy
Creation of a trigger to adjust item quantities after a new order is placed.

### 5. Email Validation to Sent
A trigger that resets the `valid_email` attribute when an email is changed.

### 6. Add Bonus
A stored procedure called `AddBonus` that adds a new correction for a student.

### 7. Average Score
A stored procedure `ComputeAverageScoreForUser` that calculates and stores a student's average score.

### 8. Optimize Simple Search
Creation of an index to optimize searches based on the first letter of a name.

### 9. Optimize Search and Score
An index to optimize searches based on both the first letter of a name and the score.

### 10. Safe Divide
A function called `SafeDiv` that safely divides two numbers.

### 11. No Table for a Meeting
A view called `need_meeting` that lists students needing attention based on scores and meeting dates.

### 12. Average Weighted Score
An advanced stored procedure to compute and store the average weighted score for a student.

### 13. Average Weighted Score for All!
A stored procedure to compute and store the average weighted score for all students.

## Installation

To use these scripts, clone the repository and import the necessary SQL dumps before executing the scripts.

## Usage

Each script can be executed on any MySQL database. Ensure you have the necessary permissions and that the database is properly configured.

## License

This project is licensed under the MIT License - see the LICENSE file for details.

## Author

Trevor Machete - GitHub Profile
