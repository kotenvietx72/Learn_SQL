/*		Bài 4.4: Toán tử OR
	Toán tử OR cho phép kết hợp 2 biểu thức boolean lại với nhau
	Toán tử OR cho kết quả TRUE khi một trong 2 biểu thức thỏa mãn TRUE
	Cú pháp của toán tử OR: boolean_expression1 OR boolean_expression2
	Trong biểu thức trên hai biểu thức trái và phải của toán tử OR là các biểu thức boolean hợp lệ nhận các giá trị TRUE, FALSE hoặc UNKNOWN
	Khi ta sử dụng nhiều toán tử trong câu truy vấn, SQL Server sẽ ưu tiên đánh giá toán tử AND trước sau đó đến toán tử OR
	Để thay đổi thứ tự đánh giá của toán tử ta sử dụng cặp ngoặc tròn để gom nhóm các toán tử và biểu thức theo mong muốn */
-- VD1: Cho biết thông tin các sinh viên hoặc có địa chỉ ở Hà Nội hoặc có địa chỉ ở Đà Nẵng hoặc có địa chỉ ở Hồ Chí Minh
		SELECT * FROM Student WHERE Address = N'Hà Nội' OR Address = N'Đà Nẵng' OR Address = N'Hồ Chí Minh'
-- VD2: Cho biết thông tin các sinh viên thỏa mãn các điều kiện: hoặc sinh vào tháng 5 hoặc có điểm TB >= 3.2. Kết quả sắp xếp tăng dần theo mã sinh viên
		SELECT * FROM Student WHERE MONTH(BirthDate) = 5 OR Gpa >= 3.2 ORDER BY Id 
-- VD3: Cho biết các môn học thỏa mãn: hoặc có số tín chỉ >= 4 hoặc có độ dài tên môn học >= 6 kí tự
		SELECT * FROM Subject WHERE Credit >= 4 OR LEN(Name) >= 6

