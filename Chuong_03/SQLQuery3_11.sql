/*		Bài 3.11: Kiểu dữ liệu DATETIME2 (YYYY-MM-DD hh:mm:ss.nnnnn) (phần n là phần dư tuỳ chọn)
	Để lưu trữ cả thời gian ngày và giờ vào CSDL, ta sử dụng kiểu DATETIME2.
	Cú pháp khai báo kiểu DATETIME2: DATETIME2(f).
		Trong đó giá trị của f là số nguyên từ 0 đến 7 chỉ định độ chính xác của phần giây trong thời gian.
		Ví dụ tạo cột StartTime DATETIME2(3) thì ta đã tạo cột StartTime kiểu DATETIME2 với độ chính xác 3 chữ số sau phần thập phân của số giây.
	DATETIME2 gồm 2 thành phần:
		Ngày tháng giới hạn từ 0001-01-01 đến 9999-12-31.
		Giờ phút giới hạn từ 00:00:00 tới 23:59:59.9999999.
	Kích thước dữ liệu để lưu trữ giá trị kiểu này tùy theo độ chính xác của số giây:
		Dùng 6 byte lưu trữ nếu độ chính xác dưới 3 chữ số.
		Dùng 7 byte lưu trữ nếu độ chính xác từ 3-4 chữ số.
		Dùng 8 byte lưu trữ nếu độ chính xác từ 5-7 chữ số.
	Định dạng của DATETIME2: YYYY-MM-DD hh:mm:ss[.nnnnnnn]
	Trong đó phần ngày phân tách với phần giờ bằng 1 dấu cách. Phần lẻ của giây là tùy chọn.
	Giới hạn ngày, giờ giống như giới hạn trong kiểu DATE và TIME đã nói ở bài học phía trước. */
-- VD1: Tạo bảng Discount có cột StartTime và EndTime kiểu DATETIME2
		CREATE TABLE DiscountEvent(Id INT, Name NVARCHAR(50), StartTime DATETIME2(2), EndTime DATETIME2(2), Amount FLOAT)
-- VD2: Chèn dữ liệu kiểu DATETIME2 hợp lệ vào bảng
		INSERT INTO DiscountEvent(Name, StartTime, EndTime, Amount) VALUES(N'Khuyến mãi 8/8', '2025-08-08 08:08:08', '2025-08-15 23:59:59', 30)
-- VD3: Chèn dữ liệu kiểu DATETIME2 không hợp lệ vào bảng
		INSERT INTO DiscountEvent(Name, StartTime, EndTime, Amount) VALUES(N'Khuyến mãi 8/8', '2025-08-08:08:08:08', '2025-08-15 23:59:59', 30) -- Sai định dạng StartTime
-- VD4: Truy vấn dữ liệu trong bảng trên
		SELECT * FROM DiscountEvent