-- Three trails will be inserted.
-- Origin of data (where applicable):
    -- https://www.alltrails.com/trail/england/devon/plymbridge-circular
    -- https://www.alltrails.com/trail/england/north-yorkshire/janet-s-foss-gordale-scar-and-malham-cove
    -- https://www.alltrails.com/trail/england/cumbria/scafell-pike-from-wasdale-campsite

-- Location
INSERT INTO CW1.LocationTable(Country, Region, Area)
VALUES ('England', 'Devon', 'Plymouth'),
('England', 'North Yorkshire', 'Yorkshire Dales National Park'),
('England', 'Cumbria', 'Lake District National Park');

-- Tags
INSERT INTO CW1.TagTable(TagName)
VALUES ('Dog-Friendly'),
('Kid-Friendly'),
('Camping'),
('Hiking'),
('Rocky');

-- User (From brief)
INSERT INTO CW1.UserTable(Username, Email, Pword)
VALUES ('Grace Hopper', 'grace@plymouth.ac.uk', 'ISAD123!'),
('Tim Berners-Lee', 'tim@plymouth.ac.uk', 'COMP2001!'),
('Ada Lovelace', 'ada@plymouth.ac.uk', 'insecurePassword')

-- Trail
INSERT INTO CW1.TrailTable(NameVal, Difficulty, Rating, LengthVal, ElevationGain, RouteType, DescriptionVal, EstimatedTime, LocationID, UserID)
VALUES ('Plymbridge Circular', 'Easy', 4.6, 5, 147, 'Loop', 'Short description for Plymbridge', '1:23:00', 1, 1),
('Malham Landscape Trail', 'Moderate', 4.8, 8, 299, 'Loop', 'Short description for Malham', '2:28:00', 2, 1),
('Scafell Pike from Wasdale Campsite', 'Hard', 4.7, 8.5, 890, 'Out and Back', 'Short description for Scafell', NULL, 3, 2);

-- TagTrail
INSERT INTO CW1.TagTrailTable(TrailID, TagID)
VALUES (1, 1),
(1, 2),
(2, 1),
(2, 5),
(3, 4),
(3, 5);

-- TrailPoint (Random)
INSERT INTO CW1.TrailPointTable(TPointLat, TPointLong, TrailID)
VALUES (50.366739, -4.1306179, 1),
(50.368338, -4.1438044, 1),
(50.657345, -3.9707885, 2),
(50.570331, -3.9199239, 2),
(50.461468, -3.8964470, 2),
(54.455431, -3.2094545, 3);