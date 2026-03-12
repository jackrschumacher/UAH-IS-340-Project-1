USE HAFH

/* Create the inspector table
 * InsID (PK)
 * InsName
 */
CREATE TABLE inspector(
InsID char(3) NOT NULL,
InsName varchar(15) NOT NULL,
PRIMARY KEY (InsID));

/* Create a manager table
 * ManagerID (PK)
 * MFName 
 * MLName
 * MBDate
 * MSalary
 * MBonus (Optional)
 * MResBuildingID (FK from building table)
 */
CREATE TABLE manager(
ManagerID char(4) NOT NULL,
MFName varchar(15) NOT NULL,
MLName varchar(15) NOT NULL,
MBDate DATE NOT NULL,
MSalary Numeric(9,2) NOT NULL,
MBonus Numeric(9,2) NULL,
MResBuildingID char(3) NOT NULL,
PRIMARY KEY (ManagerID));



/* Create the building table
 * BuildingID (PK)
 * BNoOfFloors
 * BManagerID (FK from manager table)
 */
CREATE TABLE building(
BuildingID char(3) NOT NULL,
BNoOfFloors INT NOT NULL,
BManagerID char(4) NOT NULL,
PRIMARY KEY (BuildingID));


/* Create the inspecting table
 * InspectorID (FK from inspector table)
 * BuildingID (FK from building table)
 * DateLast
 * DateNext
 */
CREATE TABLE inspecting(
InsID char(3) NOT NULL,
BuildingID char(3) NOT NULL,
DateNext DATE NOT NULL,
DateLast DATE NOT NULL,
PRIMARY KEY (InsID)
);

-- Alter tables to allow for insertion of FKs when there are circular dependencies

ALTER TABLE inspecting
ADD FOREIGN KEY (InsID) REFERENCES inspector(InsID);
ADD FOREIGN KEY (BuildingID) REFERENCES building(BuildingID);

ALTER TABLE manager
ADD FOREIGN KEY (MResBuildingID) REFERENCES building(BuildingID);

ALTER TABLE building
ADD FOREIGN KEY (BManagerID) REFERENCES manager(ManagerID);
