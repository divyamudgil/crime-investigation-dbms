-- Query to get the name of a criminal with their history
SELECT p.name, h.hid
FROM Person p
JOIN Criminal c ON p.person_id = c.person_id
JOIN History h ON c.cid = h.cid
WHERE p.name = 'John Doe';

-- Query to find all crimes managed by a specific police station
SELECT c.crime_area, c.time
FROM Crime c
