CREATE PROCEDURE CW1.NewTrail @TrailName VARCHAR(40), @Difficulty VARCHAR(10), @Rating FLOAT(2),
@LengthVal FLOAT, @ElevationGain INT, @RouteType VARCHAR(13), @Descript VARCHAR(MAX),
@EstimatedTime TIME, @LocationKey INT, @UserKey INT

AS

INSERT INTO CW1.TrailTable(NameVal, Difficulty, Rating, LengthVal, ElevationGain, RouteType, 
DescriptionVal, EstimatedTime, LocationID, UserID)
VALUES (@TrailName, @Difficulty, @Rating, @LengthVal, @ElevationGain, @RouteType, @Descript,
@EstimatedTime, @LocationKey, @UserKey);

GO