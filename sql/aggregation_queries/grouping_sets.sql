-- SQL query using GROUPING SETS to aggregate waste collected by station ID and truck type.

SELECT
    f.StationID,
    dt.TruckType,
    SUM(f.WasteCollected) AS TotalWasteCollected
FROM FactTrips f
INNER JOIN DimTruck dt ON f.TruckID = dt.TruckID
GROUP BY GROUPING SETS (
    (f.StationID, dt.TruckType),
    (f.StationID),
    (dt.TruckType)
)
ORDER BY
    f.StationID,
    dt.TruckType;