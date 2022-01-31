-- parte 1
CREATE DATABASE Posts;

\c Posts

create table post (
    id serial, 
    nombre_usuario varchar(255), 
    fecha_creacion timestamp default now(), 
    contenido text, 
    descripcion text,
    PRIMARY KEY (id)
);

insert into post (nombre_usuario, contenido, descripcion) values ('Pamela', 'Jjasjasjajs', 'Como reirse por internet');
insert into post (nombre_usuario, contenido, descripcion) values ('Pamela', 'wppwppwpwpwpwpw', 'Como cocinar una lasagna');
insert into post (nombre_usuario, contenido, descripcion) values ('Carlos', 'mmmmxmxmxmxmxm', 'reglas del ajedrez');

alter table post add titulo varchar (255) not null default '<sin titulo>';

update post set titulo='titulo1' where id=1;
update post set titulo='titulo2' where id=2;
update post set titulo='titulo3' where id=3;

insert into post (nombre_usuario, contenido, descripcion, titulo) values ('Pedro', 'tttttttttttsssssss', 'ruido de una serpiente', 'titulo4');
insert into post (nombre_usuario, contenido, descripcion, titulo) values ('Pedro', 'auuuuuuuuuuuuu', 'aullido de lobo', 'titulo5');

delete from post where id=3;

insert into post (nombre_usuario, contenido, descripcion, titulo) values ('Carlos', 'khjkjhkhdkjshkn', 'reglas del boxeo', 'titulo6');

create table comentarios (
    id serial,
    post_id int not null,
    fecha date default now(),
    hora_creacion timestamp default now(),
    contenido text,
    PRIMARY KEY (id),
    FOREIGN KEY (post_id) REFERENCES post (id)
);

insert into comentarios (post_id, contenido) values (1, 'jajajaja gran post');
insert into comentarios (post_id, contenido) values (1, 'jajajaja muy bueno');
insert into comentarios (post_id, contenido) values (6, 'salu2 carlos');
insert into comentarios (post_id, contenido) values (6, 'wena carlos');
insert into comentarios (post_id, contenido) values (6, 'jajajajaj carlos');
insert into comentarios (post_id, contenido) values (6, 'joasjoasojiasji carlos');

insert into post (nombre_usuario, contenido, descripcion, titulo) values ('Margarita', 'oisdjoiasdjoi', 'holaaaa', 'titulo7');

insert into comentarios (post_id, contenido) values (1, 'hola margaritaaaaa');






