USE [TRABAJO_PRACTICO]
GO
/****** Object:  StoredProcedure [dbo].[ALTA_PROFESIONAL]    Script Date: 04/16/2018 22:59:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ALTA_PROFESIONAL](@ID_PROFESIONAL int, @MATRICULA int, @NOMBRE varchar(20),@APELLIDO varchar(20), @HORA_ENTRADA INT, @HORA_SALIDA INT)
AS
BEGIN
INSERT INTO PROFESIONAL(ID_PROFESIONAL,MATRICULA,NOMBRE,APELLIDO,HORA_ENTRADA, HORA_SALIDA) VALUES (@ID_PROFESIONAL,@MATRICULA,@NOMBRE,@APELLIDO, @HORA_ENTRADA, @HORA_SALIDA)
END
GO
