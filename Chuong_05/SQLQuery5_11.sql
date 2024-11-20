/*		Bài 5.11: LEFT JOIN
	Mệnh đề LEFT JOIN thường được sử dụng đi kèm trong câu lệnh SELECT
	Mệnh đề LEFT JOIN cho phép ta truy vấn dữ liệu từ nhiều bảng có liên quan đến nhau
	Mệnh đề LEFT JOIN trả về tất cả các dòng trong bảng bên tay trái và các hàng trùng khớp ở bảng bên phải. Nếu không có dòng trùng khớp với dòng dữ liệu ở bảng bên trái thì giá trị NULL sẽ được sử dụng để tạo tập kết quả
	Cú pháp của LEFT JOIN:
	SELECT
		columns
	FROM
		table1
		LEFT JOIN table2
		ON join_predicate;
	Trong đó:
		table1, table2 là hai bảng trái và phải của mệnh đề
		Với mỗi dòng trong bảng table1, câu truy vấn sẽ so sánh nó với tất cả các dòng trong bảng table2. Nếu có cặp dòng thỏa mãn điều kiện join_predicate thì các cột của cặp dòng thỏa mãn đó sẽ được sử dụng để kết hợp lại tạo thành 1 dòng mới trong bảng kết quả
		Nếu một dòng nào đó trong bảng table1 mà không có dòng trùng khớp trong bảng bên phải thì câu truy vấn sẽ kết hợp giá trị các cột trên dòng đó và thay giá trị các cột bảng bên phải bởi các giá trị NULL để làm kết quả truy vấn */
-- VD1: Hãy cho biết những sinh viên nào đăng ký ít nhất một môn học
		-- SELECT DISTINCT Student.* FROM Student LEFT JOIN Register ON Student.Id = Register.StudentId WHERE Register.StudentId IS NOT NULL
-- VD2: Hãy cho biết những sinh viên nào không đăng ký bất kì môn học nào
		-- SELECT DISTINCT Student.* FROM Student LEFT JOIN Register ON Student.Id = Register.StudentId WHERE Register.StudentId IS NULL
-- VD3: Hãy cho biết thông tin sinh viên mã B25DCCN101 và thông tin các môn học sinh viên đó đăng ký xếp theo thứ tự đăng ký từ sớm đến muộn
		SELECT DISTINCT Student.Id, Student.LastName, Student.FirstName, Subject.Name, Register.RegisterTime FROM Student LEFT JOIN Register ON Student.Id = Register.StudentId LEFT JOIN Subject ON Register.SubjectId = Subject.Id WHERE Student.Id = 'B25DCCN101' ORDER BY Register.RegisterTime