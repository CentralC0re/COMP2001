CREATE TRIGGER CW1.LogCreation
ON CW1.TrailTable
AFTER INSERT

AS

DECLARE @TrailID INT
SET @TrailID = IDENT_CURRENT('CW1.TrailTable')

DECLARE @UserID INT
SELECT @UserID = [UserID]
FROM CW1.TrailTable
WHERE TrailID = @TrailID;

INSERT INTO CW1.LogTable(TrailID, UserID, TimeStmp)
VALUES (@TrailID, @UserID, GETDATE())

GO