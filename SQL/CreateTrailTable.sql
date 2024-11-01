CREATE TABLE CW1.TrailTable(
    TrailID INT NOT NULL IDENTITY PRIMARY KEY,
    NameVal VARCHAR(60) NOT NULL,
    Difficulty VARCHAR(10) NOT NULL, --Must be between three values
    Rating FLOAT(2),    --Must be between 0.0 and 5.0
    LengthVal FLOAT,    --Always in KM, Length is reserved
    ElevationGain INT,  --Always to the nearest whole meter.
    RouteType VARCHAR(13) NOT NULL, -- MUST be "Loop" or "Out and Back"
    DescriptionVal VARCHAR(MAX),
    EstimatedTime TIME,
    LocationID INT,
    UserID INT,
    FOREIGN KEY (LocationID) REFERENCES CW1.LocationTable(LocationID),
    FOREIGN KEY (UserID) REFERENCES CW1.UserTable(UserID),

    CONSTRAINT CK_Difficulty CHECK (Difficulty = 'Easy' OR Difficulty = 'Moderate' OR Difficulty = 'Hard'),
    CONSTRAINT CK_Rating CHECK (Rating >= 1 AND Rating <= 5),
    CONSTRAINT CK_RType CHECK (RouteType = 'Loop' OR RouteType = 'Out and Back')
)