/*		Bài 5.10: INNER JOIN
	Cú pháp:
		SELECT
			columns
		FROM
			table1
			INNER JOIN table2
			ON join_predicate;
	Đầu tiên ta xác định tên các cột cần lấy dữ liệu trong phần columns
	Sau đó chỉ định tên hai bảng tham gia vào kết nối INNER JOIN table1, table2
	Sau cùng ta thiết lập điều kiện kết nối bảng ở join_predicate. Điều kiện nối bảng thường áp dụng với khóa chính, khóa ngoại hoặc các cột có giá trị duy nhất trong bảng.
	INNER JOIN sẽ tìm trong hai bảng table1, table2 và tìm ra các hàng thỏa mãn điều kiện nối bảng. Lúc này nếu tìm thấy cặp dòng thỏa mãn join_predicate thì các cột của cặp dòng đó sẽ được lấy ra kết hợp lại để tạo một dòng mới và đưa vào tập kết quả.
	Lưu ý rằng INNER keyword là tùy chọn, ta có thể thay INNER JOIN thành JOIN và cho kết quả tương đương.
	Hình sau minh họa inner join giữa hai bảng. Các hình với hoa văn khác nhau có thể coi như các bản ghi trong hai bảng. Kết quả của INNER JOIN là hai cặp trùng nhau trong hai bảng tham gia */
-- VD1: Hãy cho biết mã, họ, tên các sinh viên đã đăng ký ít nhất một môn học. Kết quả không được phép trùng lặp
		SELECT DISTINCT Student.Id, FirstName, LastName FROM Student INNER JOIN Register ON Student.id = Register.StudentId
-- VD2: Hãy cho biết mã, tên các sinh viên không đăng ký bất kỳ môn học nào. Kết quả không hiển thị trùng lặp
		SELECT Id, LastName, FirstName FROM Student WHERE Id NOT IN(SELECT StudentId FROM Register) -- Nhanh hơn INNER JOIN
-- VD3: Hãy cho biết sinh viên Trần Dũng mã B25DCCN101 đăng ký những môn học nào
		SELECT Student.Id, Student.LastName, Student.FirstName, Subject.Name FROM Student INNER JOIN Register ON Student.Id = Register.StudentId INNER JOIN Subject ON Register.SubjectId = Subject.Id WHERE Student.Id = N'B25DCCN101'
-- VD4: Hãy cho biết số lượng môn học từng sinh viên đăng ký. Sắp xếp giảm dần theo số lượng đăng ký
		SELECT Student.Id, Student.LastName, Student.FirstName, Count(Register.SubjectId) AS NumberRegister FROM Student INNER JOIN Register ON Student.Id = Register.StudentId GROUP BY Student.Id, Student.LastName, Student.FirstName ORDER BY Count(Register.SubjectId) DESC
		
