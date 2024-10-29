/* SELECT TOP
SELECT TOP(expression) [PERCENT]
	[WITH TIES] (Nhiều sv có điểm bằng nhau thì in hết)
FROM
	tables
ORDER BY (ĐI kèm với cái này)
	columns
*/
-- VD1: Cho biết top 3 sinh viên có Gpa cao nhất
	-- SELECT TOP 3 WITH TIES * FROM Students ORDER BY Gpa DESC;
-- VD2: Cho biết top sinh viên nằm trong số 3 giá trị điểm trung bình cao nhất
-- VD3: Cho biết top 5% sinh viên có Gpa thấp nhất
	-- SELECT TOP 5 PERCENT * FROM Students ORDER BY Gpa
-- VD4: Cho biết top 5% sinh viên có Gpa cao nhất
	-- SELECT TOP 5 PERCENT WITH TIES * FROM Students ORDER BY Gpa DESC
