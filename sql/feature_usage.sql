-- Basic Feature Usage Count
-- Counts how many times each feature was used
SELECT
    event_type,
    COUNT(*) AS usage_count
FROM events
WHERE event_type LIKE 'feature%'
GROUP BY event_type
ORDER BY usage_count DESC;
-- Feature Usage by User Plan (Free vs Pro)
-- Shows adoption differences between user types
SELECT
    u.plan_type,
    e.event_type,
    COUNT(*) AS usage_count
FROM events e
JOIN users u ON e.user_id = u.user_id
WHERE e.event_type LIKE 'feature%'
GROUP BY u.plan_type, e.event_type
ORDER BY u.plan_type, usage_count DESC;
-- Monthly Feature Usage 
-- Shows feature adoption trends over time
SELECT
    DATE_FORMAT(event_date, '%Y-%m') AS month,
    event_type,
    COUNT(*) AS usage_count
FROM events
WHERE event_type LIKE 'feature%'
GROUP BY month, event_type
ORDER BY month, usage_count DESC;


