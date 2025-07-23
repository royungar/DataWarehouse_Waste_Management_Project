-- Creates the FactTrips table to store waste collection records with references to date, station, and truck dimensions.

CREATE TABLE FactTrips (
    TripID INTEGER PRIMARY KEY,
    DateID INTEGER,
    StationID INTEGER,
    TruckID INTEGER,
    WasteCollected NUMERIC,
    FOREIGN KEY(DateID) REFERENCES DimDate(DateID),
    FOREIGN KEY(StationID) REFERENCES DimStation(StationID),
    FOREIGN KEY(TruckID) REFERENCES DimTruck(TruckID)
);