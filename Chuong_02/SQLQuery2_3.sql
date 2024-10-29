/* Cấu trúc ORDER BY:
SELECT
	columns
FROM
	tables
ORDER BY
	columns [expression [ASC|DESC] ASC là tăng dần| DESC là giảm dần
*/
-- VD1: Cho biết Id, FullName, Gpa các sinh viên trong bảng Student, sắp xếp giảm dần của Gpa
	-- SELECT Id, FullName, Gpa FROM Students ORDER BY Gpa DESC
-- VD2: Cho biết Id, FullName, Gpa các sinh viên trong bảng Student, sắp xếp tăng dần của Gpa
	-- SELECT Id, FullName, Gpa FROM Students ORDER By Gpa -- Mặc định là tăng dần, k thì thêm ASC
-- VD3: Cho biết FullName, BirthDate, Gpa các sinh viên học chuyên ngành CNTT, sắp xếp theo điểm tăng dần, ngày sinh tăng dần
	-- SELECT FullName, BirthDate, Gpa From Students WHERE major='CNTT' ORDER BY Gpa, BirthDate
-- VD4: Cho biết tên, ngày sinh, điểm TB các sinh viên học chuyên ngành CNTT, sắp xếp theo điểm giảm dần, ngày sinh tăng dần
	-- SELECT FullName, BirthDate, Gpa FROM Students WHERE Major='CNTT' ORDER BY Gpa DESC, BirthDate
-- VD5: Cho biết mã, tên, điểm các sinh viên trong bảng Student sắp xếp tăng dần theo ngày sinh
	-- SELECT Id, FullName, Gpa FROM Students ORDER BY BirthDate 
-- VD6: Cho biết thông tin các sinh viên có trong bảng Student, sắp xếp theo độ dài họ tên tăng dần
SELECT * FROM Students ORDER BY LEN(FullName)