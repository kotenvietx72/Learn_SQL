﻿-- SELECT colums FROM table_name WHERE conditions
-- 1. Lấy tất cả các cột dữ liệu trong bảng Student
	-- Cách 1: Dùng * -- SELECT * FROM Students
	-- Cách 2: Liệt kê tất cả các cột -- SELECT Id, FullName, Address, Major, BirthDate, PhoneNumber FROM Students --(Có thể đổi thứ tự các cột)
-- 2. Lấy Id, FullName, Address trong bảng Student
	-- SELECT Id, FullName, Address From Students
-- 3. Lấy Id, FullName, Address, Major trong bảng Student sao cho sinh viên học ngành CNTT
	-- SELECT Id, FullName, Address, Major From Students WHERE Major='CNTT'
-- 4. Lấy Id, FullName của các sinh viên ở 1 địa chỉ cho trước, để N hoa ở đầu để truy vấn chữ có dấu
	-- SELECT Id, FullName FROM Students WHERE Address=N'Nghệ An'