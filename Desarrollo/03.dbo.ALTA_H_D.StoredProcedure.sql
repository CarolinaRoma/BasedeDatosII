USE [master]
GO
/****** Object:  StoredProcedure [dbo].[ALTA_H_D]    Script Date: 05/30/2018 02:43:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ALTA_H_D](@ID_EMPLEADO INT, @ID_SERVICIO INT, @ID_PROFESIONAL INT, @DNI INT,@FECHA_HORA DATETIME)
AS
BEGIN
INSERT TURNO(ID_EMPLEADO, ID_SERVICIO, ID_PROFESIONAL, DNI, FECHA_HORA) VALUES (@ID_EMPLEADO, @ID_SERVICIO, @ID_PROFESIONAL, @DNI, @FECHA_HORA)
END
GO
