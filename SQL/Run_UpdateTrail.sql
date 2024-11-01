DECLARE @RC int
DECLARE @TrailID int
DECLARE @TrailName varchar(40)
DECLARE @Difficulty varchar(10)
DECLARE @Rating real
DECLARE @LengthVal float
DECLARE @ElevationGain int
DECLARE @RouteType varchar(13)
DECLARE @Descript varchar(max)
DECLARE @EstimatedTime time(7)
DECLARE @LocationKey int

-- TODO: Set parameter values here.
SET @TrailID = 4
SET @TrailName = 'Updated Trail'
SET @Difficulty = 'Easy'
SET @Rating = 4.5
SET @LengthVal = 9.5
SET @ElevationGain = 100
SET @RouteType = 'Loop'
SET @Descript = 'Updated Trail'
SET @EstimatedTime = '04:10:00'
SET @LocationKey = 1

EXECUTE @RC = [CW1].[UpdateTrail] 
   @TrailID
  ,@TrailName
  ,@Difficulty
  ,@Rating
  ,@LengthVal
  ,@ElevationGain
  ,@RouteType
  ,@Descript
  ,@EstimatedTime
  ,@LocationKey
GO