CREATE TABLE stringbox_carrito(
	id_stringbox BIGINT,
	id_carrito BIGINT,
	CONSTRAINT PK_stringbox_carrito PRIMARY KEY(id_stringbox,id_carrito),
	CONSTRAINT FK_stringbox_carrito_stringbox FOREIGN KEY (id_stringbox) REFERENCES stringbox (id) on delete no action on update no action,
	CONSTRAINT FK_stringbox_carrito_carrito FOREIGN KEY (id_carrito) REFERENCES carrito (id) on delete no action on update no action
);

SELECT*
	FROM stringbox_carrito;