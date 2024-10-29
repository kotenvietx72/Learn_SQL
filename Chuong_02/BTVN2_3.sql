-- Câu 1: Sắp xếp danh sách môn học theo độ dài tên môn học tăng dần
	-- SELECT * FROM Subjects ORDER BY Len(Name)
-- Câu 2: Sắp xếp danh sách môn học theo số tín chỉ giảm dần, tên tăng dần
	-- SELECT * FROM Subjects ORDER BY Credit DESC, Name
-- Câu 3: Cho biết mã, tên môn học trong đó sắp xếp theo số tiết tăng dần
	-- SELECT Id, Name FROM Subjects ORDER BY NumOfLesson
-- Câu 4: Cho biết mã, tên môn học, số tín chỉ của các môn học sắp xếp theo thứ tự từ điển của loại môn học
	 SELECT Id, Name, Credit FROM Subjects ORDER BY Type