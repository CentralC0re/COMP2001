CREATE TABLE CW1.TrailPointTable(
    TPointID INT NOT NULL IDENTITY PRIMARY KEY,
	TPointLat FLOAT(8) NOT NULL,     -- -90 to 90
    TPointLong FLOAT(9) NOT NULL,   -- -180 to 180
    TrailID INT,
    FOREIGN KEY (TrailID) REFERENCES CW1.TrailTable(TrailID),

    CONSTRAINT CK_Latitude CHECK (TPointLat >= -90 AND TPointLat <= 90),
    CONSTRAINT CK_Longitude CHECK (TPointLong >= -180 AND TPointLong <= 180)
)