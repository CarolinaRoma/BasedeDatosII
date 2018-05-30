USE [master]
GO
/****** Object:  StoredProcedure [dbo].[login_usuario]    Script Date: 05/30/2018 02:43:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[login_usuario]
AS
BEGIN
SET NOCOUNT ON
IF EXISTS(SELECT * FROM paciente)
    CREATE LOGIN [NewLogin] WITH PASSWORD='test'
ELSE
    SELECT 'no existe usuario para crear'
END
GO
