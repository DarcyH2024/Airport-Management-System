-- VIEW 2: Airports with more than 2 departing flights
CREATE OR REPLACE VIEW airport_flight_counts AS
SELECT 
    arrival_airport_id AS "Airport Code",
    COUNT(flight_id)  AS "Total Flights",
    MIN(arrival_time) AS "Earliest Arrival"
FROM flight
GROUP BY arrival_airport_id
HAVING COUNT(flight_id) > 2;

select * from airport_flight_counts;

SELECT *
FROM airport_flight_counts
WHERE "Total Flights" > 5
ORDER BY "Total Flights";

select * from flight;

-- Index
-- Indexes departure_airport_d to improve lookup speed
CREATE INDEX idx_flight_departure_airport
ON flight(departure_airport_id);

SELECT index_name, table_name
FROM user_indexes
WHERE table_name = 'FLIGHT';

