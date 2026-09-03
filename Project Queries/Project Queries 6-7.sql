-- Query 6
-- Displays flight departure and arrival times formatted for readability
-- filtering flights after a specific date.
SELECT 
    flight_id AS "Flight ID",
    TO_CHAR(departure_time, 'MM/DD/YYYY HH24:MI') AS "Departure Time",
    TO_CHAR(arrival_time, 'MM/DD/YYYY HH24:MI') AS "Arrival Time",
    gate AS "Gate"
FROM flight
WHERE departure_time >= TO_DATE('03/18/2026', 'MM/DD/YYYY')
ORDER BY departure_time;

-- Query 7
-- The query cateorizes each plane as small, medium, or large based on seating capacity.
SELECT make AS "Make", plane_model AS "Model",
    CASE
        WHEN capacity < 100 THEN 'Small Plane'
        WHEN capacity BETWEEN 100 AND 200 THEN 'Medium Plane'
        WHEN capacity > 200 THEN 'Large Plane'
        ELSE 'Unknown'
    END AS "Capacity Category"
FROM plane
ORDER BY "Capacity Category";
