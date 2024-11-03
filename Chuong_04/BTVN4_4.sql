-- VD1: Hãy cho biết thông tin các sinh viên sinh vào tháng 6 hoặc tháng 10 sắp xếp tăng dần theo mã sinh viên
		SELECT * FROM Student WHERE MONTH(BirthDate) = 6 OR MONTH(BirthDate) = 10 ORDER BY Id 
-- VD2: Hãy cho biết thông tin các môn học có số tín chỉ > 3 hoặc có số tiết học từ 45 trở lên
		SELECT * FROM Subject WHERE Credit > 3 OR NumOfLesson >= 45
-- VD3: Hãy cho biết thông tin các sinh viên thỏa mãn điều kiện: hoặc có tên dài nhất hoặc có điểm TB cao nhất
		SELECT * FROM Student WHERE Gpa = (SELECT MAX(Gpa) FROM Student) OR LEN(FullName) = ( SELECT TOP 1 (LEN(FullName)) FROM Student ORDER BY LEN(FullName) DESC )