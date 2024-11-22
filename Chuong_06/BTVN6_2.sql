﻿-- VD1: Hãy cho biết điểm TB cộng của các sinh viên tổng hợp theo các tháng sinh từ 6-12 của sinh viên trong danh sách
		-- SELECT MONTH(BirthDate) AS Month_Date, AVG(Gpa) AS Average_GPA FROM Students GROUP BY MONTH(BirthDate) HAVING MONTH(BirthDate) > 6
-- VD2: Hãy cho biết số lượng môn học ở mỗi giá trị tín chỉ >= 3 là bao nhiêu?
		-- SELECT Credit, COUNT(SubjectId) AS Count_Subject FROM Subjects GROUP BY Credit HAVING Credit >= 3 ORDER BY Count_Subject DESC
-- VD3: Hãy cho biết số lượng sinh viên đăng ký theo từng môn học. Trong đó tên môn học phải có độ dài từ 5 kí tự trở lên
		-- SELECT Subjects.Name, COUNT(Registers.StudentId) AS Count_Students FROM Subjects INNER JOIN Registers ON Subjects.SubjectId = Registers.SubjectId GROUP BY Subjects.Name HAVING LEN(Subjects.Name) >= 5
-- VD4: Hãy cho biết số lượng môn học mà mỗi sinh viên đăng ký. Chỉ xét các sinh viên đăng ký từ 3 môn học trở lên
		-- SELECT Students.StudentId, Students.LastName, Students.FirstName, COUNT(Registers.SubjectId) AS Count_Subject FROM Students, Registers WHERE Students.StudentId = Registers.StudentId GROUP BY Students.StudentId, Students.LastName, Students.FirstName HAVING COUNT(Registers.SubjectId) >= 3
-- VD5: Hãy cho biết thông tin các môn học trong bảng Subjects có sinh viên đăng ký. Không xét trạng thái đăng ký
		-- SELECT DISTINCT Subjects.* FROM Subjects, Registers WHERE Subjects.SubjectId = Registers.SubjectId
-- VD6: Hãy cho biết thông tin các môn học trong bảng Subjects không có bất kỳ sinh viên nào đăng ký
		-- SELECT DISTINCT * FROM Subjects WHERE SubjectId NOT IN(SELECT SubjectId FROM Registers)
-- VD7: Hãy cho biết thông tin những sinh viên đăng ký môn học C++. Không xét trạng thái đăng ký
		-- SELECT Students.* FROM Students, Registers, Subjects WHERE Students.StudentId = Registers.StudentId AND Registers.SubjectId = Subjects.SubjectId AND Subjects.Name = 'C++'
-- VD8: Hãy cho biết mỗi sinh viên đăng ký bao nhiêu môn học. Không xét trạng thái đăng ký
		-- SELECT Students.StudentId, Students.LastName, Students.FirstName, COUNT(Registers.SubjectId) AS Count_Subject FROM Students, Registers WHERE Students.StudentId = Registers.StudentId GROUP BY Students.StudentId, Students.LastName, Students.FirstName
-- VD9: Hãy cho biết mỗi môn học có bao nhiêu sinh viên đăng ký. Không xét trạng thái đăng ký
		-- SELECT Subjects.SubjectId, Subjects.Name, COUNT(Registers.StudentId) AS Count_Student FROM Subjects, Registers WHERE Subjects.SubjectId = Registers.SubjectId GROUP BY Subjects.SubjectId, Subjects.Name
-- VD10: Hãy cho biết thông tin các sinh viên trong bảng Students đăng ký nhiều môn học nhất. Không xét trạng thái đăng ký
		
-- VD11: Hãy cho biết thông tin các môn học trong bảng Subjects được đăng ký nhiều nhất. Không xét trạng thái đăng ký

-- VD12: Hãy cho biết thông tin các sinh viên đăng ký môn học nhiều thứ hai. Không xét trạng thái đăng ký
