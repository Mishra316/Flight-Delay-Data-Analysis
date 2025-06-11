-- “Which airline performs best in minimizing delays?”
USE flightdb;

SELECT
    airline,
    COUNT(*) AS total_flights,
    ROUND(
        AVG(
            IFNULL(arrival_delay, 0) + IFNULL(carrier_delay, 0) + IFNULL(weather_delay, 0) + IFNULL(nas_delay, 0) + IFNULL(security_delay, 0) + IFNULL(late_aircraft_delay, 0)
        ),
        2
    ) AS avg_total_delay
FROM flights
GROUP BY
    airline
ORDER BY avg_total_delay ASC;