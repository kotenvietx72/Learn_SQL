﻿-- VD1: Hãy cho biết thông tin các môn học trong bảng Subjects có sinh viên đăng ký. Không xét trạng thái đăng ký
		-- SELECT DISTINCT Subject.* FROM Subject INNER JOIN Register ON Subject.Id = Register.SubjectId INNER JOIN Student ON Register.StudentId = Student.Id
-- VD2: Hãy cho biết thông tin các môn học trong bảng Subjects không có bất kỳ sinh viên nào đăng ký
		-- SELECT DISTINCT * FROM Subject WHERE Id NOT IN (SELECT Register.SubjectId FROM Register INNER JOIN Student ON Student.Id = Register.StudentId)
-- VD3: Hãy cho biết thông tin những sinh viên đăng ký môn học C++. Không xét trạng thái đăng ký
		-- SELECT Student.* FROM Student INNER JOIN Register ON Student.Id = Register.StudentId INNER JOIN Subject ON Register.SubjectId = Subject.Id WHERE Subject.Name = N'C++'
-- VD4: Hãy cho biết mỗi sinh viên đăng ký bao nhiêu môn học. Không xét trạng thái đăng ký
		SELECT Student.Id, Student.LastName, Student.FirstName, COUNT(Register.StudentId) AS CountSubject FROM Student JOIN Register ON Student.Id = Register.StudentId GROUP BY Student.Id, Student.LastName, Student.FirstName ORDER BY CountSubject DESC
-- VD5: Hãy cho biết mỗi môn học có bao nhiêu sinh viên đăng ký. Không xét trạng thái đăng ký
		-- SELECT Subject.Id, Subject.Name, COUNT(Register.SubjectId) AS CountStudent FROM Subject INNER JOIN Register ON Subject.Id = Register.SubjectId GROUP BY Subject.Id, Subject.Name
-- VD6: Hãy cho biết thông tin các sinh viên trong bảng Students đăng ký nhiều môn học nhất. Không xét trạng thái đăng ký
		-- SELECT TOP 1 WITH TIES Student.Id, Student.LastName, Student.FirstName, COUNT(Register.StudentId) AS CountSubject FROM Student INNER JOIN Register ON Student.Id = Register.StudentId GROUP BY Student.Id, Student.LastName, Student.FirstName ORDER BY CountSubject DESC
-- VD7: Hãy cho biết thông tin các môn học trong bảng Subjects được đăng ký nhiều nhất. Không xét trạng thái đăng ký
		-- SELECT TOP 1 WITH TIES Subject.Id, Subject.Name, COUNT(Register.SubjectId) AS CountStudent FROM Subject INNER JOIN Register ON Subject.Id = Register.SubjectId GROUP BY Subject.Id, Subject.Name ORDER BY CountStudent DESC
-- VD8: Hãy cho biết thông tin các sinh viên đăng ký môn học nhiều thứ hai. Không xét trạng thái đăng ký**
		-- Chưa học