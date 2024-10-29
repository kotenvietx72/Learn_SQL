/*		Bài 3.8: Kiểu dữ liệu NVARCHAR (1 kí tự lưu trữ 2 byte)
	Kiểu NVARCHAR trong SQL sử dụng để lưu trữ các kí tự Unicode với độ dài có thể biến đổi.
	Cú pháp khai báo kiểu: NVARCHAR(n) trong đó n từ 1 đến 4000.
	Nếu bạn không chỉ định n thì mặc định kiểu NVARCHAR sẽ lưu 1 kí tự.
	Cách khác để khai báo kiểu NVARCHAR: NVARCHAR(max) trong đó max định nghĩa giá trị kích thước lưu trữ tối đa: 2^31 – 1 byte.
	Thông thường kích thước lưu trữ của kiểu này là 2 lần độ dài hiện thời cộng thêm 2 byte.
	Theo ISO, bạn có thể sử dụng NVARCHAR, NATIONAL CHAR VARYING, NATIONAL CHARACTER VARYING thay thế cho nhau.
	Mỗi kí tự trong kiểu này sử dụng 2 byte để lưu trữ giá trị.
	Sử dụng khi muốn hỗ trợ cả các ký tự Unicode. Nếu chỉ cần lưu trữ tiếng Anh thông thường thì cân nhắc sử dụng kiểu VARCHAR. */
-- VD1: Tạo bảng với cột có kiểu NVARCHAR
		CREATE TABLE TableNvarchar(int_col INT, fullname NVARCHAR(20)) -- trong ngoặc có thể để max
-- VD2: Thêm dữ liệu hợp lệ vào bảng
		INSERT INTO TableNvarchar(int_col, fullname) VALUES(1, N'Việt Anh'), (2, N'Trần Huy'), (3, N'Tú em')
-- VD3: Thêm dữ liệu không hợp lệ vào bảng
		-- Không có
-- VD4: Truy vấn dữ liệu trong bảng
		SELECT fullname, LEN(fullname) AS length_name, DATALENGTH(fullname) AS data_length FROM TableNvarchar