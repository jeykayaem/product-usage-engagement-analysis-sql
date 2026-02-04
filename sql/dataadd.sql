show databases;
CREATE DATABASE product_analytics;
USE product_analytics;
CREATE TABLE users (
    user_id INT PRIMARY KEY,
    signup_date DATE,
    plan_type VARCHAR(10)
);
CREATE TABLE events (
    user_id INT,
    event_type VARCHAR(20),
    event_date DATE,
    FOREIGN KEY (user_id) REFERENCES users(user_id)
);
SHOW VARIABLES LIKE 'secure_file_priv';
SELECT COUNT(*) FROM users;
SELECT COUNT(*) FROM events;
select * from events;
SELECT * from users;

