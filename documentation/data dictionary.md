# Data Dictionary

## Person Table
- **person_id**: Primary key, unique identifier for each person.
- **name**: Name of the person.
- **address**: Residential address.
- **income**: Income details of the person.

## Criminal Table
- **cid**: Criminal ID, primary key.
- **hid**: History ID, links to the criminal’s criminal history.
- **person_id**: Foreign key, references Person(person_id).

## Victim Table
- **victim_id**: Victim ID, primary key.
- **person_id**: Foreign key, references Person(person_id).

## Crime Table
- **crime_id**: Unique identifier for each crime.
- **crime_area**: Area where the crime took place.
- **time**: Date and time when the crime occurred.
- **victim_id**: Foreign key, references Victim(victim_id).

## Evidence Table
- **eid**: Unique identifier for each evidence item.
- **cid**: Foreign key, references Criminal(cid).
- **e_type**: Type of evidence.
- **e_details**: Detailed description of the evidence.

## History Table
- **hid**: History ID, primary key.
- **cid**: Foreign key, references Criminal(cid).

## Testimony Table
- **tid**: Testimony ID, primary key.
- **victim_id**: Foreign key, references Victim(victim_id).
- **crime_id**: Foreign key, references Crime(crime_id).
- **t_date**: Date of testimony.
- **details**: Testimony details.

## Detective Table
- **detective_id**: Detective ID, primary key.
- **d_name**: Name of the detective.
- **assigned_to**: Foreign key, references Crime(crime_id).

## Police Station Table
- **station_id**: Police station ID, primary key.
- **station_name**: Name of the police station.
- **address**: Address of the police station.
- **phone_no**: Contact phone number of the station.
- **head_constable**: Head constable in charge.

## Inspector Table
- **inspector_id**: Inspector ID, primary key.
- **profile_level**: Profile level (Low Profile/High Profile).
- **high_rank_officer_id**: Foreign key, references Inspector(inspector_id).
- **station_id**: Foreign key, references PoliceStation(station_id).

## Manages Table
- **station_id**: Foreign key, references PoliceStation(station_id).
- **crime_id**: Foreign key, references Crime(crime_id).

