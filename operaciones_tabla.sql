-- parte 1
CREATE DATABASE Posts;

create table post (
    id serial, 
    nombre_usuario varchar(255), 
    fecha_creacion timestamp default now(), 
    contenido text, 
    descripcion text,
    PRIMARY KEY (id)
);