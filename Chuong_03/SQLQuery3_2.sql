/* Bài 3.2: Kiểu dữ liệu BIT
		Kiểu BIT là một kiểu số nguyên có thể chứa các giá trị 0, 1, hoặc NULL
		SQL Server tối ưu hóa lưu trữ cho kiểu BIT. Nếu một cột nào đó có giá trị số bit là 8 hoặc nhỏ hơn, SQL Server sẽ lưu trữ cột đó với 1 byte. Nếu giá trị bit là 9-16, SQL Server sẽ sử dụng 2 byte. Cứ tiếp tục như thế
		SQL Server chuyển đổi giá trị TRUE thành 1 và FALSE thành 0. Các giá trị khác 0 coi như TRUE và được chuyển sang 1 */
-- VD1: Tạo bảng với cột kiểu BIT
		-- CREATE TABLE MyTable(int_col INT, bit_col BIT)
-- VD2: Thêm giá trị bit 1 vào cột kiểu BIT
		INSERT INTO MyTable(int_col, bit_col) VALUES (500, 1);
-- VD3: Thêm giá trị bit 0 vào cột kiểu BIT
		INSERT INTO MyTable(int_col, bit_col) VALUES (100, 0);
-- VD4: Thêm giá trị “True” vào cột kiểu BIT
		INSERT INTO MyTable(int_col, bit_col) VALUES (200, 'True');
-- VD5: Thêm giá trị “False” vào cột kiểu BIT
		INSERT INTO MyTable(int_col, bit_col) VALUES (300, 'False');
-- VD6: Thêm giá trị khác vào cột kiểu BIT
		INSERT INTO MyTable(int_col, bit_col) VALUES (300, 'Hello'); -- Không chạy được, vì không chuyển được kiểu kí tự về kiểu bit