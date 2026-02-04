-- MAU by Plan Type
SELECT
    DATE_FORMAT(e.event_date, '%Y-%m-01') AS month,
    u.plan_type,
    COUNT(DISTINCT e.user_id) AS mau
FROM events e
JOIN users u ON e.user_id = u.user_id
GROUP BY month, u.plan_type
ORDER BY month, u.plan_type;