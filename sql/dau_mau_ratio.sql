WITH dau AS (
    SELECT
        event_date,
        COUNT(DISTINCT user_id) AS dau
    FROM events
    GROUP BY event_date
),
mau AS (
    SELECT
        DATE_FORMAT(event_date, '%Y-%m-01') AS month,
        COUNT(DISTINCT user_id) AS mau
    FROM events
    GROUP BY DATE_FORMAT(event_date, '%Y-%m-01')
)
SELECT
    d.event_date,
    d.dau,
    m.mau,
    ROUND(d.dau / m.mau, 2) AS dau_mau_ratio -- Gives a clean, readable ratio
FROM dau d
JOIN mau m -- Links each day to its corresponding month/Enables daily DAU ÷ monthly MAU 
  ON DATE_FORMAT(d.event_date, '%Y-%m-01') = m.month
ORDER BY d.event_date;
