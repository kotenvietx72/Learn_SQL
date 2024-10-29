/*		Bài 3.9: Kiểu dữ liệu DATE (Lưu trữ thông tin ngày, tháng, năm) (YYYY-MM-DD), có thể để định dạng (DD-MM-YYYY)
	Để lưu trữ dữ liệu dạng ngày tháng trong SQL Server ta sử dụng kiểu dữ liệu DATE.
	Kiểu dữ liệu này chỉ gồm các thông tin về ngày, tháng, năm.
	Giá trị nhỏ nhất là 01-01-0001. Giá trị lớn nhất là 31-12-9999.
	Kiểu DATE sử dụng 3byte để lưu dữ liệu.
	ĐỊnh dạng string của DATE là YYYY-MM-DD:
		YYYY: gồm 4 chữ số đại diện cho năm, từ 0001 đến 9999.
		MM: gồm 2 chữ số đại diện cho tháng từ 1 đến 12.
		DD: gồm 2 chữ số đại diện cho ngày từ 01 đến 31 tùy tháng. */
-- VD1: Tạo bảng có cột BirthDate kiểu DATE
		-- CREATE TABLE TableDate(BirthDate DATE)
-- VD2: Chèn dữ liệu dạng DATE hợp lệ vào bảng
		INSERT INTO TableDate(BirthDate) VALUES('2004-06-25'), ('1963-01-03'), ('1963-10-02'), ('04-05-2004') 
-- VD3: Chèn dữ liệu dạng DATE không hợp lệ vào bảng
		-- INSERT INTO TableDate(BirthDate) VALUES('04-2004-05') -- Sai định dạng
		-- INSERT INTO TableDate(BirthDate) VALUES('2004-15-25') -- Không có tháng 15
-- VD4: Truy vấn dữ liệu trong bảng trên
		SELECT * FROM TableDate