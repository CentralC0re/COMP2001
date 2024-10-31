CREATE TABLE CW1.TrailPointTable(
    TPointID INT NOT NULL IDENTITY PRIMARY KEY,
	TPointLat FLOAT(8) NOT NULL,     -- -90 to 90
    TPointLong FLOAT(9) NOT NULL,   -- -180 to 180
    TrailID INT,
    FOREIGN KEY (TrailID) REFERENCES CW1.TrailTable(TrailID)
)