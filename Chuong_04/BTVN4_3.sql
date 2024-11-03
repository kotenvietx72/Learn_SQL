-- VD1: Hãy cho biết các sinh viên học CNTT và sống tại Hà Nội
		SELECT * FROM Student WHERE Major = 'CNTT' AND Address = N'Hà Nội'
-- VD2: Hãy cho biết các sinh viên học CNTT và có điểm TB không vượt quá 3.50
		SELECT * FROM Student WHERE Major ='CNTT' AND Gpa <= 3.5 ORDER BY Gpa 
-- VD2: Hãy cho biết những sinh viên nào đăng ký khóa học C++
		SELECT Student.* FROM Student, Subject, Register WHERE Subject.Name = 'C++' AND Subject.Id = Register.SubjectId AND Register.StudentId = Student.Id
-- VD4: Hãy cho biết top 3 sinh viên đầu tiên đăng ký môn học C#
		SELECT TOP 3 WITH TIES Student.* FROM Student, Subject, Register WHERE Subject.Name = 'C#' AND Subject.Id = Register.SubjectId AND Register.StudentId = Student.Id ORDER BY Register.RegisterTime
-- VD5: Hãy cho biết top 3 môn học đầu tiên mà sinh viên mã X đăng ký
		SELECT TOP 3 WITH TIES Subject.Name FROM Student, Subject, Register WHERE Student.Id = 'B25DCCN101' AND Student.Id = Register.StudentId AND Register.SubjectId = Subject.Id ORDER BY Register.RegisterTime