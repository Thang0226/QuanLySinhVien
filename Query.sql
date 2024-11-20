USE QuanLySinhVien;

INSERT INTO Class VALUES
	(1, 'A1', '2008-12-20', 1),
	(2, 'A2', '2008-12-22', 1),
	(3, 'B3', DATE(NOW()), 1);
    
INSERT INTO Class VALUES (3, 'B3', DATE(NOW()), 1);
    
SELECT 
    *
FROM
    Class;

DELETE FROM Class 
WHERE
    (ClassID > 2);
    




INSERT INTO Student VALUES (1, 'Hung', 'Ha noi', '0912113113', 1, 1);
INSERT INTO Student (StudentName, Address, Status, ClassID) VALUES 
	('Hoa', 'Hai phong', 1, 1);
INSERT INTO Student (StudentName, Address, Phone, Status, ClassID) VALUES
	('Manh', 'HCM', '0123123123', 0, 2);
    
SELECT 
    *
FROM
    Student;





INSERT INTO Subject(SubName, Credit, Status) VALUES 
	('CF', 5, 1),
	('C', 6, 1),
	('HDJ', 5, 1),
	('RDBMS', 10, 1);
    
SELECT 
    *
FROM
    Subject;

DELETE FROM Subject 
WHERE
    (SubID > 0);

ALTER TABLE Subject AUTO_INCREMENT = 0;





INSERT INTO Mark (SubID, StudentID, Mark, ExamTimes) VALUES
	(1, 1, 8, 1),
    (1, 2, 10, 2),
    (2, 1, 12, 1);
    
SELECT * FROM Mark;





select * from Student;

select * from Student where Status = true;

select * from Subject where Credit < 10;

select s.StudentID, s.StudentName, c.ClassName
from Student s join Class c on s.ClassID = c.ClassID
where c.ClassName = 'A1';

select s.StudentID, s.StudentName, sub.SubName, m.Mark
from Student s join Mark m on s.StudentID = m.StudentID join Subject sub on m.SubID = sub.SubID
where sub.SubName = 'CF';











