USE HAFH;

-- Display the total amount HAFH spends on manager salaries (as TotalSalary) and the total amount that HAFH spends on manager bonuses (as TotalBonus)
SELECT SUM(MSalary) AS TotalSalary,
SUM(MBonus) AS TotalBonus
FROM manager;

-- Display the ManagerID, MFName, MLName, MSalary and MBonus for all managers with a salary greater than $50,000 and a bonus of greater than $1,000
SELECT ManagerID, MFName, MLName, MSalary, MBonus
FROM manager
WHERE MSalary > 50000 AND MBonus > 1000;

-- Display the BuildingID, BNoOfFloors, managers MFName and MLName for all buildings. 
SELECT 
	building.BuildingID,
	building.BNoOfFloors,
	manager.MFName,
	manager.MLName
FROM
	building
LEFT OUTER JOIN 
	manager 
	ON
	building.BManagerID = manager.ManagerID;

-- Display BuildingID and AptNo leased by CorprateClient WindyCT
SELECT 
	apartment.BuildingID,
	apartment.AptNo
FROM
	apartment
JOIN
	corpclient 
	ON
	apartment.CCID = corpclient.CCID
WHERE
	corpclient.CCNAME = 'WindyCT';

-- Display InsID and InsName for all inspectors that have inspections scheduled after 1-April-2020. Only show unique inspections
SELECT DISTINCT
	inspector.InsID,
	inspector.InsName
FROM
	inspector
JOIN
	inspecting
	ON
	inspector.InsID = inspecting.InsID
WHERE
	DateNext > '2020-04-01';

/* Display the ManagerID, MFName, MLName, MSalary, and MBonusfor the manager with the lowest total compensation (defined as salary plus bonus)
 * Create an alias to show totalCompensation. Used ISNULL to prevent nulling out of TotalCompensation if there is a null value in the bonus column.
 */
SELECT ManagerID , MFName, MLName, MSalary, MBonus, (MSalary + ISNULL(MBonus,0)) as TotalCompensation
FROM manager
WHERE (MSalary + ISNULL(MBonus,0)) = (SELECT MIN(MSalary + ISNULL(MBonus,0)) FROM manager);

