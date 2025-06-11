CREATE DATABASE IF NOT EXISTS flightdb;

USE flightdb;

CREATE TABLE IF NOT EXISTS flights (
    flight_id INT AUTO_INCREMENT PRIMARY KEY,
    airline VARCHAR(50),
    origin_airport VARCHAR(10),
    destination_airport VARCHAR(10),
    departure_date DATE,
    departure_time TIME,
    arrival_delay INT,
    carrier_delay INT,
    weather_delay INT,
    nas_delay INT,
    security_delay INT,
    late_aircraft_delay INT
);