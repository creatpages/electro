use StudentManagementDB
go

drop table Student

create table Student(
	[ID] varchar(8) not null,
	[name] nvarchar(30),
	[gender] varchar(1) check ([gender] in ('F', 'M')),
	[dob] Date,
	[mark] float,
	[email] varchar(100)
	CONSTRAINT PK_Student PRIMARY KEY ([ID]),
)



  select * from Student