DECLARE @RC int
DECLARE @TrailName varchar(40)
DECLARE @Difficulty varchar(10)
DECLARE @Rating real
DECLARE @LengthVal float
DECLARE @ElevationGain int
DECLARE @RouteType varchar(13)
DECLARE @Descript varchar(max)
DECLARE @EstimatedTime time(7)
DECLARE @LocationKey int
DECLARE @UserKey int

-- TODO: Set parameter values here.
SET @TrailName = 'Procedure Trail';
SET @Difficulty = 'Moderate';
SET @Rating = 2.5;
SET @LengthVal = 9.5;
SET @ElevationGain = 100;
SET @RouteType = 'Loop';
SET @Descript = 'This trail was created by the Stored Procedure NEWTRAIL';
SET @EstimatedTime = '4:30:00';
SET @LocationKey = 1;
SET @UserKey = 3;

EXECUTE @RC = [CW1].[NewTrail] 
   @TrailName
  ,@Difficulty
  ,@Rating
  ,@LengthVal
  ,@ElevationGain
  ,@RouteType
  ,@Descript
  ,@EstimatedTime
  ,@LocationKey
  ,@UserKey
GO