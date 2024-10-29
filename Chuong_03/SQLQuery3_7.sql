/*		Bài 3.7: Kiểu dữ liệu VARCHAR (Số lượng kí tự linh động, không có UNICODE)
	Kiểu VARCHAR trong SQL sử dụng để lưu trữ các kí tự non-Unicode với độ dài có thể biến đổi.
	Cú pháp khai báo kiểu: VARCHAR(n) trong đó n từ 1 đến 8000.
	Nếu bạn không chỉ định n thì mặc định kiểu VARCHAR sẽ lưu 1 kí tự.
	Cách khác để khai báo kiểu VARCHAR: VARCHAR(max) trong đó max định nghĩa giá trị kích thước lưu trữ tối đa: 2^31 – 1 byte.
	Thông thường kích thước lưu trữ của kiểu này là độ dài hiện thời cộng thêm 2 byte.
	Theo ISO, bạn có thể sử dụng VARCHAR, CHARVARYING, CHARACTERVARYING thay thế cho nhau. */
-- VD1: Tạo bảng với cột có kiểu VARCHAR
		CREATE TABLE TableVARCHAR(int_col INT, fullname VARCHAR(20))
-- VD2: Thêm dữ liệu hợp lệ vào bảng
		INSERT INTO TableVARCHAR(int_col, fullname) VALUES(1, 'Viet Anh')
-- VD3: Thêm dữ liệu không hợp lệ vào bảng
		INSERT INTO TableVARCHAR(int_col, fullname) VALUES(2, 'Viet Anh Qua Dep Trai Ngau Loi') -- Dài quá số lượng
		INSERT INTO TableVARCHAR(int_col, fullname) VALUES(3, N'Nguyễn Việt Anh') -- Vẫn được nhưng bị lỗi kí tự
-- VD4: Truy vấn dữ liệu trong bảng
		SELECT fullname, LEN(fullname) as length_name, DATALENGTH(fullname) AS data_length FROM TableVARCHAR