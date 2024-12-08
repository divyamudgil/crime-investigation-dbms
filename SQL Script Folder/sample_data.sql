-- Insert data into Person table
INSERT INTO Person (person_id, name, address, income) VALUES (1, 'John Doe', '123 Main St', '50000');
INSERT INTO Person (person_id, name, address, income) VALUES (2, 'Jane Smith', '456 Oak St', '55000');

-- Insert data into Criminal table
INSERT INTO Criminal (cid, hid, person_id) VALUES (1, 1, 1);
INSERT INTO Criminal (cid, hid, person_id) VALUES (2, 2, 2);

-- Insert data into Victim table
INSERT INTO Victim (victim_id, person_id) VALUES (1, 2);

-- Insert data into Crime table
INSERT INTO Crime (crime_id, crime_area, time, victim_id) VALUES (1, 'Downtown', '2024-12-01 12:30:00', 1);

-- Add more records for other tables similarly...
