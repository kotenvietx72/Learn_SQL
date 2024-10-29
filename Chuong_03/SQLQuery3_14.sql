/*		Bài 3.14: Tìm hiểu về GUID
	Tất cả mọi thứ lưu trữ trong máy tính đều được đánh số định danh, ví dụ: số CMND/CCCD, mã sinh viên, mã nhân viên, số khung, số máy xe…
	Các giá trị đó là duy nhất với mỗi đối tượng nên ta nhanh chóng truy tìm được đích danh thực thể sở hữu nó
	Mã định danh toàn cục duy nhất, viết tắt là GUID(global unique identifier) là phiên bản rộng hơn của các kiểu định danh đã ví dụ ở trên
	Mỗi GUID đảm bảo duy nhất trong mọi bảng, CSDL, Server
	Trong SQL Server, GUID là một giá trị nhị phân 16 byte và được sinh ra bởi hàm NEWID()
	Trong kiểu dữ liệu UNIQUEIDENTIFIER có lưu giữ giá trị GUID này */
-- VD1: Tạo bảng Customer(Id, FullName, Email) với cột Id là UNIQUEIDENTIFIER mặc định NEWID()
		CREATE TABLE Customer(Id UNIQUEIDENTIFIER DEFAULT NEWID(), FullName NVARCHAR(50), Email VARCHAR(50))
-- VD2: Chèn dữ liệu vào bảng trên
		INSERT INTO Customer(FullName, Email) VALUES(N'Nguyễn Việt Anh', 'kotenvietx72@gmail.com'), (N'Nguyễn Việt Hùng', 'kotenhungx71@gmail.com')
-- VD3:	Truy vấn dữ liệu từ bảng trên
		SELECT * FROM Customer