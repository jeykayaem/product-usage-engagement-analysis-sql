-- Time to First Action Analysis
-- Measures onboarding effectiveness by calculating
-- days between signup and first event

-- BasicTimetoFirstAction
SELECT
    u.user_id,
    u.signup_date,
    MIN(e.event_date) AS first_event_date,
    DATEDIFF(MIN(e.event_date), u.signup_date) AS days_to_first_action
FROM users u
LEFT JOIN events e ON u.user_id = e.user_id
GROUP BY u.user_id, u.signup_date
ORDER BY days_to_first_action;

-- Average Time to First Action (for all users)
SELECT
    ROUND(AVG(DATEDIFF(e.first_event_date, u.signup_date)), 2) AS avg_days_to_first_action
FROM (
    SELECT
        user_id,
        MIN(event_date) AS first_event_date
    FROM events
    GROUP BY user_id
) e
JOIN users u ON e.user_id = u.user_id;

-- Average Time to First Action by Plan Type (Free vs Pro)
SELECT
    u.plan_type,
    ROUND(AVG(DATEDIFF(e.first_event_date, u.signup_date)), 2) AS avg_days_to_first_action
FROM (
    SELECT
        user_id,
        MIN(event_date) AS first_event_date
    FROM events
    GROUP BY user_id
) e
JOIN users u ON e.user_id = u.user_id
GROUP BY u.plan_type
ORDER BY avg_days_to_first_action;
