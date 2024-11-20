-- VD1: Hãy cho biết điểm TB cộng của các sinh viên tổng hợp theo các tháng sinh của sinh viên trong danh sách
		SELECT MONTH(BirthDate) AS Birth_Month, AVG(Gpa) AS Average_Gpa FROM Students GROUP BY MONTH(BirthDate)
-- VD2: Hãy cho biết số lượng môn học ở mỗi giá trị tín chỉ là bao nhiêu
		SELECT Credit, COUNT(SubjectId) FROM Subjects GROUP BY Credit
-- VD3: Hãy cho biết số lượng sinh viên đăng ký theo từng môn học
		SELECT Subjects.Name, COUNT(Registers.StudentId) AS Number_Of_Student FROM Subjects INNER JOIN Registers ON Subjects.SubjectId = Registers.SubjectId GROUP BY Subjects.Name
-- VD4: Hãy cho biết số lượng môn học mà mỗi sinh viên đăng ký
		SELECT Students.StudentId, Students.LastName, Students.FirstName, COUNT(Registers.SubjectId) AS Subject_Of_Register FROM Students INNER JOIN Registers ON Students.StudentId = Registers.StudentId GROUP BY Students.StudentId, Students.LastName, Students.FirstName ORDER BY Subject_Of_Register DESC