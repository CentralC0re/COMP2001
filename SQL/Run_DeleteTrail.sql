DECLARE @RC int
DECLARE @TrailID int

-- TODO: Set parameter values here.
SET @TrailID = 4

EXECUTE @RC = [CW1].[DeleteTrail] 
   @TrailID
GO