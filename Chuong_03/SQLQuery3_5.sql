/*		Bài 3.5: Kiểu dữ liệu CHAR (Lưu trữ 1 đoạn kí tự, không lưu kí tự UNICODE)
	Sử dụng kiểu CHAR để lưu trữ các chuỗi ký tự non-Unicode có độ dài cố định.
	Cú pháp khai báo kiểu CHAR: CHAR(n) trong đó n từ 1 đến 8000.
	Nếu bạn bỏ qua (n) thì mặc định n sẽ là 1. Lúc này cột kiểu CHAR của bảng chỉ có thể lưu trữ các kí tự đơn.
	Khi chèn dữ liệu vào cột kiểu CHAR, nếu độ dài của dữ liệu không đủ n kí tự thì SQL Server sẽ tự thêm giá trị khoảng trắng vào cuối cho đủ n kí tự.
	Khi lấy dữ liệu ra các khoảng trắng sẽ tự động được loại bỏ.
	Nếu ta chèn dữ liệu có số kí tự lớn hơn số kí tự có thể chứa của cột kiểu CHAR thì sẽ xảy ra lỗi.
	Theo ISO, ta có thể sử dụng CHAR và CHARACTER thay thế cho nhau. */
-- VD1: Tạo bảng với cột kiểu CHAR
		-- CREATE TABLE TableChar(int_col INT, char_col CHAR(10)) -- Lưu trữ 5 kí tự
-- VD2: Thêm dữ liệu vào cột kiểu CHAR
		-- INSERT INTO TableChar(int_col, char_col) VALUES (3, 'Vanh'), (4, 'Hello')
-- VD3: Thêm dữ liệu độ dài lớn hơn khả năng lưu trữ vào cột kiểu CHAR
		-- INSERT INTO TableChar(int_col, char_col) VALUES (5, 'NonameVanhNguyen')  -- Không chèn được vì độ dài vượt quá 10 kí tự
-- VD4: Lấy dữ liệu ra từ cột kiểu CHAR
		SELECT char_col, LEN(char_col) AS char_length, DATALENGTH(char_col) AS data_length FROM TableChar
		-- Lấy dữ liệu, số kí tự, và lượng kí tự max của mỗi ô, as là gán tên cột