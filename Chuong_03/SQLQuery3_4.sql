/*	Bài 3.4: Kiểu dữ liệu DECIMAL
		Kiểu dữ liệu DECIMAL sử dụng để lưu trữ các giá trị số thực có độ chính xác với tỉ lệ cố định.
		Cú pháp để khai báo một cột nào đó là kiểu DECIMAL: DECIMAL(p, s)
		Trong đó:
			p là độ chính xác, tức tổng số các ký tự của phần thực sẽ được lưu trữ. Giá trị này nằm trong đoạn từ 1 đến 38. Giá trị mặc định là 38.
		s là số ký tự phần thập phân. Giá trị của s từ 0 đến p. Giá trị của s chỉ được xác định khi giá trị của p được chỉ định. Mặc định s bằng 0.
		Sau đây là độ chính xác và số byte sử dụng để lưu trữ:
			1-9: 5 byte
			10-19: 9 byte
			20-28: 13 byte
			29-38: 17 byte
		NUMERIC và DECIMAL là các từ đồng âm do đó có thể sử dụng thay thế cho nhau.
		Tức là NUMERIC(10, 2) tương đương DECIMAL(10, 2).
		Theo ISO, DECIMAL viết gọn là DEC nên bạn có thể khai báo DEC(10, 2) thay cho cú pháp phía trên.  */
-- VD1: Tạo bảng với cột có kiểu dữ liệu là DECIMAL
		-- CREATE TABLE TableDecimal(decimal_col DECIMAL(4, 2), int_col INT)
-- VD2: Chèn dữ liệu vào cột DECIMAL
		INSERT INTO TableDecimal(decimal_col, int_col) VALUES(30.4, 54)
		INSERT INTO TableDecimal(decimal_col, int_col) VALUES(25.454745, 67)
-- VD3: Truy vấn dữ liệu từ cột kiểu DECIMAL của bảng
		SELECT decimal_col FROM TableDecimal
-- VD4: Chèn dữ liệu vượt quá khả năng chứa của kiểu DECIMAL đã khai báo trong cột
		-- Tăng số lượng chữ số ban đầu lên
		