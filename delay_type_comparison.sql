--“How do different delay types compare in frequency and impact?”
USE flightdb;

SELECT
    'Carrier Delay' AS delay_type,
    COUNT(*) AS total_flights,
    SUM(IFNULL(carrier_delay, 0)) AS total_delay_minutes,
    ROUND(
        AVG(IFNULL(carrier_delay, 0)),
        2
    ) AS avg_delay_minutes
FROM flights
UNION ALL
SELECT
    'Weather Delay' AS delay_type,
    COUNT(*) AS total_flights,
    SUM(IFNULL(weather_delay, 0)) AS total_delay_minutes,
    ROUND(
        AVG(IFNULL(weather_delay, 0)),
        2
    ) AS avg_delay_minutes
FROM flights
UNION ALL
SELECT
    'NAS Delay' AS delay_type,
    COUNT(*) AS total_flights,
    SUM(IFNULL(nas_delay, 0)) AS total_delay_minutes,
    ROUND(AVG(IFNULL(nas_delay, 0)), 2) AS avg_delay_minutes
FROM flights
UNION ALL
SELECT
    'Security Delay' AS delay_type,
    COUNT(*) AS total_flights,
    SUM(IFNULL(security_delay, 0)) AS total_delay_minutes,
    ROUND(
        AVG(IFNULL(security_delay, 0)),
        2
    ) AS avg_delay_minutes
FROM flights
UNION ALL
SELECT
    'Late Aircraft Delay' AS delay_type,
    COUNT(*) AS total_flights,
    SUM(
        IFNULL(late_aircraft_delay, 0)
    ) AS total_delay_minutes,
    ROUND(
        AVG(
            IFNULL(late_aircraft_delay, 0)
        ),
        2
    ) AS avg_delay_minutes
FROM flights;