CREATE TRIGGER AUDITORIA_SERVICIO_ACTUALIZAR
ON SERVICIO
FOR UPDATE
AS
BEGIN
INSERT AUDITORIA SELECT 'DESCONOCIDO', GETDATE(), 'ACTUALIZO SERVICIO',(SELECT COUNT(NOMBRE) FROM PACIENTE),
(SELECT COUNT(APELLIDO) FROM PACIENTE), (SELECT NOMBRE_SERVICIO FROM SERVICIO) FROM UPDATED
END;