CREATE TABLE CW1.TrailPointTable(
    TPointID INT NOT NULL IDENTITY PRIMARY KEY,
    TPointLong FLOAT(9) NOT NULL,   -- -180 to 180
    TPointLat FLOAT(8) NOT NULL,     -- -90 to 90
    TrailID INT,
    FOREIGN KEY (TrailID) REFERENCES CW1.TrailTable(TrailID)
)