-- Query 14
-- Shows the names of each person and classifies them as either passenger or worker
SELECT first_name AS "Frist Name", last_name AS "Last Name", 'Passenger' AS "Role"
FROM passenger
UNION
SELECT first_name, last_name, 'Worker'
FROM crew
ORDER BY 2;

-- Query 15
-- Flights and tickets that share the same flight ID and occurence date
SELECT flight_id AS "Flight ID", TRUNC(arrival_time) AS "Date"
FROM flight
INTERSECT
SELECT flight_id, TRUNC(boarding_time)
FROM ticket
ORDER BY "Flight ID";