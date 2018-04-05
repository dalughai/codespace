execute insertar_nuevo_usuario_prueba_2 'Jose','Ubago','Alvarez',1,'joseubago@gmail.com','1de3356','Calle Marmoles Nº2',29007,'Malaga','Malaga','Andalucia';


select * from usuarios;
select * from usuario_direccion;
select * from direcciones;
select id from usuarios where email = 'jose@hotmail.com'