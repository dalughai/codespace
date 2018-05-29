
CREATE TABLE stringbox(
	id BIGINT AUTO_INCREMENT,
    id_usuario bigint not null,
    dia_fecha_entrega int,
    date_add datetime,
	CONSTRAINT PK_stringbox PRIMARY KEY(id),
	CONSTRAINT FK_stringbox_usuarios FOREIGN KEY (id_usuario) REFERENCES usuarios (id) on delete no action on update cascade
);

SELECT*
	FROM stringbox;