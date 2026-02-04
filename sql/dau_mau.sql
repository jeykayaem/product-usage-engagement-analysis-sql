-- Daily Active Users 
/*DAU (Daily Active Users):
Number of unique users active on a given day

MAU (Monthly Active Users):
Number of unique users active in a given month
*/
SELECT event_date, COUNT(DISTINCT user_id) AS dau
FROM events
GROUP BY event_date
ORDER BY event_date;
-- COUNT(DISTINCT user_id) → avoids double counting
-- event_date → defines the day
-- GROUP BY → aggregates per day

-- Monthly Active Users (MAU)
SELECT
    DATE_FORMAT(event_date, '%Y-%m-01') AS month,
    COUNT(DISTINCT user_id) AS monthly_active_users
FROM events
GROUP BY month
ORDER BY month;
-- DATE_FORMAT(event_date, '%Y-%m-01')
-- Converts all dates into the same month
-- COUNT(DISTINCT user_id) → Ensures each user is counted once per month

-- MAU by Plan Type
SELECT
    DATE_FORMAT(e.event_date, '%Y-%m-01') AS month,
    u.plan_type,
    COUNT(DISTINCT e.user_id) AS mau
FROM events e
JOIN users u ON e.user_id = u.user_id
GROUP BY month, u.plan_type
ORDER BY month, u.plan_type;


