-- Creates a materialized view to precompute the maximum waste collected per city, station, and truck type.

CREATE MATERIALIZED VIEW max_waste_stats AS
SELECT
    ds.City,
    f.StationID,
    dt.TruckType,
    MAX(f.WasteCollected) AS MaxWasteCollected
FROM FactTrips f
INNER JOIN DimStation ds ON f.StationID = ds.StationID
INNER JOIN DimTruck dt ON f.TruckID = dt.TruckID
GROUP BY
    ds.City,
    f.StationID,
    dt.TruckType
WITH DATA;