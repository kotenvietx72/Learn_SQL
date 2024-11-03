-- VD1: Cho biết thông tin môn học có số tín chỉ là 3
		SELECT * FROM Subject WHERE Credit = 3
-- VD2: Cho biết thông tin các môn học được đăng ký bởi sinh viên mã X và thời gian đăng ký tương ứng
		SELECT Subject.*, Register.RegisterTime FROM Subject, Register WHERE Register.StudentId = 'B25DCCN101' AND Register.SubjectId = Subject.Id
-- VD3: Cho biết thông tin các sinh viên đăng ký các môn học có 3 tín chỉ
		SELECT * FROM Student WHERE Id IN(SELECT StudentId FROM Subject, Register WHERE Subject.Credit = 3 AND Subject.Id = Register.SubjectId)
-- VD4: Cho biết thông tin các sinh viên có điểm TB >= 3.2 và đăng ký các môn học có số tín chỉ >= 3
		SELECT * FROM Student WHERE Gpa >= 3.2 AND Id IN(SELECT StudentId FROM Subject, Register WHERE Subject.Credit >= 3 AND Subject.Id = Register.SubjectId)
-- VD5: Cho biết thông tin các sinh viên không đăng ký bất kỳ môn học nào
		SELECT * FROM Student WHERE Id NOT IN (SELECT StudentId FROM Register)
-- VD6: Cho biết thông tin các môn học không có sinh viên nào đăng ký
		SELECT * FROM Subject WHERE Id NOT IN (SELECT SubjectId FROM Register)
		