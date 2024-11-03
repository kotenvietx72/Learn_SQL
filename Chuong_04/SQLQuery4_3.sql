/*		Bài 4.3: Toán tử AND
	Toán tử AND là một toán tử logic dùng để kết hợp hai biểu thức có tính đúng sai
	Toán tử AND cho kết quả là TRUE khi và chỉ khi cả hai biểu thức thành phần cùng TRUE
	Thường sử dụng đi kèm với mệnh đề WHERE
	Cú pháp: boolean_expression1 AND boolean_expression2
	Trong đó cả hai biểu thức trái và phải là bất kì biểu thức boolean hợp lệ nào có một trong các giá trị TRUE, FALSE và UNKNOWN
	Trong trường hợp ta sử dụng nhiều biểu thức logic, SQL Server sẽ đánh giá toán tử AND trước tiên
	Để thay đổi thứ tự các toán tử được xét duyệt, ta sử dụng ngoặc tròn () để gom nhóm các biểu thức và toán tử */
-- VD1: Cho biết thông tin các sinh viên trong tên có chữ ‘h’ và học CNTT
		SELECT * FROM Student WHERE Major = 'CNTT' AND FullName LIKE '%h%'
-- VD2: Cho biết thông tin các sinh viên học CNTT và có điểm TB >= 3.60
		SELECT * FROM Student WHERE Major = 'CNTT' AND Gpa >= 3.6 ORDER BY Gpa DESC
-- VD3: Hãy cho biết sinh viên mã X đăng ký những môn học nào
		SELECT Subject.Name FROM Subject, Register WHERE Register.StudentId = 'B25DCCN101' AND Subject.Id = Register.SubjectId
-- VD4: Hãy cho biết môn học tên x có những sinh viên nào đăng ký
		SELECT Student.FullName FROM Student, Subject, Register WHERE Subject.Name = 'C++' AND Subject.Id = Register.SubjectId AND Register.StudentId = Student.Id
-- VD5: Hãy cho biết tên môn học sinh viên mã X đăng ký và thời gian đăng ký mỗi môn học đó
		SELECT Subject.Name, Register.RegisterTime FROM Subject, Register WHERE Register.StudentId = 'B25DCCN101' AND Register.SubjectId = Subject.Id	
		