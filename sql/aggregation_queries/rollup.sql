-- SQL query using ROLLUP to summarize total waste collected by year, city, and station ID.

SELECT
    dd.Year,
    ds.City,
    f.StationID,
    SUM(f.WasteCollected) AS TotalWaste
FROM FactTrips f
INNER JOIN DimDate dd ON f.DateID = dd.DateID
INNER JOIN DimStation ds ON f.StationID = ds.StationID
GROUP BY ROLLUP (
    dd.Year,
    ds.City,
    f.StationID
)
ORDER BY
    dd.Year,
    ds.City,
    f.StationID;