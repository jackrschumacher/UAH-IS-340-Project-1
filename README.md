# UAH-IS-340-Project-1


## Tasks

> [!WARNING]
>
> Make sure to label each part of the assignment clearly. A lack of clarity in the submission
> (including SQL codes and screenshots) may result in significant points deduction.

- [ ] All SQL queries for the `HAFH reality database`. This includes queries for creating the database, tables data loading (insert query), and then the queries showing the content of every table (e.g., show table Manager, the number of columns it has, and the instances showing the data, i.e., number of rows and columns in the table-see sample screenshot) **(30 points)**
- [ ] Screenshots after running SQL query to extract all the columns from tables. There are nine tables, so there should be nine screenshots. Requirements for screenshots:
  - [ ] One screenshot for one table- **all 9** **(5*9 = 45 points)**
    - [ ] Show all columns in the tables **(5*9 = 45 points)**
  - The bottom of the screenshot shall show the following information:
    - Your local instance of the database engine
    - Number of rows in the table. (note: if a table has many rows that cannot be displayed in one screen, you dont need to show those rows that are not displayed in the first page. Just take the screenshot of the first page and show the number of rows at the bottom of the screenshot. That is good enough).

- [ ] Display the total amount HAFH spends on manager salaries (as `TotalSalary`) and the total
  amount HAFH spends on manager bonuses (as `TotalBonus`). **5 Points**
- [ ] Display the `ManagerID`, `MFName`, `MLName`, `MSalary`, and `MBonus`, for all managers with a salary greater than $50,000 and a bonus greater than $1,000. **5 points**
- [ ] Display the `BuildingID`, `BNoOfFloors`, and the managers `MFName `and `MLName `for all buildings. **5 points**
- [ ] Display the `BuildingID ` and `AptNo `for all apartments leased by the corporate client `WindyCT` **5 points**
- [ ] Display the `InsID `and `InsName `for all inspectors that have any inspections scheduled after `1-APR-2020`. Do not display the same information more than once. **5 points**
- [ ] Display the `ManagerID`, `MFName`, `MLName`, `MSalary`, and `MBonus `for the manager with the *lowest* total compensation (defined as salary plus bonus) **5 points**
- [ ] Provide all SQL queries and the screenshots

### Setup

#### Create Tables:

- [x] INSPECTOR
- [ ] BUILDING
- [ ] APARTMENT
- [ ] INSPECTING
- [ ] CLEANING
- [ ] MANAGER
- [ ] CORPCLIENT
- [ ] MANAGERPHONE
- [ ] STAFFMEMEMBER
