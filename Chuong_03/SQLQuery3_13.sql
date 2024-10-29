/*		Bài 3.13: Kiểu dữ liệu FLOAT và REAL
	Kiểu dữ liệu FLOAT và REAL là kiểu dữ liệu xấp xỉ, sử dụng để lưu trữ các số thực dấu phẩy động
	Vì là kiểu gần đúng nên không phải tất cả giá trị trong khoảng lưu trữ của nó đều được biểu hiện một cách chính xác
	Theo chuẩn ISO, kiểu REAL còn có tên là FLOAT(24)
	Cú pháp khai báo kiểu FLOAT: FLOAT[(n)]
		Trong đó n là số bit dùng để lưu trữ phần lẻ của số thực và nằm trong đoạn từ 1-53
	Nếu không chỉ định n thì mặc định n = 53
	Có hai khả năng với giá trị của n:
		Nếu n từ 1-24: độ chính xác của số thực là 7 chữ số sau phần thập phân và dùng 4 byte để lưu trữ
		Nếu n từ 25-53: độ chính xác của số thực là 15 chữ số sau phần thập phân và dùng 8 byte để lưu trữ
	Khái niệm độ chính xác kép tương đương FLOAT(53)
	Khoảng giá trị:
		FLOAT: -1.79E+308 đến -2.23E-308, 0 và 2.23E-308 đến 1.79E+308
		REAL: -3.4E+38 đến -1.18E-38, 0 và 1.18E-38 đến 3.4E+38
	Tất cả các giá trị kiểu FLOAT sẽ được xén bỏ phần sau dấu phẩy khi chuyển sang các kiểu số nguyên INT
	Để chuyển đổi giá trị kiểu FLOAT hoăc REAL sang kiểu kí tự, sử dụng hàm STR(). Bạn cũng có thể sử dụng CAST() nhưng ít phổ biến hơn
	Khi lưu trữ giá trị số vào bảng ta không cần để cặp dấu nháy ” hay “” bao quanh giá trị trong câu lệnh UPDATE, INSERT */
-- VD1: Tạo bảng Student2(Id, FullName, Gpa) trong đó Gpa là một trường kiểu FLOAT
		CREATE TABLE Student2(Id INT, FullName NVARCHAR(50), Gpa FLOAT(2))
-- VD2: Thêm dữ liệu hợp lệ vào bảng
		INSERT INTO Student2(Id, FullName, Gpa) VALUES(1, N'Việt Anh', 7.08), (2, N'Huy Trần', 9.35), (3, N'Tú em', '9.35')
-- VD3: Thêm dữ liệu không hợp lệ vào bảng
		INSERT INTO Student2(Id, FullName, Gpa) VALUES(1, N'Việt Anh', 7.08), (2, N'Huy Trần', '3.45ofghjfdg') -- Chuỗi string không chuyển về được kiểu FLOAT
-- VD4: Truy vấn dữ liệu trong bảng Student2
		SELECT Gpa FROM Student2
		SELECT CAST(Gpa AS INT) FROM Student2 -- Ép kiểu số thực sang số nguyên
		