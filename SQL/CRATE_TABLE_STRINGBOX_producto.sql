CREATE TABLE stringbox_producto(
	id_stringbox BIGINT,
	id_producto BIGINT,
	CONSTRAINT PK_stringbox_producto PRIMARY KEY(id_stringbox,id_producto),
	CONSTRAINT FK_stringbox_stringbox FOREIGN KEY (id_stringbox) REFERENCES stringbox (id) on delete no action on update no action,
	CONSTRAINT FK_stringbox_producto FOREIGN KEY (id_producto) REFERENCES productos (id) on delete no action on update no action
);

SELECT*
	FROM stringbox_producto;