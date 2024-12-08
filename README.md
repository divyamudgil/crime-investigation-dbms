# crime-investigation-dbms
# Crime Investigation DBMS 

This project implements a Crime Investigation Management System using a relational database. The system stores and manages data related to people, criminals, victims, crimes, evidence, and testimonies. It also tracks police stations, detectives, inspectors, and their involvement in investigations.

## Features
- **People Management**: Stores information about individuals including criminals and victims.
- **Crime Tracking**: Details crimes, including the crime area, time, and associated victims.
- **Evidence Collection**: Links criminals with evidence tied to their crimes.
- **Testimonies**: Allows victims to provide testimonies for related crimes.
- **Police Station Management**: Manages police stations and their assigned crimes.
- **Detective and Inspector Roles**: Assigns detectives and inspectors to specific crimes.

## Database Schema
- **Person**: Stores personal information such as name, address, and income.
- **Criminal**: Links criminal records with personal data and keeps a history of crimes committed.
- **Victim**: Stores information about victims and their relationship with specific crimes.
- **Crime**: Tracks crimes, linking to victims and storing crime details.
- **Evidence**: Associates evidence with criminals involved in a crime.
- **Testimony**: Captures victim testimonies for specific crimes.
- **Detective**: Tracks detectives and their involvement in crime investigations.
- **Inspector**: Manages inspectors and their assignment to specific police stations.
- **Police Station**: Manages police stations and their contact information.
- **Manages**: Links police stations to specific crimes they handle.

## Setup Instructions
1. Clone this repository.
2. Import the `sql_scripts/create_tables.sql` to your SQL server.
3. Optionally, populate the database with `sample_data.sql`.
4. Run custom queries in `queries.sql` for specific operations.

## License
This project is licensed under the MIT License.
