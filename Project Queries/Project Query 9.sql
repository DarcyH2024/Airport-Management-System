-- Query 9
--This query shows only planes that have been assigned to more than one flight and counts how many flights they have been assigned
SELECT plane_id as "Plane ID", COUNT(flight_id) AS "Number of Flights"
FROM flight
GROUP BY plane_id
HAVING COUNT(*) > 1
ORDER BY plane_id;

