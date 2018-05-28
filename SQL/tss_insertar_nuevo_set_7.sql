DROP PROCEDURE IF EXISTS tss_insertar_nuevo_set_7;
delimiter $$
create PROCEDURE tss_insertar_nuevo_set_7

(           
			id_usuario bigint,
			id_head bigint,
			cuerda_1 bigint,
            cuerda_2 bigint,
            cuerda_3 bigint,
            cuerda_4 bigint,
            cuerda_5 bigint,
            cuerda_6 bigint,
            cuerda_7 bigint

)
BEGIN

			DECLARE ref VARCHAR(200);
            DECLARE nombre VARCHAR(200);
            DECLARE fecha_add datetime;
            DECLARE idNuevoSet bigint;
            DECLARE precio_cuerda bigint;
            DECLARE precio_total bigint default 0;
            DECLARE stock_cuerda INT DEFAULT 0;
            DECLARE stock_set INT DEFAULT 1;
            DECLARE categoria INT DEFAULT 0;
            DECLARE descripcion VARCHAR(2000);
			DECLARE imagen VARCHAR(100);
            DECLARE id_prod INT DEFAULT 0;
            
			SET idNuevoSet = (select id from sets order by id desc limit 1);
            SET idNuevoSet = idNuevoSet + 1;
            SET ref = CONCAT ('TSS',id_usuario,idNuevoSet,id_head);
            SET nombre = CONCAT('TSS CUSTOM SET ',REF);
			SET fecha_add = NOW();
            
            
			set precio_cuerda = (select precio_iva from productos where id = cuerda_1);
			set precio_total = precio_total + precio_cuerda;
            set precio_cuerda = (select precio_iva from productos where id = cuerda_2);
            set precio_total = precio_total + precio_cuerda;
            set precio_cuerda = (select precio_iva from productos where id = cuerda_3);
            set precio_total = precio_total + precio_cuerda;
            set precio_cuerda = (select precio_iva from productos where id = cuerda_4);
            set precio_total = precio_total + precio_cuerda;
            set precio_cuerda = (select precio_iva from productos where id = cuerda_5);
            set precio_total = precio_total + precio_cuerda;
            set precio_cuerda = (select precio_iva from productos where id = cuerda_6);
            set precio_total = precio_total + precio_cuerda;
            set precio_cuerda = (select precio_iva from productos where id = cuerda_7);
            set precio_total = precio_total + precio_cuerda;
            set precio_total = precio_total + 3;
            
            set stock_cuerda = (select stock from productos where id = cuerda_1);
				if stock_cuerda < 1 then
					set stock_set = -1;
				end if;
            set stock_cuerda = (select stock from productos where id = cuerda_2);
				if stock_cuerda < 1 then
					set stock_set = -1;
				end if;
			set stock_cuerda = (select stock from productos where id = cuerda_3);
				if stock_cuerda < 1 then
					set stock_set = -1;
				end if;
			set stock_cuerda = (select stock from productos where id = cuerda_4);
				if stock_cuerda < 1 then
					set stock_set = -1;
				end if;
			set stock_cuerda = (select stock from productos where id = cuerda_5);
				if stock_cuerda < 1 then
					set stock_set = -1;
				end if;
			set stock_cuerda = (select stock from productos where id = cuerda_6);
				if stock_cuerda < 1 then
					set stock_set = -1;
				end if;
			set stock_cuerda = (select stock from productos where id = cuerda_7);
				if stock_cuerda < 1 then
					set stock_set = -1;
				end if;
            
            
				set categoria = 30;
				set descripcion = 'Set Custom para Guitarra Eléctrica de 7 Cuerdas';
                set imagen = '/codespace/images/productos/tsselectrica';

			insert into sets
				(num_cuerdas,categoria,nombre, referencia,id_usuario,precio_iva,date_add,stock)
			values
				(id_head,30,nombre,ref,id_usuario,precio_total,now(),stock_set);


				-- Ahora insertamos la direccion
				INSERT INTO productos_sets
					(
						id_set,id_producto
					)

				VALUES 
					(
						idNuevoSet, cuerda_1
					);
				INSERT INTO productos_sets
					(
						id_set,id_producto
					)

				VALUES 
					(
						idNuevoSet, cuerda_2
					);
                INSERT INTO productos_sets
					(
						id_set,id_producto
					)

				VALUES 
					(
						idNuevoSet, cuerda_3
					);
				INSERT INTO productos_sets
					(
						id_set,id_producto
					)

				VALUES 
					(
						idNuevoSet, cuerda_4
					);
                INSERT INTO productos_sets
					(
						id_set,id_producto
					)

				VALUES 
					(
						idNuevoSet, cuerda_5
					);
                INSERT INTO productos_sets
					(
						id_set,id_producto
					)

				VALUES 
					(
						idNuevoSet, cuerda_6
					);                
				INSERT INTO productos_sets
					(
						id_set,id_producto
					)

				VALUES 
					(
						idNuevoSet, cuerda_7
					);
                INSERT INTO productos
                    (
						id_fabricante, id_categoria,referencia,estado,nombre,descripcion,descripcion_corta,activo,ean13,precio, precio_iva,stock,date_add,imagen
                    )
				VALUES 
					(
						5,categoria,ref,1,nombre,descripcion,descripcion,1,0,precio_total, precio_total, 1, now(),imagen
                    );
				
                SET id_prod = (select id from productos order by id desc limit 1);
                
				INSERT INTO sets_productos
					(
						id_set,id_producto
					)

				VALUES 
					(
						idNuevoSet, id_prod
					);
                    
                    select s.*, sp.id_producto as id_prod, p.imagen from sets as s join sets_productos as sp on sp.id_set = s.id join productos as p on p.id = sp.id_producto where s.id = idNuevoSet;
END $$
delimiter $$