USE test;
CREATE TABLE Department(
	DepartmentID int primary key identity(1, 1),
	DepartmentName varchar(255) not null
);

CREATE TABLE Employee(
	EmployeeID int primary key identity(1, 1),
	EmployeeName varchar(100),
	DepartmentID int, foreign key (DepartmentID) REFERENCES Department(DepartmentID)
);

CREATE TABLE tblUser(
	UserID int primary key identity(1, 1),
	FullName varchar(255) default '',
	Email varchar(255) not null,
	Password varchar(255) check(len(Password) > 3)
);
