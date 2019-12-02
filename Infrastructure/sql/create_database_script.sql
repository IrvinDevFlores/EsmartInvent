create table Categories
(
	CategoryId int primary key identity(1,1),
	CategoryName varchar(30) not null,
	Description varchar(50) not null
)

create table Products
(
	ProductId int primary key identity(1,1),
	ProductName varchar(30) not null,
	ProductPrice decimal(10,2) not null,
	QTYStock int not null,
	InStock bit not null,
	CategoryId int foreign key(CategoryId)
	references Categories(CategoryId) null
)


create table Customers(
	CustomerId int primary key identity(1,1),
	CustomerName varchar(30) not null,
	CustomerLastName varchar(30) not null,
	CustumerBirthDate datetime not null
)

create table EmployeeJobs(
	EmployeeJobId int primary key identity(1,1),
	JobTitle varchar(40) not null,
	Salary decimal(10,2) not null
)

create table Employees
(
	EmployeeId int primary key identity(1,1),
	Name varchar(30) not null,
	LastName varchar(30) not null,
	BirthDate datetime not null,
	Address varchar(50) not null,
	EmployeeJobId int foreign key(EmployeeJobId)
	references EmployeeJobs(EmployeeJobId)

)


create table Orders
(
	OrderId int primary key identity(1,1),
	CustomerId int foreign key (CustomerId)
	references Customers(CustomerId),
	EmployeeId int foreign key (EmployeeId)
	references Employees(EmployeeId)
)