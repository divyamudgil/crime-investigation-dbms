# System Design

The system is designed to manage various entities involved in crime investigations. It has a relational database structure that captures the following entities:

- **Person**: Stores personal details of individuals (criminals, victims).
- **Criminal**: Links criminal records with personal data and keeps a history of crimes committed.
- **Victim**: Stores information about victims and their relationship with specific crimes.
- **Crime**: Captures crime details including the crime area, time, and the victim involved.
- **Evidence**: Links evidence to criminals involved in crimes.
- **Testimony**: Captures victim testimonies for specific crimes.
- **Detective**: Tracks detectives and their involvement in crime investigations.
- **Inspector**: Manages inspectors and their assignment to specific police stations.
- **Police Station**: Manages police stations and their assigned crimes.
- **Manages**: Relates police stations with the crimes they handle.

An ER diagram and schema are included below for reference.

