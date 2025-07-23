-- Creates the DimStation table to store station IDs and their associated cities.

CREATE TABLE DimStation (
    StationID INTEGER PRIMARY KEY,
    City VARCHAR (50)
);