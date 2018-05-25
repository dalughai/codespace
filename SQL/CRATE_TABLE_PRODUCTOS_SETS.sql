
CREATE TABLE productos_sets(
	id_set BIGINT,
	id_producto BIGINT,
	CONSTRAINT PK_productos_sets PRIMARY KEY(id_set,id_producto),
	CONSTRAINT FK_sets_productos_sets FOREIGN KEY (id_set) REFERENCES sets (id) on delete no action on update no action,
	CONSTRAINT FK_sets_productos_productos FOREIGN KEY (id_producto) REFERENCES productos (id) on delete no action on update no action
);

SELECT*
	FROM productos_sets;