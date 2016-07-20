ALTER TABLE EmployeeTerritories
	ADD CONSTRAINT [FK_EmployeeTerritories_Employees] FOREIGN KEY 
	(
		[EmployeeID]
	) REFERENCES [dbo].[Employees] (
		[EmployeeID]
	)


