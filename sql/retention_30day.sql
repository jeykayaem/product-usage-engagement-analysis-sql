-- Finds first event date per user
-- MIN(event_date) ensures we capture their first interaction

WITH first_activity AS (
    SELECT
        user_id,
        MIN(event_date) AS first_date
    FROM events
    GROUP BY user_id
)
SELECT
    COUNT(DISTINCT e.user_id) AS retained_users
FROM events e
JOIN first_activity f
  ON e.user_id = f.user_id
WHERE e.event_date BETWEEN f.first_date
  AND DATE_ADD(f.first_date, INTERVAL 30 DAY);-- Counts users who came back at least once in their first 30 day
