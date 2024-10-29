/*	Bài 3.3: Kiểu dữ liệu INT
	Kiểu dữ liệu INT dùng để lưu trữ các giá trị số nguyên âm và dương.
	SQL Server hỗ trợ các kiểu số nguyên gồm:
		TINYINT kích thước 1 byte, giá trị lưu trữ từ 0 tới 255.
		SMALLINT kích thước 2 byte lưu trữ các giá trị từ -2^15 tới 2^15 – 1.
		INT kích thước 4 byte lưu trữ các giá trị từ -2^31 tới 2^31 – 1.
		BIGINT kích thước 8 byte lưu trữ được các giá trị trong khoảng -2^63 tới 2^63 – 1.
	Nên sử dụng kiểu dữ liệu nguyên nhỏ nhất có thể lưu trữ tất cả các giá trị có thể của một trường dữ liệu nào đó. Ví dụ nếu tạo cột lưu điểm số hệ 10 hoặc 100 thì chỉ cần kiểu TINYINT là đủ vì kiểu đó có thể lưu các giá trị từ 0-255.  */
-- VD1: Tạo bảng với cột điểm số kiểu INT
		-- CREATE TABLE TableINT(tinyint_col TINYINT, int_col INT, bigint_col BIGINT)
-- VD2: Chèn dữ liệu vào cột kiểu INT
		-- INSERT INTO TableINT(tinyint_col, int_col, bigint_col) VALUES(254, 2000000123, 3426324613463543)
-- VD3: Chuyển đổi giá trị số nguyên lớn hơn 2^31 – 1 sang số decimal
		SELECT 30000123 / 3 AS r1, 3000000123 / 2 AS r2 -- Phép chia chuyển từ kiểu số nguyên về kiểu decimal
		