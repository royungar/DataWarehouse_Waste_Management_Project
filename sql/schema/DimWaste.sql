-- Creates the DimWaste table to store waste type identifiers and category names.

CREATE TABLE DimWaste (
    WasteID INTEGER PRIMARY KEY,
    WasteType VARCHAR (20)
);