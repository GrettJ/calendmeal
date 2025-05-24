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
