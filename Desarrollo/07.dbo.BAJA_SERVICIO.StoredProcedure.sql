USE [master]
GO
/****** Object:  StoredProcedure [dbo].[BAJA_SERVICIO]    Script Date: 05/30/2018 02:43:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[BAJA_SERVICIO](@ID_SERVICIO INT, @MSJ VARCHAR(30) OUTPUT) 
AS
BEGIN
IF(@ID_SERVICIO IN(SELECT @ID_SERVICIO FROM SERVICIO)) 
BEGIN
DELETE FROM SERVICIO WHERE ID_SERVICIO=@ID_SERVICIO
SET @MSJ='REGISTRO ELIMINADO' 
END
ELSE
SET @MSJ='NO EXISTE EL CODIGO EN LA BASE DE DATOS' 
END
GO
