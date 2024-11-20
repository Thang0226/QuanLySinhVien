use QuanLySinhVien;

insert into Class values
	(1, 'A1', '2008-12-20', 1),
	(2, 'A2', '2008-12-22', 1),
	(3, 'B3', date(now()), 1);
    
insert into Class values (3, 'B3', date(now()), 1);
    
select * from Class;

delete from Class 
	where (ClassID > 2);
    




insert into Student values (1, 'Hung', 'Ha noi', '0912113113', 1, 1);
insert into Student (StudentName, Address, Status, ClassID) values 
	('Hoa', 'Hai phong', 1, 1);
insert into Student (StudentName, Address, Phone, Status, ClassID) values
	('Manh', 'HCM', '0123123123', 0, 2);
    
select * from Student;





insert into Subject(SubName, Credit, Status) values 
	('CF', 5, 1),
	('C', 6, 1),
	('HDJ', 5, 1),
	('RDBMS', 10, 1);
    
select * from Subject;

delete from Subject where (SubID > 0);

alter table Subject auto_increment = 0;





insert into Mark (SubID, StudentID, Mark, ExamTimes) values
	(1, 1, 8, 1),
    (1, 2, 10, 2),
    (2, 1, 12, 1);
    
select * from Mark;