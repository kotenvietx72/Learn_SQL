/*		Bài 4.6: Toán tử BETWEEN
	Toán tử BETWEEN cho phép xác định khoảng giá trị cần so sánh
	Cú pháp của toán tử: column | expression BETWEEN start AND end
		Trong đó:
		column | expression là giá trị cần xét
		start, end là giá trị giới hạn dưới và giới hạn trên cần thỏa mãn
	Kiểu dữ liệu của start, end và cột cần xét phải giống nhau
	Toán tử BETWEEN cho kết quả là TRUE nếu giá trị cần xét nằm trong đoạn từ start đến end
	Để lấy phủ định của BETWEEN ta sử dụng NOT BETWEEN. Giá trị của NOT BETWEEN là TRUE nếu giá trị cần xét không nằm trong đoạn start đến end
	Nếu start hoặc end là NULL thì kết quả của toán tử này là UNKNOWN
	Ta có thể thay thế toán tử BETWEEN bằng toán tử >=, <= và toán tử AND */
-- VD1: Cho biết thông tin các sinh viên có ngày sinh từ 1/1 đến 30/6
		SELECT * FROM Student WHERE MONTH(BirthDate) BETWEEN 1 AND 6
-- VD2: Cho biết thông tin các sinh viên có điểm TB từ 3.2 đến 3.6
		SELECT * FROM Student WHERE Gpa BETWEEN 3.2 AND 3.6
-- VD3: Cho biết các môn học có độ dài tên không nằm trong khoảng từ 1-6 kí tự
		SELECT * FROM Subject WHERE LEN(Name) NOT BETWEEN 1 AND 6
		