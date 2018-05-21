/*
What: Script para crear la tabla productos
Why: Proyecto 1 To String Shop
Who: Sergio Álvarez García
*/

USE [tostringshop];
GO

--Compruebo si la tabla existe, si existe la borro para crearla más tarde
IF EXISTS(SELECT 1 FROM sys.tables WHERE [name]='productos')
BEGIN
	DROP TABLE productos;
	PRINT 'La tabla existía,por tanto la hemos borrado';
END
ELSE
BEGIN 
	PRINT 'No existe,no hace falta borrar';
END

--Creación de la tabla
CREATE TABLE productos(
	id BIGINT IDENTITY(1,1),
	id_fabricante int,
	id_categoria int,
	referencia varchar(100),
	estado int,
	nombre varchar(100),
	descripcion varchar(1000),
	descripcion_corta varchar(500),
	calibre int,
	activo bit,
	ean13 smallint,
	precio decimal,
	precio_iva decimal,
	stock int, 
	date_add datetime,
	date_update datetime,
	imagen varchar(200),
	CONSTRAINT PK_productos PRIMARY KEY(id),
	constraint FK_productos_categorias foreign key(id_categoria) references categorias (id) on delete no action on update cascade,
	constraint FK_productos_fabricantes foreign key(id_fabricante) references fabricantes (id) on delete no action on update cascade,
	constraint FK_productos_estado foreign key(estado) references estado_producto (id) on delete no action on update cascade
);


--------------------------------------------------------------------------------------------
	--	INSERTO VALORES--
--------------------------------------------------------------------------------------------

INSERT INTO dbo.productos(id_fabricante, id_categoria,referencia,estado,nombre,descripcion,descripcion_corta,activo,ean13,precio, precio_iva,stock,date_add,imagen)
	VALUES  ('1','1','EB2627','1','Ernie Ball EB2627','Juego de cuerdas. Calibre .011 .015 .022p .030 .042 .054 Óptimas para Afinaciones Bajas** Las cuerdas Ernie Ball Beefy Slinky son ideales para aquellos guitarristas que deseen afinar su insturmento en afinaciones alternativas por debajo del tono original y muchos metaleros han encontrado en las Not Even el set perfecto en calibres para afinaciones alternativas en Re & Do. ','Juego de cuerdas para guitarra Electrica Calibre .011 .015 .022p .030 .042 .054 ','1','','7.27','8.80','10',GETDATE(),'images\productos\EB2627'),
			('1','1','EB2626','1','Ernie Ball EB2626','Juego de cuerdas. Calibre .012 .016 .024p .032 .044 .056 Óptimas para Afinaciones Bajas** Las cuerdas Ernie Ball Not Even Slinky son ideales para aquellos guitarristas que deseen afinar su insturmento en afinaciones alternativas por debajo del tono original y muchos metaleros han encontrado en las Not Even el set perfecto en calibres para afinaciones alternativas en Re & Do. ','Juego de cuerdas para guitarra Electrica Calibre .012 .016 .024p .032 .044 .056','1','','7.80','8.80','10',GETDATE(),'images\productos\EB2626'),
			('1','1','EB2620','1','Ernie Ball EB2620','Juego de cuerdas. Calibre .011 .014 .018p .028 .038 .048 .058 Las cuerdas Ernie Ball 7st Power Slinky son profundamente alabadas por músicos de todo el mundo y pensadas para los amantes de las siete cuerdas. Además, están fabricadas con la máxima precisión y los estándares más elevados para garantizar la máxima consistencia, sonido óptimo y mayor duración..','Juego de cuerdas para guitarra Electrica Calibre .011 .014 .018p .028 .038 .048 .058 ','1','','7.80','8.80','10',GETDATE(),'images\productos\EB2620'),
			('1','1','EB2223','1','Ernie Ball EB2223','Juego de cuerdas. Calibre .008 .011 .014 .022w .030 .038 Las cuerdas Ernie Ball Extra Slinky te ofrecen ese timbre a tu guitarra mudialmente reconocido. Estas cuerdas has sido fabricadas de con la máxima precisión y los estándares más elevados para garantizar la máxima consistencia, sonido óptimo y mayor duración','Juego de cuerdas para guitarra Electrica Calibre .008 .011 .014 .022w .030 .038 ','1','','7.80','8.80','10',GETDATE(),'images\productos\EB2223'),
			('1','1','EB2222','1','Ernie Ball EB2222','Juego de cuerdas. Calibre .009 .011 .016 .026 .036 .046 Las cuerdas Ernie Ball Hybrid Slinky son una elección perfecta para quien busca la combinación de las Super y Regular Slinky. Estas cuerdas han sido fabricadas con la máxima precisión y los estándares más elevados para garantizar la máxima consistencia, sonido óptimo y mayor duración. ','Juego de cuerdas para guitarra Electrica Calibre .009 .011 .016 .026 .036 .046','1','','7.80','8.80','10',GETDATE(),'images\productos\EB2222'),
			('1','1','EB2225','1','Ernie Ball EB2225','Juego de cuerdas. Calibre .008 .011 .014 .022w .030 .038 Las cuerdas Ernie Ball Extra Slinky te ofrecen ese timbre a tu guitarra mudialmente reconocido. Estas cuerdas has sido fabricadas de con la máxima precisión y los estándares más elevados para garantizar la máxima consistencia, sonido óptimo y mayor duración.','Juego de cuerdas para guitarra Electrica Calibre .008 .011 .014 .022w .030 .038','1','','7.80','8.80','10',GETDATE(),'images\productos\EB2225'),
			('1','1','EB2221','1','Ernie Ball EB2221','Juego de cuerdas. Calibre .010 .013 .017 .026 .036 .046 Las cuerdas Ernie Ball Regular Slinky son las mas vendidas y avaladas por legiones de guitarristas por todo el mundo. Estas cuerdas han sido fabricadas de con la máxima precisión y los estándares más elevados para garantizar la máxima consistencia, sonido óptimo y mayor duración.','Juego de cuerdas para guitarra Electrica Calibre .010 .013 .017 .026 .036 .046','1','','7.80','8.80','10',GETDATE(),'images\productos\EB2221'),
			('1','1','EB2220','1','Ernie Ball EB2220','Juego de cuerdas. Calibre .011 .014 .018p .028 .038 .048 Las cuerdas Ernie Ball Power Slinky Electric Strings son perfectas para tocar Rock o Blues. Estas cuerdas has sido fabricadas con la máxima precisión y los estándares más elevados para garantizar la máxima consistencia, sonido óptimo y mayor duración.','Juego de cuerdas para guitarra Electrica Calibre .011 .014 .018p .028 .038 .048 ','1','','7.80','8.80','10',GETDATE(),'images\productos\EB2220'),
			('1','1','EB2215','1','Ernie Ball EB2215','Juego de cuerdas. Calibre .010 .014 .020w .028 .040 .050 Las cuerdas Ernie Ball Skinny Top Heavy Bottom Slinky son el juego híbrido perfecto para los guitarristas que desean bordones con calibres gruesos pero sin sacrificar la capacidad de Solos que le ofrecen calibres más finos en las primas.','Juego de cuerdas para guitarra Electrica Calibre .010 .014 .020w .028 .040 .050','1','','7.80','8.80','10',GETDATE(),'images\productos\EB2215'),
			('1','4','EB2838','1','Ernie Ball EB2838','Juego de cuerdas. Calibre .050 .070 .085 .105 Ideales para los bajos con escala larga, las cuerdas para bajo Ernie Ball Slinky Bass 6 Strings están fabricadas para ofrecer máxima claridad y pegada usando las mejores materias primas en el hermoso Coachella Valley del Sur de California.','Juego de cuerdas para bajo Electrica Calibre .050 .070 .085 .105','1','','39.17','47.40','10',GETDATE(),'images\productos\EB2838'),
			('1','4','EB2836','1','Ernie Ball EB2836','Juego de cuerdas. Calibre .040 .060 .070 .095 Las cuerdas para bajo Ernie Ball Regular Slinky StringBass están fabricadas para ofrecer máxima claridad y pegada usando las mejores materias primas en el hermoso Coachella Valley en el Sur de California.','Juego de cuerdas para bajo Electrico Calibre .040 .060 .070 .095','1','','39.17','47.40','10',GETDATE(),'images\productos\EB2836'),
			('1','4','EB2835','1','Ernie Ball EB2835','Juego de cuerdas. Calibre .050 .070 .085 .105 Las cuerdas para bajo Ernie Ball Extra Slinky StringBass están fabricadas para ofrecer máxima claridad y pegada usando las mejores materias primas en el hermoso Coachella Valley en el Sur de California.','Juego de cuerdas para bajo Electrico Calibre .050 .070 .085 .105','1','','39.17','47.40','10',GETDATE(),'images\productos\EB2835'),
			('1','4','EB2834','1','Ernie Ball EB2834','Juego de cuerdas. Calibre .045 .065 .080 .100 Las cuerdas para bajo Ernie Ball Super Slinky StringBass están fabricadas para ofrecer máxima claridad y pegada usando las mejores materias primas en el hermoso Coachella Valley en el Sur de California.','Juego de cuerdas para bajo Electrico Calibre .045 .065 .080','1','','39.17','47.40','10',GETDATE(),'images\productos\EB2834'),
			('1','4','EB2832','1','Ernie Ball EB2832','Juego de cuerdas. Calibre .050 .070 .085 .105 Las cuerdas para bajo Ernie Ball Regular Slinky StringBass están fabricadas para ofrecer máxima claridad y pegada usando las mejores materias primas en el hermoso Coachella Valley en el Sur de California.','Juego de cuerdas para bajo Electrico Calibre .050 .070 .085 .105','1','','39.17','47.40','10',GETDATE(),'images\productos\EB2832'),
			('1','4','EB2831','1','Ernie Ball EB2831','Juego de cuerdas. Calibre .050 .070 .085 .105 Las cuerdas para bajo Ernie Ball Power Slinky StringBass están fabricadas para ofrecer máxima claridad y pegada usando las mejores materias primas en el hermoso Coachella Valley en el Sur de California.','Juego de cuerdas para bajo Electrico Calibre .050 .070 .085 .105 ','1','','39.17','47.40','10',GETDATE(),'images\productos\EB2831'),
			('1','4','EB2824','1','Ernie Ball EB2824','Juego de cuerdas. Calibre .040 .060 .075 .095 .125 Las cuerdas para bajo Ernie Ball Super Slinky 5 StringBass están fabricadas para ofrecer máxima claridad y pegada usando las mejores materias primas en el hermoso Coachella Valley en el Sur de California.','Juego de cuerdas para bajo Electrico Calibre .040 .060 .075 .095 .125','1','','39.17','47.40','10',GETDATE(),'images\productos\EB2824'),
			('1','4','EB2821','1','Ernie Ball EB2821','Juego de cuerdas. Calibre .050 .070 .085 .105 .135 Las cuerdas para bajo Ernie Ball Power Slinky 5 StringBass están fabricadas para ofrecer máxima claridad y pegada usando las mejores materias primas en el hermoso Coachella Valley en el Sur de California.','Juego de cuerdas para bajo Electrico Calibre .050 .070 .085 .105 .135','1','','39.17','47.40','10',GETDATE(),'images\productos\EB2821'),
			('1','4','EB2833','1','Ernie Ball EB2833','Juego de cuerdas. Calibre .045 .065 .085 .105 Las cuerdas para bajo Ernie Ball Hybrid Slinky StringBass están fabricadas para ofrecer máxima claridad y pegada usando las mejores materias primas en el hermoso Coachella Valley en el Sur de California. Caracterizada por una combinación de las Super Slinky y Regular Slinky, el juego Hybrid ha resultado ser uno de los más populares en las tiendas de todo el mundo.','Juego de cuerdas para bajo Electrica Calibre .045 .065 .085 .105','1','','39.17','47.40','10',GETDATE(),'images\productos\EB2833');



SELECT*
	FROM productos;