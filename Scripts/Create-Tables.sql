USE HAFH

-- Create the inspector table
CREATE TABLE inspector(
InsID char(3) NOT NULL,
InsName varchar(15) NOT NULL,
PRIMARY KEY (InsID));

-- Create the manager table
CREATE TABLE manager(
ManagerID char(4) NOT NULL,
MFName varchar(15) NOT NULL,
MLName varchar(15) NOT NULL,
MBDate DATE NOT NULL,
MSalary Numeric(9,2) NOT NULL,
MBonus Numeric(9,2) NULL,
MResBuildingID char(3) NOT NULL,
PRIMARY KEY (ManagerID));

-- Create managerphone table
CREATE TABLE managerphone(
ManagerID char(4) NOT NULL,
MPhone char(11) NOT NULL,
FOREIGN KEY (ManagerID) REFERENCES manager(ManagerID));

-- Create the building table
CREATE TABLE building(
BuildingID char(3) NOT NULL,
BNoOfFloors INT NOT NULL,
BManagerID char(4) NOT NULL,
PRIMARY KEY (BuildingID));

-- Create the inspecting table
CREATE TABLE inspecting(
InsID char(3) NOT NULL,
BuildingID char(3) NOT NULL,
DateNext DATE NOT NULL,
DateLast DATE NOT NULL,
PRIMARY KEY (InsID));

-- Create the staffmember table
CREATE TABLE staffmember(
SMemberID char(4) NOT NULL,
SMemberName varchar(15) NOT NULL, 
PRIMARY KEY(SMemberID));

-- Create the apartment table - the rest of this statement is completed in the corresponding alter statement
CREATE TABLE apartment(
BuildingID char(3) NOT NULL,
AptNo char(5) NOT NULL,
AptNoOfBedrooms INT NOT NULL,
CCID char(4) NULL,
PRIMARY KEY(AptNo));

-- Create the cleaning table
CREATE TABLE cleaning(
BuildingID char(3) NOT NULL,
AptNo char(5) NOT NULL,

)

-- Create the corpclient table
CREATE TABLE corpclient(
CCID char(4) NOT NULL,
CCName varchar(25) UNIQUE,
CCIndustry varchar(25) NOT NULL,
CCLocation varchar(25) NOT NULL,
CCIDReferredBy char(4) NULL,
PRIMARY KEY(CCID),
FOREIGN KEY (CCIDReferredBy) REFERENCES corpclient(CCID));

-- Alter tables to allow for insertion of FKs when there are circular dependencies
ALTER TABLE inspecting
ADD FOREIGN KEY (InsID) REFERENCES inspector(InsID);
ADD FOREIGN KEY (BuildingID) REFERENCES building(BuildingID);

ALTER TABLE manager
ADD FOREIGN KEY (MResBuildingID) REFERENCES building(BuildingID);

ALTER TABLE building
ADD FOREIGN KEY (BManagerID) REFERENCES manager(ManagerID);

ALTER TABLE apartment
ADD FOREIGN KEY (BuildingID) REFERENCES building(BuildingID);
ADD FOREIGN KEY (CCID) REFERENCES corpclient(CCID);


