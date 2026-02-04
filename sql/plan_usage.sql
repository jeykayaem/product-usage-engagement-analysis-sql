SELECT
    u.plan_type,
    COUNT(DISTINCT e.user_id) AS active_users
FROM events e
JOIN users u ON e.user_id = u.user_id
GROUP BY u.plan_type;
