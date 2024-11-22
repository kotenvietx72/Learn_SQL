/*		Bài 7.1: Tổng quan về câu truy vấn con
	Câu truy vấn con hay subquery là câu lệnh truy vấn nằm bên trong một câu lệnh truy vấn khác như lệnh SELECT, INSERT, UPDATE, DELETE
	Thế chỗ cho biểu thức:
		Nếu câu truy vấn con trả về giá trị đơn, nó có thể được sử dụng để thế chỗ cho bất kì biểu thức tương thích nào
		VD: Hãy cho biết tên người quản lý và số nhân viên dưới quyền được quản lý bởi người đó
			SELECT
				s.LastName + ' ' + s.FirstName AS Manager,
				(
					SELECT 
						COUNT(st.ManagerId)
					FROM
						Staffs st
					WHERE 
						st.ManagerId = s.StaffId
					) AS NumberOfStaff
			FROM
				Staffs s
			WHERE
				s.ManagerId IS NULL
			ORDER BY
				NumberOfStaff DESC
	Sử dụng kèm IN hoặc NOT IN:
		Câu truy vấn con sử dụng trong toán tử IN trả về một tập gồm 1 hoặc nhiều kết quả
		Sau khi có kết quả từ câu truy vấn con, câu truy vấn ngoài sẽ sử dụng chúng để tiến hành đối chiếu đưa ra kết quả
		VD: Cho biết thông tin các nhân viên làm việc tại các cửa hàng có địa chỉ không ở Hà Nội
			SELECT 
				t.city, s.* 
			FROM 
				Staffs s, 
				Stores t 
			WHERE 
				s.StoreId = t.StoreId 
				AND t.StoreId IN( 
					SELECT   
						Stores.StoreId  
					FROM  
						Stores  
					WHERE  
						Stores.City <> N'Hà Nội' 
    );
	Sử dụng kèm ANY hoặc ALL
		VD: Cho biết tên các nhân viên bắt đầu bằng H, T hoặc D
			SELECT 
				s.LastName + ' ' + s.FirstName AS StaffName
			FROM 
				Staffs s 
			WHERE 
				s.FirstName = ANY(
					SELECT 
						Staffs.FirstName
					FROM
						Staffs
					WHERE
						Staffs.FirstName LIKE N'D%'
						OR
						Staffs.FirstName LIKE N'N%'
						OR
						Staffs.FirstName LIKE N'T%'
					)
	Sử dụng kèm EXIST hoặc NOT EXISTS
	Trong các lệnh UPDATE, DELETE, INSERT
	Trong mệnh đề FROM