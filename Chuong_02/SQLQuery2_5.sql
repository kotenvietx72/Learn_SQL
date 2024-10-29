/* OFFSET FETCH
SELECT columns
FROM tables
ORDER BY
	columns [ASC|DESC]
	OFFSET offset_row{ROW | ROWS}
	FETCH {FIRST | NEXT} fetch_row {ROW | ROWS} ONLY */
-- VD1: Cho biết Id, FullName, Gpa của 5 sinh viên có điểm cao nhất
	-- SELECT Id, FullName, Gpa FROM Students ORDER BY GPA DESC OFFSET 0 ROWS FETCH FIRST 5 ROWS ONLY
-- VD2: Cho biết Id, FullName, Gpa của 5 sinh viên thứ 6 đến thứ 10 có điểm cao tiếp theo
	-- SELECT Id, FullName, Gpa FROM Students ORDER BY Gpa DESC OFFSET 5 ROW FETCH NEXT 5 ROWS ONLY
-- VD3: Cho biết Id, FullName, Gpa của 5 sinh viên cuối có điểm thấp đến cao
	-- SELECT Id, FullName, Gpa FROM Students ORDER BY Gpa OFFSET 0 ROW FETCH FIRST 5 ROW ONLY
