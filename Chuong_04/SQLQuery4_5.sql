/*		Bài 4.5: Toán tử IN
	Toán tử IN cho phép ta kiểm tra xem liệu giá trị được chỉ định có khớp với bất kỳ giá trị nào trong danh sách cho trước hay không
	Cú pháp: column | expression IN values
	Trong đó:
		column | expression là nơi chỉ định giá trị cần kiểm tra
		Tiếp theo chỉ định một tập giá trị tại vị trí values để tiến hành kiểm tra
		Tất cả các giá trị trong tập values phải cùng kiểu với kiểu của giá trị cần đem đi kiểm tra
	Nếu bất kỳ giá trị nào trong tập giá trị values thỏa mãn giá trị cần xét, kết quả của toán tử IN sẽ là TRUE
	Toán tử IN tương đương với việc sử dụng nhiều toán tử OR liên tiếp
	Để lấy kết quả phủ định của IN ta sử dụng NOT IN. Kết quả của NOT IN sẽ TRUE nếu không có bất kỳ giá trị nào trong tập values thỏa mãn giá trị cần xét
	Ta có thể sử dụng câu truy vấn con để lấy kết quả cho tập values khi câu truy vấn sử dụng kèm toán tử IN
	Nếu danh sách các giá trị values có giá trị NULL, kết quả của toán tử IN sẽ là UNKNOWN */
-- VD1: Cho biết danh sách sinh viên có địa chỉ hoặc ở Hà Nội hoặc ở Đà Nẵng hoặc ở Hồ Chí Minh
		--SELECT * FROM Student WHERE Address IN(SELECT Address FROM Student Where Address = N'Hà Nội' OR Address = N'Đà Nẵng' OR Address = N'Hồ Chí Minh')
-- VD2: Cho biết các sinh viên có địa chỉ không thuộc các thành phố ở trên
		-- SELECT * FROM Student WHERE Address NOT IN(SELECT Address FROM Student Where Address = N'Hà Nội' OR Address = N'Đà Nẵng' OR Address = N'Hồ Chí Minh')
-- VD3: Cho biết thông tin các sinh viên đăng ký môn học C++
		-- SELECT * FROM Student WHERE Id IN(SELECT StudentId FROM Register, Subject WHERE Subject.Id = Register.SubjectId AND Subject.Name = 'C++')
-- VD4: Cho biết thông tin các môn học sinh viên mã X đăng ký
		SELECT * FROM Subject WHERE Id IN(SELECT SubjectId FROM Register WHERE Register.StudentId = 'B25DCCN102' )
		
		