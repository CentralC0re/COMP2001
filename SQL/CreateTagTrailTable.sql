CREATE TABLE CW1.TagTrailTable(
    TrailID INT,
    TagID INT,
    PRIMARY KEY(TrailID, TagID),	-- This may not work, test
    FOREIGN KEY(TrailID) REFERENCES CW1.TrailTable(TrailID),
    FOREIGN KEY(TagID) REFERENCES CW1.TagTable(TagID)
)