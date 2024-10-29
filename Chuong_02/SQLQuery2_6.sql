-- VD1: Tìm các sinh viên có điểm Gpa >= 3.5. Sử dụng toán tử >=
	-- SELECT * FROM Students WHERE Gpa >= 3.5
-- VD2: Tìm các sinh viên trong tên có chữ ‘n’ hoặc chữ ‘h’. Sử dụng toán tử OR và LIKE, %: kết quả trả về không phân biệt ‘n’ hay ‘N’, ‘h’ hay ‘H’ vì nó đều thỏa mãn
SELECT * FROM Students WHERE FullName LIKE '%n%' OR FullName LIKE '%h%'
-- VD3: Tìm các sinh viên không đăng ký bất kì môn học nào. Sử dụng toán tử NOT IN:
SELECT * FROM Students WHERE Id NOT IN (SELECT StudentId FROM Registers)