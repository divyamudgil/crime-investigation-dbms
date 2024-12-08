-- Creating Person table
CREATE TABLE Person (
    person_id INT PRIMARY KEY,
    name VARCHAR(50),
    address VARCHAR(100),
    income VARCHAR(20)
);

-- Creating Criminal table, which is related to Person
CREATE TABLE Criminal (
    cid INT PRIMARY KEY,
    hid INT,
    person_id INT,
    FOREIGN KEY (person_id) REFERENCES Person(person_id)
);

-- Creating Victim table, which is related to Person
CREATE TABLE Victim (
    victim_id INT PRIMARY KEY,
    person_id INT,
    FOREIGN KEY (person_id) REFERENCES Person(person_id)
);

-- Creating Crime table
CREATE TABLE Crime (
    crime_id INT PRIMARY KEY,
    crime_area VARCHAR(50),
    time DATETIME,
    victim_id INT,
    FOREIGN KEY (victim_id) REFERENCES Victim(victim_id)
);

-- Creating Evidence table
CREATE TABLE Evidence (
    eid INT PRIMARY KEY,
    cid INT, -- Criminal ID
    e_type VARCHAR(50),
    e_details TEXT,
    FOREIGN KEY (cid) REFERENCES Criminal(cid)
);

-- Creating History table to keep records of previous crimes
CREATE TABLE History (
    hid INT PRIMARY KEY,
    cid INT, -- Criminal ID
    FOREIGN KEY (cid) REFERENCES Criminal(cid)
);

-- Creating Testimony table, linked to Victim and Crime
CREATE TABLE Testimony (
    tid INT PRIMARY KEY,
    victim_id INT,
    crime_id INT,
    t_date Date, 
    details TEXT,
    FOREIGN KEY (victim_id) REFERENCES Victim(victim_id),
    FOREIGN KEY (crime_id) REFERENCES Crime(crime_id)
);

-- Creating Detective table
CREATE TABLE Detective (
    detective_id INT PRIMARY KEY,
    d_name VARCHAR(50),
    assigned_to INT,
    FOREIGN KEY (assigned_to) REFERENCES Crime(crime_id)
);

-- Creating PoliceStation table
CREATE TABLE PoliceStation (
    station_id INT PRIMARY KEY,
    station_name VARCHAR(50),
    address VARCHAR(100),
    phone_no VARCHAR(20),
    head_constable VARCHAR(50)
);

-- Creating Inspector table, which has profile level and high-rank officer ID
CREATE TABLE Inspector (
    inspector_id INT PRIMARY KEY,
    profile_level ENUM('Low Profile', 'High Profile'),
    high_rank_officer_id INT,
    station_id INT,
    FOREIGN KEY (station_id) REFERENCES PoliceStation(station_id)
);

-- Associating management relationship between PoliceStation and Crime
CREATE TABLE Manages (
    station_id INT,
    crime_id INT,
    PRIMARY KEY (station_id, crime_id),
    FOREIGN KEY (station_id) REFERENCES PoliceStation(station_id),
    FOREIGN KEY (crime_id) REFERENCES Crime(crime_id)
);
