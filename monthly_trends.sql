--  "How have delays changed over time?"
USE flightdb;

SELECT
    YEAR(departure_date) AS year,
    MONTH(departure_date) AS month,
    COUNT(*) AS total_flights,
    ROUND(AVG(arrival_delay), 2) AS avg_arrival_delay,
    SUM(carrier_delay) AS total_carrier_delay,
    SUM(weather_delay) AS total_weather_delay,
    SUM(nas_delay) AS total_nas_delay,
    SUM(security_delay) AS total_security_delay,
    SUM(late_aircraft_delay) AS total_late_aircraft_delay
FROM flights
GROUP BY
    YEAR(departure_date),
    MONTH(departure_date)
ORDER BY year, month;