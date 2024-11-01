DECLARE @RC int
DECLARE @TrailID int

-- TODO: Set parameter values here.
SET @TrailID = 1

EXECUTE @RC = [CW1].[ReadTrail] 
   @TrailID
GO