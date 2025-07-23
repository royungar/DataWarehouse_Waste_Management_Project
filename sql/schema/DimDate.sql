-- Creates the DimDate table to store detailed date and calendar attributes.

CREATE TABLE DimDate (
    DateID INTEGER PRIMARY KEY,
    Date DATE,
    Year INTEGER,
    Quarter INTEGER,
    QuarterName VARCHAR(2),     
    Month INTEGER,
    MonthName VARCHAR(20),      
    Day INTEGER,
    Weekday INTEGER,
    WeekdayName VARCHAR(20)
);