-- Câu 1: Cho biết top 10% sinh viên có ngày sinh nhỏ nhất
	-- SELECT TOP 10 PERCENT * FROM Students ORDER BY BirthDate 
-- Câu 2: Cho biết top 5 sinh viên có tên dài nhất. Hiển thị cả các sinh viên tên cùng độ dài thỏa mãn
	-- SELECT TOP 5 WITH TIES * FROM Students ORDER BY LEN(FullName) DESC
-- Câu 3: Cho biết top 3 môn học có số tiết học nhiều nhất
	-- SELECT TOP 3 * FROM Subjects ORDER BY NumOfLesson DESC
-- Câu 4: Cho biết top 20% các môn học có số tín chỉ nhiều nhất
SELECT TOP 20 PERCENT * FROM Subjects ORDER BY Credit DESC