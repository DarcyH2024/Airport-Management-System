-- Query 11
-- This query shows planes with and without a flight and departure time. Planes without flights appear as orphans/null.
SELECT p.plane_id AS "Plane ID", p.plane_model AS "Plane Model", 
        f.flight_id AS "Flight ID", f.departure_time AS "Departure Time"
FROM plane p
LEFT OUTER JOIN flight f
    ON p.plane_id = f.plane_id
ORDER BY p.plane_id;
