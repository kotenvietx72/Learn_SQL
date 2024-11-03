/*		Bài 4.7: Toán tử LIKE
	Toán tử LIKE sử dụng để lọc dữ liệu xem có khớp với mẫu cho trước không
	Toán tử LIKE thường sử dụng trong mệnh đề WHERE của các câu lệnh SELECT, UPDATE, DELETE
	Cú pháp sử dụng toán tử LIKE: column | expression LIKE pattern [ESCAPE escape_character]
	Trong đó pattern là chuỗi kí tự để tiến hành tìm kiếm trong các cột hoặc biểu thức
	Pattern có thể chứa các kí tự sau:
		Kí tự %: khớp với bất kỳ 0, 1 hoặc nhiều kí tự
		Kí tự _: bất kì kí tự đơn nào
		Tập [các kí tự]: bất kì kí tự nào trong tập kí tự chỉ định bên trong cặp móc vuông
		Tập [a-z]: khớp với bất kì kí tự nào trong khoảng từ a-z
		Kí tự [^abc]: khớp với bất kì kí tự nào khác a, b, c
	Các kí tự đại diện(wildcard characters) giúp cho toán tử LIKE mềm dẻo hơn toán tử so sánh =, !=
	Phần [ESCAPE escape_character] là tùy chọn dùng để coi 1 kí tự đơn đại diện nào đó như kí tự thông thường
	Để lấy giá trị phủ định của LIKE ta sử dụng NOT LIKE. NOT LIKE trả về TRUE nếu biểu thức của LIKE là FALSE */
-- VD1: Cho biết thông tin các sinh viên có tên bắt đầu bằng chữ 'h'
		SELECT * FROM Student WHERE FullName LIKE '%h%'
-- VD2: Cho biết thông tin các sinh viên bắt đầu bằng chữ 'h', chữ 'a' hoặc chữ 't'
		SELECT * FROM Student WHERE FullName LIKE 'h%' OR FullName LIKE 'a%' OR FullName LIKE 't%'
-- VD3: Cho biết mã, họ và tên, điểm TB các sinh viên ở địa chỉ bắt đầu bằng chữ 'Đ' hoặc chữ 'H'
		SELECT Id, FullName, Gpa FROM Student WHERE Address LIKE N'Đ%' OR Address LIKE 'H%'
-- VD4: Cho biết mã, tên, điểm TB các sinh viên trong tên có chữ cái thứ 2 là 'o'
		SELECT Id, FullName, Gpa FROM Student WHERE FullName LIKE '_o%'
-- VD5: Cho biết mã, tên, điểm TB các sinh viên có tên kết thúc bằng chữ 'g'
		SELECT Id, FullName, Gpa FROM Student WHERE FullName LIKE '%g'
-- VD6: Cho biết mã, tên, điểm TB các sinh viên trong tên không có chữ 'n'
		SELECT Id, FullName, Gpa FROM Student WHERE FullName NOT LIKE '%n%'
		