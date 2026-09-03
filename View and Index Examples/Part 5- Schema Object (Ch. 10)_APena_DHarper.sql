--Amanda Pena & Darcy Harper
-- Part 5: Schema Object (Ch. 10)

--View 1
CREATE OR REPLACE VIEW view1_passenger_flights AS
SELECT 
    p.first_name,
    p.last_name,
    t.flight_id,
    t.boarding_group,
    f.gate
FROM passenger p
JOIN ticket t ON p.passenger_id = t.passenger_id
JOIN flight f ON t.flight_id = f.flight_id;

-- Full view
SELECT * FROM view1_passenger_flights;

-- Where clause
SELECT *
FROM view1_passenger_flights
WHERE boarding_group = 'A';


-- View 2
CREATE OR REPLACE VIEW view2_flight_counts AS
SELECT 
    flight_id,
    COUNT(passenger_id) AS total_passengers,
    COUNT(CASE WHEN has_upgraded_seating = 'Y' THEN 1 END) AS upgraded_passengers
FROM ticket
GROUP BY flight_id
HAVING COUNT(passenger_id) >= 1;

-- Full View 
SELECT * FROM view2_flight_counts;

-- Where Clause
SELECT *
FROM view2_flight_counts
WHERE total_passengers > 1;

-- Creating Index
CREATE INDEX idx_ticket_flight
ON ticket(flight_id);

SELECT index_name, table_name
FROM user_indexes
WHERE table_name = 'TICKET';