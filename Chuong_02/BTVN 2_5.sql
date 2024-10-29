-- Câu 1: Lấy 4 môn học có số tín chỉ cao nhất
SELECT * FROM Subjects ORDER BY Credit DESC OFFSET 0 ROW FETCH FIRST 4 ROW ONLY
-- Câu 2: Lấy 5 môn học sau 5 môn học đầu tiên có số tiết học cao nhất
SELECT * FROM Subjects ORDER BY NumOfLesson DESC OFFSET 5 ROW FETCH NEXT 5 ROW ONLY
-- Câu 3: Lấy 5 môn học từ vị trí k bất kỳ theo thứ tự tên môn học từ ngắn nhất đến dài nhất
SELECT * FROM Subjects ORDER BY LEN(Name) OFFSET 4 ROW FETCH NEXT 5 ROW ONLY