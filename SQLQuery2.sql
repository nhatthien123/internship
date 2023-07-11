-- ================================================
-- Template generated from Template Explorer using:
-- Create Trigger (New Menu).SQL
--
-- Use the Specify Values for Template Parameters 
-- command (Ctrl-Shift-M) to fill in the parameter 
-- values below.
--
-- See additional Create Trigger templates for more
-- examples of different Trigger statements.
--
-- This block of comments will not be included in
-- the definition of the function.
-- ================================================
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>

-- =============================================
CREATE TRIGGER QUANLYDOANHNGHIEP.TRG_ADD_NNPB 
   ON  QUANLYDOANHNGHIEP.nhanVienPhongBan
   AFTER INSERT
AS 
BEGIN
	INSERT INTO nhanVienPhongBan(
				maNVPB,
				maPB,
				maNV,
				ngayBatDau,
				ngayKetThuc)
			VALUES('NVPB'+(select maPB from phongBan where tenPB=N'Phòng Nhân Sự' and maPB LIKE'SI%'),
					(select maPB from phongBan where tenPB=N'Phòng Nhân Sự' and maPB LIKE'SI%'),
					(select nhanVien.maNV from nhanVien ------lay ma nv---
		inner join taiKhoan on taiKhoan.maNV=nhanVien.maNV
		where username='qwe'),
					GETUTCDATE(),
					'')
	SET NOCOUNT ON;

    -- Insert statements for trigger here

END
GO
