

-- Definindo chaves primárias
ALTER TABLE Customers
ADD CONSTRAINT PK_Customers PRIMARY KEY (CustomerID);

ALTER TABLE Employees
ADD CONSTRAINT PK_Employees PRIMARY KEY (EmployeeID);

-- Definindo chave estrangeira (autorreferência)
ALTER TABLE Employees
ADD CONSTRAINT FK_Employees_ReportsTo FOREIGN KEY (ReportsTo)
REFERENCES Employees(EmployeeID);
