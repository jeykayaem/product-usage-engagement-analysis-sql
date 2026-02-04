WITH dau AS (
    SELECT
        event_date,
        DATE_FORMAT(event_date, '%Y-%m-01') AS month,
        COUNT(DISTINCT user_id) AS dau
    FROM events
    GROUP BY event_date, DATE_FORMAT(event_date, '%Y-%m-01')
),
mau AS (
    SELECT
        DATE_FORMAT(event_date, '%Y-%m-01') AS month,
        COUNT(DISTINCT user_id) AS mau
    FROM events
    GROUP BY DATE_FORMAT(event_date, '%Y-%m-01')
),
daily_stickiness AS (
    SELECT
        d.event_date,
        d.month,
        d.dau,
        m.mau,
        d.dau / m.mau AS dau_mau_ratio
    FROM dau d
    JOIN mau m
        ON d.month = m.month
)
SELECT
    month,
    ROUND(AVG(dau_mau_ratio), 2) AS avg_dau_mau_ratio
FROM daily_stickiness
GROUP BY month
ORDER BY month;
