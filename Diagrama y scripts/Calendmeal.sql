CREATE TABLE ingredientes (
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(255) NOT NULL
);

CREATE TABLE recetas (
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(255) NOT NULL,
    instrucciones TEXT NOT NULL
);

CREATE TABLE unidades_medida (
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(255) NOT NULL
);

CREATE TABLE alergenos (
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(255) NOT NULL
);

CREATE TABLE ingredientes_recetas (
    id_receta INTEGER NOT NULL,
    id_ingrediente INTEGER NOT NULL,
    cantidad SMALLINT NOT NULL,
    id_medida INTEGER NOT NULL,
    PRIMARY KEY (id_receta, id_ingrediente),
    FOREIGN KEY (id_receta) REFERENCES recetas(id) ON UPDATE CASCADE ON DELETE CASCADE,
    FOREIGN KEY (id_ingrediente) REFERENCES ingredientes(id) ON UPDATE CASCADE ON DELETE CASCADE,
    FOREIGN KEY (id_medida) REFERENCES unidades_medida(id) ON UPDATE CASCADE ON DELETE CASCADE
);

CREATE TABLE ingredientes_alergenos (
    id_ingrediente INTEGER NOT NULL,
    id_alergeno INTEGER NOT NULL,
    PRIMARY KEY (id_ingrediente, id_alergeno),
    FOREIGN KEY (id_ingrediente) REFERENCES ingredientes(id) ON UPDATE CASCADE ON DELETE CASCADE,
    FOREIGN KEY (id_alergeno) REFERENCES alergenos(id) ON UPDATE CASCADE ON DELETE CASCADE
);

INSERT INTO alergenos (id, nombre) VALUES (nextval('alergenos_id_seq'), 'Marisco');
INSERT INTO alergenos (id, nombre) VALUES (nextval('alergenos_id_seq'), 'Huevo');
INSERT INTO alergenos (id, nombre) VALUES (nextval('alergenos_id_seq'), 'Mostaza');
INSERT INTO alergenos (id, nombre) VALUES (nextval('alergenos_id_seq'), 'Apio');
INSERT INTO alergenos (id, nombre) VALUES (nextval('alergenos_id_seq'), 'Sesamo');
INSERT INTO alergenos (id, nombre) VALUES (nextval('alergenos_id_seq'), 'Pescado');
INSERT INTO alergenos (id, nombre) VALUES (nextval('alergenos_id_seq'), 'Gluten');
INSERT INTO alergenos (id, nombre) VALUES (nextval('alergenos_id_seq'), 'Lactosa');
INSERT INTO alergenos (id, nombre) VALUES (nextval('alergenos_id_seq'), 'Frutos Secos');
INSERT INTO alergenos (id, nombre) VALUES (nextval('alergenos_id_seq'), 'Cacahuete');


INSERT INTO ingredientes (id, nombre) VALUES (nextval('ingredientes_id_seq'), 'Harina');
INSERT INTO ingredientes (id, nombre) VALUES (nextval('ingredientes_id_seq'), 'Huevo');
INSERT INTO ingredientes (id, nombre) VALUES (nextval('ingredientes_id_seq'), 'Mantequilla');
INSERT INTO ingredientes (id, nombre) VALUES (nextval('ingredientes_id_seq'), 'Aceite de Oliva');
INSERT INTO ingredientes (id, nombre) VALUES (nextval('ingredientes_id_seq'), 'Levadura');
INSERT INTO ingredientes (id, nombre) VALUES (nextval('ingredientes_id_seq'), 'Zanahoria');
INSERT INTO ingredientes (id, nombre) VALUES (nextval('ingredientes_id_seq'), 'Lechuga');
INSERT INTO ingredientes (id, nombre) VALUES (nextval('ingredientes_id_seq'), 'Tomate');
INSERT INTO ingredientes (id, nombre) VALUES (nextval('ingredientes_id_seq'), 'Calabacin');
INSERT INTO ingredientes (id, nombre) VALUES (nextval('ingredientes_id_seq'), 'Calabaza');
INSERT INTO ingredientes (id, nombre) VALUES (nextval('ingredientes_id_seq'), 'Mostaza');
INSERT INTO ingredientes (id, nombre) VALUES (nextval('ingredientes_id_seq'), 'Queso Parmesano');
INSERT INTO ingredientes (id, nombre) VALUES (nextval('ingredientes_id_seq'), 'Queso Mozarella');
INSERT INTO ingredientes (id, nombre) VALUES (nextval('ingredientes_id_seq'), 'Queso Gorgonzola');
INSERT INTO ingredientes (id, nombre) VALUES (nextval('ingredientes_id_seq'), 'Azucar');
INSERT INTO ingredientes (id, nombre) VALUES (nextval('ingredientes_id_seq'), 'Sal');
INSERT INTO ingredientes (id, nombre) VALUES (nextval('ingredientes_id_seq'), 'Agua');
INSERT INTO ingredientes (id, nombre) VALUES (nextval('ingredientes_id_seq'), 'Patata');
INSERT INTO ingredientes (id, nombre) VALUES (nextval('ingredientes_id_seq'), 'Leche');
INSERT INTO ingredientes (id, nombre) VALUES (nextval('ingredientes_id_seq'), 'Miel');
INSERT INTO ingredientes (id, nombre) VALUES (nextval('ingredientes_id_seq'), 'Ajo');
INSERT INTO ingredientes (id, nombre) VALUES (nextval('ingredientes_id_seq'), 'Lima');
INSERT INTO ingredientes (id, nombre) VALUES (nextval('ingredientes_id_seq'), 'Limon');
INSERT INTO ingredientes (id, nombre) VALUES (nextval('ingredientes_id_seq'), 'Crema de cacahuete');
INSERT INTO ingredientes (id, nombre) VALUES (nextval('ingredientes_id_seq'), 'Puerro');
INSERT INTO ingredientes (id, nombre) VALUES (nextval('ingredientes_id_seq'), 'Champiñones');
INSERT INTO ingredientes (id, nombre) VALUES (nextval('ingredientes_id_seq'), 'Hojaldre');
INSERT INTO ingredientes (id, nombre) VALUES (nextval('ingredientes_id_seq'), 'Nata para cocinar');
INSERT INTO ingredientes (id, nombre) VALUES (nextval('ingredientes_id_seq'), 'Azucar morena');
INSERT INTO ingredientes (id, nombre) VALUES (nextval('ingredientes_id_seq'), 'Yogur');
INSERT INTO ingredientes (id, nombre) VALUES (nextval('ingredientes_id_seq'), 'Brocoli');
INSERT INTO ingredientes (id, nombre) VALUES (nextval('ingredientes_id_seq'), 'Pasta');
INSERT INTO ingredientes (id, nombre) VALUES (nextval('ingredientes_id_seq'), 'Arroz');
INSERT INTO ingredientes (id, nombre) VALUES (nextval('ingredientes_id_seq'), 'Curry');
INSERT INTO ingredientes (id, nombre) VALUES (nextval('ingredientes_id_seq'), 'Tomate frito');





