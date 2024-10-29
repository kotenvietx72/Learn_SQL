/*		Bài 3.12: Kiểu dữ liệu DATETIMEOFFSET
	DATETIMEOFFSET cho phép lưu trữ một thời điểm cụ thể trong thời gian bao gồm cả ngày giờ và độ lệch của nó với giờ chuẩn UTC
	Cú pháp khai báo: DATETIMEOFFSET([f])
	Trong đó f là phần dư của số giây có giá trị từ 0 đến 7
	Định dạng thời gian: YYYY-MM-DD hh:mm:ss[.nnnnnnn][ +|-hh:mm]
	Các giới hạn về ngày giờ như kiểu DATE và TIME đã tìm hiểu
		Ví dụ: 2022-12-12 23:00:25 +07:00
	Hoặc theo định dạng ISO: YYYY-MM-DD hh:mm:ss[.nnnnnnn]Z
		Ví dụ: 2022-12-31 20:30:21Z
	Định dạng múi giờ +|-hh:mm trong đó:
	+- thể hiện độ lệch sớm hay muộn hơn múi giờ số 0
	Giá trị hh:mm nằm trong đoạn từ -14:00 đến +14:00 */
-- VD1: Tạo bảng với cột có kiểu DATETIMEOFFSET
		CREATE TABLE Lesson312(CurrentDateTime DATETIMEOFFSET(0))
-- VD2: Thêm dữ liệu vào bảng
		INSERT INTO Lesson312(CurrentDateTime) VALUES('2025-10-10 12:34:16 +07:00')
-- VD3: Truy vấn dữ liệu trong bảng
		SELECT * FROM Lesson312