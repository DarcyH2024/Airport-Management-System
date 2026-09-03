-- Query 12
-- This query lists all flights that use the same plane model as the plane assigned to flight 3.
SELECT flight_id AS "Flight ID", arrival_time AS "Arrival Time", 
        departure_time AS "Departure Time", 
        gate AS "Gate", arrival_airport_id AS "Arrival Airport ID", 
        departure_airport_id AS "Departure Airport ID", 
        plane_id AS "Plane ID"
FROM flight
WHERE plane_id = (SELECT plane_id
                  FROM flight
                  WHERE flight_id = 3)
ORDER BY flight_id;