/*		Bài 3.10: Kiểu dữ liệu TIME (hh:mm:ss:nnnnnnn) (Phần n tối đa 7 số)
	Để lưu trữ dữ liệu dạng thời gian trong ngày vào SQL Server, ta sử dụng kiểu TIME.
	Cú pháp TIME[(f)] trong đó phần trong móc vuông là tùy chọn, chỉ định độ chính xác của giây.
	Kiểu dữ liệu này chỉ gồm các thông tin về giờ, phút, giây. Và phần lẻ của giây làm tròn đến 7 chữ số.
	Nếu bạn không chỉ định độ chính xác, mặc định nó nhận giá trị là f = 7.
	Định dạng string của TIME là hh:mm:ss[.nnnnnnn]:
		hh: gồm 2 chữ số đại diện cho giờ, từ 00 đến 59.
		mm: gồm 2 chữ số đại diện cho phút từ 00 đến 59.
		ss: gồm 2 chữ số đại diện cho giây từ 00 đến 59.
	Phần lẻ của giây nằm trong đoạn từ 0 đến 9999999.
	Một giá trị thời gian với độ chính xác 100ms cần 5 byte để lưu trữ.
	Lưu ý rằng kiểu TIME không hỗ trợ việc nhận diện múi giờ. */
-- VD1: Tạo bảng Discount có cột StartTime và EndTime kiểu Time
		CREATE TABLE Discount(Id INT, StartDate DATE, EndDate DATE, StartTime TIME, EndTime TIME)
-- VD2: Chèn dữ liệu kiểu TIME hợp lệ vào bảng
		INSERT INTO Discount(Id, StartDate, EndDate, StartTime, EndTime) VALUES(1, '2024-01-01', '2024-01-31', '00:00:00', '23:15:00'), (2, '2024-06-01', '2024-06-25', '10:59:13', '15:30:00')
-- VD3: Chèn dữ liệu kiểu TIME không hợp lệ vào bảng
		INSERT INTO Discount(Id, StartDate, EndDate, StartTime, EndTime) VALUES(1, '2024-01-01', '2024-01-31', '00:00:00', '25:00:00') -- Quá giờ
		INSERT INTO Discount(Id, StartDate, EndDate, StartTime, EndTime) VALUES(1, '2024-01-01', '2024-01-31', '00:65:00', '25:00:00') -- Quá phút
-- VD4: Truy vấn dữ liệu trong bảng trên
		SELECT * FROM Discount