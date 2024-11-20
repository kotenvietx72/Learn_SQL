-- VD1: Hãy cho biết thông tin các môn học không có sinh viên nào đăng ký
		SELECT DISTINCT Subjects.* FROM Subjects LEFT JOIN Registers ON Subjects.SubjectId = Registers.SubjectId WHERE Registers.SubjectId IS NULL
-- VD2: Hãy cho biết các môn học có ít nhất 1 sinh viên đăng ký
		SELECT DISTINCT Subjects.* FROM Subjects LEFT JOIN Registers ON Subjects.SubjectId = Registers.SubjectId WHERE Registers.SubjectId IS NOT NULL
-- VD3: Hãy cho biết số lượng sinh viên đăng ký của từng môn học. Kết quả sắp xếp giảm dần theo số lượng sinh viên đăng ký
		SELECT Subjects.SubjectId, Subjects.Name, COUNT(Registers.StudentId) AS NumberOfRegister FROM Subjects LEFT JOIN Registers ON Subjects.SubjectId = Registers.SubjectId WHERE Registers.SubjectId IS NOT NULL GROUP BY Subjects.SubjectId, Subjects.Name ORDER BY COUNT(Registers.StudentId) DESC
-- VD4: Hãy cho biết danh sách các sinh viên đăng ký môn học SUBJ1001
		SELECT Students.* FROM Students LEFT JOIN Registers ON Students.StudentId = Registers.StudentId WHERE Registers.SubjectId = 'SUBJ1001'
-- VD5: Hãy cho biết mỗi sinh viên đăng ký bao nhiêu môn học. Sắp xếp giảm dần theo số lượng đăng ký
		SELECT Students.StudentId, Students.LastName, Students.FirstName, COUNT(Registers.StudentId) AS NumberOfRegister FROM Students LEFT JOIN Registers ON Students.StudentId = Registers.StudentId WHERE Registers.StudentId IS NOT NULL GROUP BY Students.StudentId, Students.LastName, Students.FirstName ORDER BY NumberOfRegister DESC