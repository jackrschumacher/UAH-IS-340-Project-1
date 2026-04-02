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

-- Insert data from .csv into the staffmember table
BULK INSERT staffmember
FROM "C:\Users\jackr\Documents\UAH\UAH-IS-340-Project-1\Data\staffmember.csv"
WITH (
FIELDTERMINATOR = ',',
ROWTERMINATOR = '\n',
FIRSTROW = 2,
TABLOCK);	

-- Insert data from .csv into the managerphone table
BULK INSERT managerphone
FROM "C:\Users\jackr\Documents\UAH\UAH-IS-340-Project-1\Data\managerphone.csv"
WITH (
FIELDTERMINATOR = ',',
ROWTERMINATOR = '\n',
FIRSTROW = 2,
TABLOCK);

-- Insert data from .csv into the building table
BULK INSERT building
FROM "C:\Users\jackr\Documents\UAH\UAH-IS-340-Project-1\Data\building.csv"
WITH (
FIELDTERMINATOR = ',',
ROWTERMINATOR = '\n',
FIRSTROW = 2,
TABLOCK);

-- Insert data from .csv into the apartment table
BULK INSERT apartment
FROM "C:\Users\jackr\Documents\UAH\UAH-IS-340-Project-1\Data\apartment.csv"
WITH (
FIELDTERMINATOR = ',',
ROWTERMINATOR = '\n',
FIRSTROW = 2,
TABLOCK);

-- Insert data from .csv into the cleaning table
BULK INSERT cleaning
FROM "C:\Users\jackr\Documents\UAH\UAH-IS-340-Project-1\Data\cleaning.csv"
WITH (
FIELDTERMINATOR = ',',
ROWTERMINATOR = '\n',
FIRSTROW = 2,
TABLOCK);

-- Insert data from .csv into the manager table
BULK INSERT manager
FROM "C:\Users\jackr\Documents\UAH\UAH-IS-340-Project-1\Data\manager.csv"
WITH (
FIELDTERMINATOR = ',',
ROWTERMINATOR = '\n',
FIRSTROW = 2,
TABLOCK);

-- Insert data from .csv into the corpclient table
BULK INSERT corpclient
FROM "C:\Users\jackr\Documents\UAH\UAH-IS-340-Project-1\Data\corpclient.csv"
WITH (
FIELDTERMINATOR = ',',
ROWTERMINATOR = '\n',
FIRSTROW = 2,
TABLOCK);