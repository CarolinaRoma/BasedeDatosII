USE [master]
GO
/****** Object:  StoredProcedure [dbo].[login_prof_serv]    Script Date: 05/30/2018 02:43:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[login_prof_serv]
AS
BEGIN
SET NOCOUNT ON
IF EXISTS(SELECT p.id_profesional,s.id_servicio FROM PROFESIONAL p, SERVICIO s where ID_PROFESIONAL=ID_SERVICIO)
    CREATE LOGIN [NewLogin] WITH PASSWORD='test'
ELSE
    SELECT 'no existe usuario para crear'
END
GO
