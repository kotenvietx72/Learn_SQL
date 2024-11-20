/*		Bài 6.1: Mệnh đề GROUP BY
	Mệnh đề GROUP BY cho phép bạn sắp xếp các bản ghi của câu truy vấn theo từng nhóm
	Các nhóm được định nghĩa bởi các cột mà bạn chỉ định ở trong mệnh đề GROUP BY
	Cú pháp của mệnh đề GROUP BY:
		SELECT
			columns
		FROM
			tables
		GROUP BY
			colmn1,
			column2, ...
	Trong đó, mệnh đề GROUP BY tạo nhóm cho mỗi tổ hợp được liệt kê trong trong mệnh đề GROUP BY
	Việc sử dụng mệnh đề GROUP BY cho kết quả tương tự khi ta sử dụng mệnh đề DISTINCT
	Trong thực tế người ta hay sử dụng kết hợp các hàm tổng hợp với mệnh đề GROUP BY để tạo các báo cáo tổng kết/thống kê
	Một hàm tổng hợp sẽ thực hiện một tính toán trên một nhóm và trả về một giá trị duy nhất cho mỗi nhóm
	Các hàm tổng hợp: SUM, COUNT, AVG, MIN, MAX
	Nếu muốn các cột xuất hiện trong lệnh SELECT mà không xuất hiện trong mệnh đề GROUP BY thì các cột đó phải là đầu vào xử lý cho các hàm tổng hợp
	Nếu không, câu lệnh truy vấn sẽ bị lỗi vì các cột cần select không liên quan tới mệnh đề GROUP BY */
-- VD1: Cho biết điểm Gpa lớn nhất và nhỏ nhất của các sinh viên trong danh sách theo tháng sinh
		SELECT Month(BirthDate) AS Birth_Month, MIN(Gpa) AS min_gpa, MAX(Gpa) AS max_gpa FROM Students GROUP BY Month(BirthDate)
-- VD2: Cho biết số lượng sinh viên ở mỗi địa chỉ. Kết quả sắp xếp giảm dần theo số lượng sinh viên
		SELECT Address, COUNT(StudentId) AS NumberOfStudent FROM Students GROUP BY Address ORDER BY NumberOfStudent DESC
-- VD3: Cho biết số lượng sinh viên theo từng tháng sinh. Sắp xếp kết quả theo số lượng sinh viên giảm dần
		SELECT MONTH(BirthDate) AS Birth_month, COUNT(StudentId) AS NumberOfStudents FROM Students GROUP BY MONTH(BirthDate) ORDER BY COUNT(StudentId) DESC
-- VD4: Cho biết số lượng sinh viên theo mỗi giá trị của cột họ
		SELECT LastName, COUNT(StudentId) AS NumberOfStudents FROM Students GROUP BY LastName ORDER BY NumberOfStudents DESC
	