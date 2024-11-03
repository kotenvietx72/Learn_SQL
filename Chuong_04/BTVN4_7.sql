-- VD1: Cho biết thông tin các môn học trong tên có chữ 'c'
		SELECT * FROM Subject WHERE Name LIKE '%c%'
-- VD2: Cho biết mã, tên các sinh viên đăng ký môn C++ mà trong tên sinh viên có chữ 'n'
		SELECT Id, FullName FROM Student WHERE FullName LIKE '%n%' AND Id IN (SELECT StudentId FROM Register, Subject WHERE Subject.Name = 'C++' AND Subject.Id = Register.SubjectId)
-- VD3: Cho biết mã, họ tên, điểm TB các sinh viên trong danh sách có họ không bắt đầu với chữ 'h', 'n', 't'
		SELECT Id, FullName, Gpa FROM Student WHERE FullName NOT LIKE N'h%' AND FullName NOT LIKE N'n%' AND FullName NOT LIKE N't%'
-- VD4: Cho biết thông tin các sinh viên đăng ký môn SQL mà trong tên có chữ 'n' và có điểm TB dạng 3.x
		SELECT * FROM Student WHERE FullName LIKE '%n%' AND Gpa LIKE '3.%' AND Id IN (SELECT StudentId FROM Register, Subject WHERE Subject.Name = 'SQL' AND Subject.Id = Register.SubjectId)
		