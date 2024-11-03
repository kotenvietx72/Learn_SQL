/*		Bài 4.2: Mệnh đề WHERE
	Khi ta sử dụng truy vấn SELECT * để lấy dữ liệu từ các bảng trong cơ sở dữ liệu, tất cả các bản ghi trong bảng sẽ được trả về
	Nếu chỉ muốn lấy các bản ghi thỏa mãn tiêu chí nào đó, ta kết hợp với sử dụng mệnh đề WHERE
	Cú pháp của lệnh SQL có bao gồm mệnh đề WHERE:
		SELECT
			columns
		FROM
			tables
		WHERE
			conditions
		ORDER BY
		   columns
	Trong đó:
		conditions chứa 1 hoặc nhiều điều kiện mà dữ liệu trong các bản ghi trong bảng chỉ định ở phần FROM phải thỏa mãn để được trả về trong tập kết quả
		Mệnh đề WHERE chỉ trả về các bản ghi thỏa mãn điều kiện trong conditions
		Trong SQL Server, biểu thức logic hoặc sự kết hợp của nhiều biểu thức logic được gọi là predicate
		Predicate được so sánh với 3 giá trị: TRUE, FALSE và UNKNOWN
		Chỉ các bản ghi có dữ liệu mà predicate thỏa mãn TRUE mới được xuất hiện trong tập kết quả
		Để kết hợp 2 hoặc nhiều điều kiện trong câu truy vấn, ta sử dụng kết hợp các toán tử AND, OR, IN, BETWEEN, LIKE. Chi tiết ta sẽ tìm hiểu lần lượt trong các bài học kế tiếp của cùng chương này */
-- VD1: Hãy cho biết thông tin của các sinh viên có điểm TB tích lũy gpa >= 3.2
		SELECT * FROM Student WHERE Gpa >= 3.2 ORDER BY Gpa Desc
-- VD2: Hãy cho biết thông tin của các sinh viên có địa chỉ ở Hà Nội, sắp xếp kết quả giảm dần theo điểm TB
		SELECT * FROM Student WHERE Address = N'Hà Nội' ORDER BY Gpa DESC
-- VD3: Hãy cho biết thông tin các sinh viên học CNTT và có điểm Tb >= 3.35, sắp xếp kết quả giảm dần theo điểm TB tích lũy gpa
		SELECT * FROM Student WHERE Major = 'CNTT' AND Gpa >= 3.35 ORDER BY Gpa DESC
		