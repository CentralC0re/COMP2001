CREATE TABLE CW1.UserTable(
    UserID INT IDENTITY NOT NULL PRIMARY KEY,
    Username VARCHAR(32) NOT NULL,
    Email VARCHAR(64) NOT NULL,
    Pword VARCHAR(64) NOT NULL
)