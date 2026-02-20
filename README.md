# Airport Management System — Oracle SQL

This project is a relational database designed to manage core airport operations, including flights, airports, planes, passengers, tickets, and crew members. The system centralizes operational data to improve accuracy, consistency, and accessibility for queries and reporting.

## Features
- Relational schema with seven main entities  
- Primary/foreign key relationships modeling real airport operations  
- Support for flight schedules, gate assignments, ticketing, and crew management  
- Normalized structure to reduce redundancy and maintain data integrity  
- Implemented in Oracle 21c

## Schema Overview
- **AIRPORT:** airport details  
- **PASSENGER:** passenger information  
- **PLANE:** aircraft details  
- **TICKET:** links passengers to flights  
- **FLIGHT:** arrival/departure times, gates, airports, plane  
- **CREW:** crew member information  
- **FLIGHT_CREW:** crew assignments per flight

## Components
- Schema design  
- ERD  
- Table creation scripts  
- Sample queries and reports
