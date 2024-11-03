-- VD1: Cho biết các sinh viên đăng ký môn học trong khoảng thời gian từ 00:00 đến 01:59
		SELECT * FROM Student WHERE Id IN (SELECT StudentId FROM Register WHERE DATEPART(HOUR, RegisterTime) BETWEEN 0 AND 2 )
-- VD2: Cho biết các môn học được đăng ký trong thời gian từ 01:00 đến 01:30
		SELECT * FROM Subject WHERE Id IN (SELECT SubjectId FROM Register WHERE (DATEPART(HOUR, RegisterTime) BETWEEN 0 AND 1) AND (DATEPART(MINUTE, RegisterTime) BETWEEN 0 AND 30))
-- VD3: Cho biết các sinh viên không đăng ký môn học trong thời gian từ 00:00 đến 01:59
		SELECT * FROM Student WHERE Id NOT IN (SELECT StudentId FROM Register WHERE DATEPART(HOUR, RegisterTime) BETWEEN 0 AND 2 )
-- VD4: Cho biết các môn học không được sinh viên nào đăng ký trong khoảng thời gian từ 01:00 đến 02:59
		SELECT * FROM Subject WHERE Id NOT IN (SELECT SubjectId FROM Register WHERE (DATEPART(HOUR, RegisterTime) BETWEEN 0 AND 3))