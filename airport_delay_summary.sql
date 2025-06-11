-- "Which airports have the most total delays?"
USE flightdb;

SELECT
    origin_airport,
    COUNT(*) AS total_flights,
    SUM(arrival_delay) AS total_arrival_delay,
    ROUND(AVG(arrival_delay), 2) AS avg_arrival_delay,
    SUM(carrier_delay) AS total_carrier_delay,
    SUM(weather_delay) AS total_weather_delay,
    SUM(nas_delay) AS total_nas_delay,
    SUM(security_delay) AS total_security_delay,
    SUM(late_aircraft_delay) AS total_late_aircraft_delay
FROM flights
GROUP BY
    origin_airport
ORDER BY total_arrival_delay DESC;