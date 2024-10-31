CREATE PROCEDURE CW1.ReadTrail @TrailID INT
AS
SELECT NameVal, Difficulty, LengthVal, RouteType, EstimatedTime, CW1.TagTable.TagName, CW1.LocationTable.Country, 
CW1.LocationTable.Region, CW1.LocationTable.Area

FROM CW1.TrailTable
INNER JOIN CW1.TagTrailTable
ON CW1.TrailTable.TrailID = CW1.TagTrailTable.TrailID
INNER JOIN CW1.TagTable
ON CW1.TagTrailTable.TagID = CW1.TagTable.TagID
INNER JOIN CW1.LocationTable
ON CW1.TrailTable.LocationID = CW1.LocationTable.LocationID

WHERE CW1.TrailTable.TrailID = @TrailID;

GO