ALTER TABLE CustomerCustomerDemo
	ADD CONSTRAINT [FK_CustomerCustomerDemo] FOREIGN KEY 
	(
		[CustomerTypeID]
	) REFERENCES [dbo].[CustomerDemographics] (
		[CustomerTypeID]
	)


