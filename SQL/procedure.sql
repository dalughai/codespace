USE tostringshop
GO
-- Stored Procedure to INSERT INTO dbo.Pacientes

create PROCEDURE tss_insertar_nuevo_usuario

(           @nombre VARCHAR(50),
            @apellido1 VARCHAR(50),
            @apellido2 VARCHAR(50),
			@sexo tinyint,
			@email varchar(100),
			@passwd varchar(30),
			@direccion varchar(200),
			@codigo_postal smallint,
			@ciudad varchar(30),
			@provincia varchar(30),
			@comunidad_autonoma varchar(30)
)
as
BEGIN
    DECLARE @idUsuario BIGINT;
	DECLARE @idDireccion BIGINT;
	DECLARE @active tinyint;
	DECLARE @fecha_add DATETIME;
    --Inicio para manejo o captura de posibles errores.
    BEGIN TRY;
        -- iniciar transaccion
        BEGIN TRANSACTION;    -- Tambien se podria usar BEGIN TRAN;
            SET @active = 0;
			SET @fecha_add = GETDATE();
                INSERT INTO usuarios
                    (   
                        nombre, apellido_1, apellido_2, sexo, active, email, passwd, date_add	
                    )
                
                 VALUES
                    (   
						@nombre, @apellido1, @apellido2, @sexo, @active, @email, @passwd, @fecha_add
                    );
				--Una vez insertado el usuario, nos hacemos con su id 
			SET @idUsuario = (select top(1) id from usuarios order by id desc);

				-- Ahora insertamos la direccion
				INSERT INTO direcciones
					(
						direccion, codigo_postal, ciudad, provincia, comunidad_autonoma, date_add
					)

				VALUES 
					(
						@direccion, @codigo_postal, @ciudad, @provincia, @comunidad_autonoma, @fecha_add
					)
				--Una vez insertado la direccion, nos hacemos con su id 
			SET @idDireccion = (select top(1) id from direcciones order by id desc);
				
				--Ahora que tenmos ambas ids vamos a insertarlas en la tabla usuario_direccion
				INSERT INTO usuario_direccion
					(
						id_usuario,id_direccion
					)
				VALUES
					(
						@idUsuario, @idDireccion
					)
				-- Ahora añadimos el id de la direccion principal a la tabla usuarios.
				UPDATE usuarios SET direccion = @idDireccion WHERE id = @idUsuario;

COMMIT TRANSACTION;  -- Tambien se podria usar COMMIT;
    END TRY
    BEGIN CATCH
        -- Compruebo si hay transaccion activa
        IF @@TRANCOUNT > 0
        BEGIN
            -- Si la hay, la deshacemos
            ROLLBACK TRANSACTION;
            PRINT 'Error capturado. Operacion cancelada...';
			print @@error;
        END
    END CATCH


END