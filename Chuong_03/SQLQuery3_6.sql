/*		Bài 3.6: Kiểu dữ liệu NCHAR (Lưu kí tự UNICODE có giới hạn kí tự 1-> 4000 kí tự, 1 kí tự dùng 2 byte)
	Sử dụng kiểu NCHAR để lưu trữ chuỗi kí tự Unicode có độ dài cố định.
	Cú pháp: NCHAR(n). Trong đó n nằm trong khoảng từ 1 đến 4000.
	Nếu số lượng kí tự của một cột có thể thay đổi thì bạn nên sử dụng kiểu VARCHAR hoặc NVARCHAR.
	Mỗi kí tự ở kiểu NCHAR sẽ sử dụng 2 byte để lưu trữ. Do đó khả năng lưu trữ của kiểu NCHAR sẽ bằng 1 nửa so với kiểu CHAR. */
-- VD1: Tạo bảng với cột kiểu NCHAR
		CREATE TABLE TableNCHAR(int_col INT, nchar_col NCHAR(15))
-- VD2: Thêm dữ liệu hợp lệ vào bảng
		INSERT INTO TableNCHAR(int_col, nchar_col) VALUES(3, 'Xin chào')
-- VD3: Thêm dữ liệu không hợp lệ vào bảng
		INSERT INTO TableNCHAR(int_col, nchar_col) VALUES(5, 'Việt Anh') -- Bị lỗi ? vì kí tự có dấu
-- VD4: Truy vấn cột kiểu NCHAR của bảng
		SELECT nchar_col, LEN(nchar_col) AS length_nchar, DATALENGTH(nchar_col) AS nchar_col FROM TableNCHAR