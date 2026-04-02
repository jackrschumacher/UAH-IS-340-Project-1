-- Insert data from .csv into the inspector table
BULK INSERT inspector
FROM "C:\Users\jackr\Documents\UAH\UAH-IS-340-Project-1\Data\inspector.csv"
WITH (
FIELDTERMINATOR = ',',
ROWTERMINATOR = '\n',
FIRSTROW = 2,
TABLOCK);

-- Insert data from .csv into the inspecting table
BULK INSERT inspecting
FROM "C:\Users\jackr\Documents\UAH\UAH-IS-340-Project-1\Data\inspecting.csv"
WITH (
FIELDTERMINATOR = ',',
ROWTERMINATOR = '\n',
FIRSTROW = 2,
TABLOCK);