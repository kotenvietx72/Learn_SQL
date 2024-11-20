/*		Bài 4.8: Đặt lại tên cho cột và bảng
	Mục đích sử dụng: khi ta sử dụng lệnh SELECT để chọn ra các dữ liệu dẫn xuất, cột dữ liệu đó không có tên
	Để đặt tên tạm thời cho cột đó nhằm đặt cho cột đó một giá trị tường minh dễ hiểu
	Sử dụng keyword AS để đặt lại tên, bí danh cho tên cột, tên bảng
	Ví dụ đếm số sinh viên đăng ký môn SQL => cột NumberOfRegistedStudent
	Chọn dữ liệu cột họ + đệm + tên -> 1 cột => cột FullName
	Khi ta thao tác trong bảng, ta cũng có thể đặt tên tương ứng cho bảng đó để cú pháp câu lệnh ngắn gọn hoặc có ngữ nghĩa hơn
	Ví dụ đặt lại tên cho bảng Student là st; bảng Register là rgs, Subject là sj
	Sau khi đặt lại tên/biệt danh cho bảng ta phải sử dụng tên mới/biệt danh mới để truy cập các cột trong bảng nếu không SQL Server sẽ báo lỗi */
-- VD1: Đặt tên cho cột kết quả truy vấn
		-- SELECT COUNT(FullName) AS Number FROM Student
-- VD2: Đặt bí danh cho bảng khi truy vấn
		SELECT DISTINCT st.FullName, st.Id, st.Gpa FROM Student AS st, Register AS rg WHERE st.Id= rg.StudentId