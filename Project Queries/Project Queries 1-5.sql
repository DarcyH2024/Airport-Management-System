-- Query 1
-- Shows flights departing from Atlanta using a Boeing plane

SELECT
    f.flight_id AS "Flight ID",
    f.departure_time AS "Departure Time",
    f.gate AS "Gate",
    a.airport_name AS "Departure Airport",
    p.plane_model AS "Plane Model"
FROM flight f
JOIN airport a
    ON f.departure_airport_id = a.airport_id
JOIN plane p
    ON f.plane_id = p.plane_id
WHERE (a.airport_name = 'Hartsfield-Jax Atlanta International Airport'
    AND p.make = 'Boeing')
ORDER BY f.departure_time;

-- Query 2
-- This query returns all passengers whose first name starts with a letter entered b the user.
SELECT passenger_id AS "Passenger ID", first_name AS "First Name", last_name AS "Last Name" FROM passenger
WHERE first_name LIKE UPPER('&firstLetter%')
ORDER BY first_name, last_name;

-- Query 3
-- Shows crew members that are either a Pilot or Co-Pilot and limits results to first 5 rows

SELECT
    c.crew_id AS "Crew ID",
    c.first_name AS "First Name",
    c.last_name AS "Last Name",
    fc.role_on_flight AS "Role on Flight",
    fc.flight_id AS "Flight ID"
FROM crew c
JOIN flight_crew fc
    ON c.crew_id = fc.crew_id
WHERE fc.role_on_flight IN ('Pilot', 'Co-Pilot')
ORDER BY c.last_name
FETCH FIRST 5 ROWS ONLY;

-- Query 4
-- This query displays passenger names with padded formatting and extracts
-- The first letter of each passenger's last name for reporting purposes
SELECT
    p.passenger_id AS "Passenger ID",
    RPAD(p.first_name, 12, '.') AS "First Name (Padded)",
    LPAD(p.last_name, 15, '*') AS "Last Name (Padded)",
    SUBSTR(p.last_name, 1, 1) AS "Last Name Initial"
FROM passenger p
ORDER BY p.last_name;

-- Query 5
-- The query returns departure times then the Friday following the departure time.
-- Also returns whether flight ID is even or odd.
-- Results are ordered by the "Next Friday After Departure" in descending order
SELECT flight_id AS "Flight ID", departure_time AS "Departure Time",
NEXT_DAY(departure_time, 'Friday') AS "Next Friday After Departure",
MOD(flight_id, 2) AS flight_id_even_or_odd
FROM flight
ORDER BY 3 DESC;