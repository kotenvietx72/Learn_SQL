﻿-- Câu 1
	-- SELECT Id, FullName, BirthDate FROM Students
-- Câu 2
	-- SELECT Id, Name, Credit FROM Subjects
-- Câu 3
	-- SELECT Id, Gpa FROM Students
-- Câu 4
	-- SELECT * FROM Students WHERE Month(BirthDate) % 2 = 0 -- Month(BirthDate) Lấy tháng của BirthDate
-- Câu 5
	-- SELECT * FROM Students WHERE Gpa >= 3.2
-- Câu 6
	-- SELECT Name, NumOfLesson, Credit FROM Subjects
-- Câu 7
	-- SELECT Name, Credit FROM Subjects WHERE Credit IN(SELECT MAX(Credit) FROM Subjects) -- Chưa học mà cho như đúng r
-- Câu 8
	-- SELECT Name FROM Subjects WHERE Credit IN(SELECT MIN(Credit) FROM Subjects)
-- Câu 9
	-- SELECT Name FROM Subjects WHERE Type=N'Chuyên ngành'
-- Câu 10
	-- SELECT * FROM Subjects WHERE Credit IN(SELECT MAX(Credit) FROM Subjects) AND Type=N'Chuyên ngành'