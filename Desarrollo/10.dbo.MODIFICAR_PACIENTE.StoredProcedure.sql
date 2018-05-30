USE [master]
GO
/****** Object:  StoredProcedure [dbo].[MODIFICAR_PACIENTE]    Script Date: 05/30/2018 02:43:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[MODIFICAR_PACIENTE](@DNI int, @NOMBRE varchar(20), @APELLIDO VARCHAR(20))
AS
BEGIN
UPDATE PACIENTE SET NOMBRE=@NOMBRE
WHERE DNI=@DNI
END
GO
