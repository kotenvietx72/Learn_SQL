/*		Bài 6.2: Mệnh đề HAVING
	Mệnh đề HAVING thường đi kèm với mệnh đề GROUP BY để lọc các nhóm theo các điều kiện được chỉ định
	Cú pháp của mệnh đề HAVING:
		SELECT
			columns
		FROM
			tables
		GROUP BY
		   groups
		HAVING
			conditions
	Trong đó columns có thể là các cột hoặc các hàm tổng hợp. conditions là các điều kiện mà các nhóm cần thỏa mãn
	Chỉ những nhóm thỏa mãn điều kiện, nói cách khác, có giá trị trả về là TRUE thì mới có mặt trong tập kết quả. Các nhóm sau đánh giá với điều kiện mà cho kết quả là FALSE hoặc UNKNOWN thì sẽ bị loại bỏ
	SQL Server thực thi mệnh đề HAVING sau khi thực thi mệnh đề GROUP BY nên ta không thể sử dụng các tên cột bí danh ở phần SELECT trong mệnh đề HAVING
	Ví dụ sau sẽ không thể thực thi và minh họa cho lý do trên:
		SELECT
			column1,
			aggregate_function(column2) AS column2_alias
		FROM
			table_name
		GROUP BY
			column1
		HAVING
			column2_alias > value;
	Thay vào đó ta phải chỉ định hàm tổng hợp tường minh ở mệnh đề HAVING:
		SELECT
			column1,
			aggregate_function(column2) AS column2_alias
		FROM
			table_name
		GROUP BY
			column1
		HAVING
			aggregate_function(column2) > value; */
-- VD1: Cho biết điểm Gpa lớn nhất và nhỏ nhất của các sinh viên trong danh sách theo tháng sinh. Trong đó tháng sinh là các tháng chẵn
		SELECT MONTH(BirthDate) AS Month_Date, MAX(Gpa) AS Gpa_Max, MIN(Gpa) AS Gpa_Min FROM Students GROUP BY MONTH(BirthDate) HAVING MONTH(BirthDate) % 2 = 0
-- VD2: Cho biết số lượng sinh viên ở mỗi địa chỉ. Kết quả sắp xếp giảm dần theo số lượng sinh viên. Trong đó chỉ xét các địa chỉ có từ 2 sinh viên trở lên
		SELECT Address, COUNT(StudentId) AS Count_Student FROM Students GROUP BY Address HAVING COUNT(StudentId) >= 2 ORDER BY Count_Student DESC
-- VD3: Cho biết số lượng sinh viên theo từng tháng sinh. Sắp xếp kết quả theo số lượng sinh viên giảm dần. Trong đó tháng sinh là các tháng lẻ
		SELECT MONTH(BirthDate) AS Month_Date, COUNT(StudentId) AS Count_Student FROM Students GROUP BY MONTH(BirthDate) HAVING MONTH(BirthDate) % 2 != 0 ORDER BY Count_Student DESC
-- VD4: Cho biết số lượng sinh viên theo mỗi giá trị của cột họ. Trong đó họ phải bắt đầu bằng chữ cái 't', 'h', hoặc 'n'
		SELECT LastName, COUNT(StudentId) AS Count_Student FROM Students GROUP BY LastName HAVING LastName LIKE N't%' OR LastName LIKE N'h%' OR LastName LIKE N'n%' ORDER BY Count_Student DESC
		