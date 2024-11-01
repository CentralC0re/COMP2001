CREATE PROCEDURE CW1.UpdateTrail @TrailID INT, @TrailName VARCHAR(40), @Difficulty VARCHAR(10), @Rating FLOAT(2),
@LengthVal FLOAT, @ElevationGain INT, @RouteType VARCHAR(13), @Descript VARCHAR(MAX),
@EstimatedTime TIME, @LocationKey INT

AS  -- Ideally, this would re-use existing values if they were null.

UPDATE CW1.TrailTable
SET NameVal = @TrailName, Difficulty = @Difficulty, Rating = @Rating, LengthVal = @LengthVal, ElevationGain = @ElevationGain,
RouteType = @RouteType, DescriptionVal = @Descript, EstimatedTime = @EstimatedTime, LocationID = @LocationKey
WHERE CW1.TrailTable.TrailID = @TrailID;

GO