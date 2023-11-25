/*
Thống kê số lượng cầu thủ của mỗi câu lạc bộ
*/
SELECT TENCLB, COUNT(MACT) AS CNT
FROM CAUTHU
LEFT JOIN CAULACBO
ON CAUTHU.MACLB=CAULACBO.MACLB
GROUP BY TENCLB
 
/*
Thống kê số lượng cầu thủ nước ngoài (có quốc tịch khác Việt Nam) của mỗi câu lạc bộ
*/
SELECT MACLB, COUNT(MACT) AS CNT
FROM CAUTHU
WHERE MAQG!='VN'
GROUP BY MACLB
 
SELECT * FROM CAUTHU
/*
Cho biết mã câu lạc bộ, tên câu lạc bộ, tên sân vận động, địa chỉ và số lượng cầu thủ
nước ngoài (có quốc tịch khác Việt Nam) tương ứng của các câu lạc bộ có nhiều hơn
2 cầu thủ nước ngoài.
*/
SELECT CLB.MACLB,TENCLB,TENSAN,SANVD.DIACHI,COUNT(MACT) FROM
 CAULACBO AS CLB INNER JOIN SANVD ON CLB.MASAN =SANVD.MASAN
 INNER JOIN CAUTHU ON CAUTHU.MACLB=CLB.MACLB
 WHERE CAUTHU.MAQG NOT LIKE 'VN%'GROUP BY CLB.MACLB,TENCLB,TENCLB,TENSAN,SANVD.DIACHI
 HAVING COUNT(MACT)>=2;
 
/*
Cho biết tên tỉnh, số lượng cầu thủ đang t hi đấu ở vị trí tiền đạo trong các câu lạc
bộ thuộc địa bàn tỉnh đó quản l
*/
SELECT * FROM CAUTHU
 SELECT TENTINH,COUNT(MACLB) FROM TINH INNER JOIN CAULACBO AS CLB
 ON TINH.MATINH=CLB.MATINH
 WHERE MACLB IN (SELECT MACLB FROM CAUTHU WHERE VITRI=N'Tiền Đạo')
 GROUP BY TENTINH;
/*
Cho biết tên câu lạc bộ, tên tỉnh mà CLB đang đóng nằm ở vị trí cao nhất của bảng
xếp hạng vòng 3, năm 2009
*/
SELECT * FROM BANGXH WHERE VONG=3
SELECT TENCLB,TENTINH FROM CAULACBO AS CLB INNER JOIN TINH
ON TINH.MATINH=CLB.MATINH
WHERE MACLB IN (SELECT TOP(1) MACLB FROM BANGXH WHERE VONG=3 ORDER BY HANG);