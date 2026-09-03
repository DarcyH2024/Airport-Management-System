--QUERY 10
-- This query shows each passenger along with their flight details using an INNER JOIN

SELECT
    p.passenger_id AS "Passenger ID",
    p.first_name || ' ' || p.last_name AS "Passenger Name",
    t.ticket_id AS "Ticket ID",
    f.flight_id AS "Flight ID",
    f.departure_time AS "Departure Time",
    f.arrival_time AS "Arrival Time"
FROM passenger p
INNER JOIN ticket t
    ON p.passenger_id = t.passenger_id
INNER JOIN flight f
    ON t.flight_id = f.flight_id
ORDER BY f.departure_time;
