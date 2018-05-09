USE mytable
INSERT INTO dbo.MemberSort_real (FirstName, LastName, DOB, City, [State],JoinDate)
SELECT FirstName, LastName, dbo.standard_date_convert(DOB), City, [State],
		dbo.standard_date_convert(JoinDate)
FROM dbo.MemberSort_1