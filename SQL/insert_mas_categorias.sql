select * from categorias

INSERT INTO dbo.categorias(nombre, descripcion,activo,date_add,padre)
	VALUES  ('Cuerda Suelta G.Electrica','<p>Cuerdas para Guitarra Electrica</p>','1',GETDATE(),1),
		    ('Cuerda Suelta G.Acustica','<p>Cuerdas para Guitarra Acustica y ElectroAcustica</p>','1',GETDATE(),2),
		    ('Cuerda Suelta G.Clasica','<p>Cuerdas para Guitarra Clasica y Flamenca</p>','1',GETDATE(),3),	
			('Cuerda Suelta B.Electrico','<p>Cuerdas para Bajo Electrico</p>','1',GETDATE(),4),
			('Cuerda Suelta B.Acustico','<p>Cuerdas para Bajo Acustico y ElectroAcustio</p>','1',GETDATE(),5);

			INSERT INTO dbo.categorias(nombre, descripcion,activo,date_add,padre)
	VALUES  ('Set Cuerda G.Electrica','<p>Set de Cuerdas para Guitarra Electrica</p>','1',GETDATE(),1),
		    ('Set Cuerda G.Acustica','<p>Set de Cuerdas para Guitarra Acustica y ElectroAcustica</p>','1',GETDATE(),2),
		    ('Set Cuerda G.Clasica','<p>Set de Cuerdas para Guitarra Clasica y Flamenca</p>','1',GETDATE(),3),	
			('Set Cuerda B.Electrico','<p>Set de Cuerdas para Bajo Electrico</p>','1',GETDATE(),4),
			('Set Cuerda B.Acustico','<p>Set de Cuerdas para Bajo Acustico y ElectroAcustio</p>','1',GETDATE(),5);

select * from categorias

			