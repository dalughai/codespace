DROP PROCEDURE IF EXISTS tss_insertar_producto_stringbox;
delimiter $$
create PROCEDURE tss_insertar_producto_stringbox

(           id_carrito bigint,
			id_stringbox bigint,
			descripcion varchar(9000)
)
BEGIN
			DECLARE id_producto BIGINT DEFAULT 0;
            DECLARE ref VARCHAR(200);
			DECLARE nombre varchar(200);
            DECLARE descripcion_corta varchar(1000);
            DECLARE imagen varchar(100);
            DECLARE precio_total BIGINT DEFAULT 0;
			
			
            
            
            SET ref = CONCAT('TSS',id_stringbox,'SB');
            SET nombre = CONCAT('TSS STRING BOX ',ref);
			SET descripcion_corta = 'String Box Customizable';
			SET imagen = '/codespace/images/productos/stringbox';
            SET precio_total = (select SUM(p.precio_iva * cp.cantidad) from carrito as c join carrito_producto as cp on cp.id_carrito = c.id join productos as p on p.id = cp.id_producto where c.id = id_carrito);
            
            INSERT INTO productos
                    (
						id_fabricante, id_categoria,referencia,estado,nombre,descripcion,descripcion_corta,activo,ean13,precio, precio_iva,stock,date_add,imagen
                    )
				VALUES 
					(
						5,32,ref,1,nombre,descripcion,descripcion_corta,1,0,precio_total, precio_total,15, now(),imagen
                    );
            SET id_producto = (select id from productos order by id desc limit 1);
                        
            insert into stringbox_producto
				(id_stringbox,id_producto)
			values
				(id_stringbox,id_producto);
                
			select * from productos order by id desc limit 1;
			
END $$
delimiter $$