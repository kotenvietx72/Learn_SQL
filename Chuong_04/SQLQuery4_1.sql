/*		Bài 4.1: Lệnh DISTINCT
	Sử dụng SELECT DISTINCT để chọn ra các giá trị không trùng lặp trong một cột nào đó của bảng
	Cú pháp:
		SELECT DISTINCT
			column_names
		FROM
			table_names
	Nếu ta chỉ định nhiều cột, các giá trị kết hợp của các cột đó sẽ được sử dụng để đối chiếu và loại bỏ những bản ghi trùng lặp
	Với giá trị NULL, DISTINCT coi tất cả các giá trị NULL là giống nhau và chỉ giữ lại 1 giá trị */
-- VD1: Cho biết tên các tỉnh/thành phố mà sinh viên đang cư trú
		SELECT DISTINCT Address FROM Student
-- VD2: Cho biết tên các chuyên ngành của các sinh viên trong danh sách
		SELECT DISTINCT Major FROM Student
-- VD3: Cho biết các chuyên ngành và đầu điểm mà sinh viên học chuyên ngành đó đang có
		SELECT DISTINCT Major, Gpa FROM Student