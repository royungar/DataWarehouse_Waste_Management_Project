-- SQL query using CUBE to compute average waste collected by year, city, and station.

SELECT
    dd.Year,
    ds.City,
    f.StationID,
    AVG(f.WasteCollected) AS AverageWasteCollected
FROM FactTrips f
INNER JOIN DimDate dd ON f.DateID = dd.DateID
INNER JOIN DimStation ds ON f.StationID = ds.StationID
GROUP BY CUBE (
    dd.Year,
    ds.City,
    f.StationID
)
ORDER BY
    dd.Year,
    ds.City,
    f.StationID;