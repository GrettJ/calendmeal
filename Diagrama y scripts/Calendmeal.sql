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

CREATE SEQUENCE calendmeal.alergenos_id_seq 
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 2147483647
	START 1
	CACHE 1
	NO CYCLE;

    CREATE SEQUENCE calendmeal.ingredientes_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 2147483647
	START 1
	CACHE 1
	NO CYCLE;

    CREATE SEQUENCE calendmeal.recetas_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 2147483647
	START 1
	CACHE 1
	NO CYCLE;

    CREATE SEQUENCE calendmeal.unidades_medida_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 2147483647
	START 1
	CACHE 1
	NO CYCLE;

-- Insertar datos iniciales

INSERT INTO unidades_medida (id, nombre) VALUES (nextval('unidades_medida_id_seq'), 'gramos');
INSERT INTO unidades_medida (id, nombre) VALUES (nextval('unidades_medida_id_seq'), 'mililitros');
INSERT INTO unidades_medida (id, nombre) VALUES (nextval('unidades_medida_id_seq'), 'tazas');
INSERT INTO unidades_medida (id, nombre) VALUES (nextval('unidades_medida_id_seq'), 'cucharadas');
INSERT INTO unidades_medida (id, nombre) VALUES (nextval('unidades_medida_id_seq'), 'cucharaditas');
INSERT INTO unidades_medida (id, nombre) VALUES (nextval('unidades_medida_id_seq'), 'piezas');


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

INSERT INTO recetas (id, nombre, instrucciones) VALUES (nextval('recetas_id_seq'), 'Tarta de Zanahoria', '1. Precalentar el horno a 180°C.\n2. Mezclar la harina, el azúcar y la levadura.\n3. Añadir los huevos y la mantequilla derretida.\n4. Incorporar las zanahorias ralladas.\n5. Hornear durante 30 minutos.');
INSERT INTO recetas (id, nombre, instrucciones) VALUES (nextval('recetas_id_seq'), 'Ensalada de Lechuga y Tomate', '1. Lavar la lechuga y el tomate.\n2. Cortar en trozos pequeños.\n3. Aliñar con aceite de oliva y sal al gusto.');
INSERT INTO recetas (id, nombre, instrucciones) VALUES (nextval('recetas_id_seq'), 'Pizza Margarita', '1. Precalentar el horno a 220°C.\n2. Extender la masa de pizza.\n3. Añadir salsa de tomate, queso mozzarella y albahaca.\n4. Hornear durante 15 minutos.');
INSERT INTO recetas (id, nombre, instrucciones) VALUES (nextval('recetas_id_seq'), 'Pasta con Salsa de Queso', '1. Cocer la pasta según las instrucciones del paquete.\n2. En una sartén, calentar la nata y añadir el queso gorgonzola.\n3. Mezclar la pasta con la salsa de queso y servir caliente.');
INSERT INTO recetas (id, nombre, instrucciones) VALUES (nextval('recetas_id_seq'), 'Tortilla de Patatas', '1. Pelar y cortar las patatas en rodajas.\n2. Freír las patatas en aceite de oliva hasta que estén doradas.\n3. Batir los huevos y mezclar con las patatas.\n4. Cocinar en una sartén hasta que esté cuajada por ambos lados.');
INSERT INTO recetas (id, nombre, instrucciones) VALUES (nextval('recetas_id_seq'), 'Sopa de Ajo', '1. Pelar y picar el ajo.\n2. Sofreír el ajo en aceite de oliva.\n3. Añadir agua y llevar a ebullición.\n4. Incorporar pan troceado y cocinar durante 10 minutos.');
INSERT INTO recetas (id, nombre, instrucciones) VALUES (nextval('recetas_id_seq'), 'Crema de Calabaza', '1. Pelar y cortar la calabaza en trozos.\n2. Cocer la calabaza en agua hasta que esté tierna.\n3. Triturar con una batidora y añadir nata al gusto.\n4. Servir caliente con un toque de pimienta.');
INSERT INTO recetas (id, nombre, instrucciones) VALUES (nextval('recetas_id_seq'), 'Arroz con Curry', '1. Cocer el arroz según las instrucciones del paquete.\n2. En una sartén, calentar aceite y añadir cebolla picada.\n3. Añadir el curry y mezclar bien.\n4. Incorporar el arroz cocido y mezclar todo junto.');
INSERT INTO recetas (id, nombre, instrucciones) VALUES (nextval('recetas_id_seq'), 'Tarta de Queso', '1. Precalentar el horno a 180°C.\n2. Mezclar el queso crema con azúcar y huevos.\n3. Verter la mezcla en una base de galletas trituradas.\n4. Hornear durante 45 minutos y dejar enfriar antes de servir.');
INSERT INTO recetas (id, nombre, instrucciones) VALUES (nextval('recetas_id_seq'), 'Guiso de Puerro y Champiñones', '1. Limpiar y cortar los puerros en rodajas.\n2. Limpiar y cortar los champiñones en láminas.\n3. Sofreír los puerros y champiñones en aceite de oliva.\n4. Añadir caldo de verduras y cocinar a fuego lento durante 20 minutos.');
INSERT INTO recetas (id, nombre, instrucciones) VALUES (nextval('recetas_id_seq'), 'Tortitas de Plátano', '1. Triturar los plátanos y mezclar con harina y huevos.\n2. Calentar una sartén con un poco de aceite.\n3. Verter porciones de la mezcla en la sartén y cocinar hasta que estén doradas por ambos lados.\n4. Servir con miel o sirope al gusto.');
INSERT INTO recetas (id, nombre, instrucciones) VALUES (nextval('recetas_id_seq'), 'Sopa de Tomate', '1. Lavar y cortar los tomates en trozos.\n2. Sofreír cebolla y ajo en aceite de oliva.\n3. Añadir los tomates y cocinar a fuego lento durante 20 minutos.\n4. Triturar la mezcla y servir caliente con albahaca fresca.');
INSERT INTO recetas (id, nombre, instrucciones) VALUES (nextval('recetas_id_seq'), 'Tarta de Manzana', '1. Precalentar el horno a 180°C.\n2. Extender la masa de hojaldre en un molde.\n3. Pelar y cortar las manzanas en rodajas finas.\n4. Colocar las manzanas sobre la masa y espolvorear con azúcar moreno.\n5. Hornear durante 30 minutos.');


INSERT INTO ingredientes_alergenos (id_ingrediente, id_alergeno, ) VALUES (1, 43); -- Harina - Gluten
INSERT INTO ingredientes_alergenos (id_ingrediente, id_alergeno) VALUES (2, 2); -- Huevo - Huevo
INSERT INTO ingredientes_alergenos (id_ingrediente, id_alergeno) VALUES (3, 44); -- Mantequilla - Lactosa
INSERT INTO ingredientes_alergenos (id_ingrediente, id_alergeno) VALUES (12, 44); -- Queso Parmesano - Lactosa
INSERT INTO ingredientes_alergenos (id_ingrediente, id_alergeno) VALUES (13, 44); -- Queso Mozarella - Lactosa
INSERT INTO ingredientes_alergenos (id_ingrediente, id_alergeno) VALUES (14, 44); -- Queso Gorgonzola - Lactosa
INSERT INTO ingredientes_alergenos (id_ingrediente, id_alergeno) VALUES (19, 44); -- Leche - Lactosa
INSERT INTO ingredientes_alergenos (id_ingrediente, id_alergeno) VALUES (24, 46); -- Crema de cacahuete - Lactosa
INSERT INTO ingredientes_alergenos (id_ingrediente, id_alergeno) VALUES (27, 43); -- Hojaldre - Gluten
INSERT INTO ingredientes_alergenos (id_ingrediente, id_alergeno) VALUES (28, 44); -- Nata para cocinar - Lactosa        

INSERT INTO ingredientes_recetas (id_receta, id_ingrediente, cantidad, id_medida) VALUES (4, 1, 250, 1); -- Tarta de Zanahoria - Harina
INSERT INTO ingredientes_recetas (id_receta, id_ingrediente, cantidad, id_medida) VALUES (4, 2, 3, 5); -- Tarta de Zanahoria - Huevo
INSERT INTO ingredientes_recetas (id_receta, id_ingrediente, cantidad, id_medida) VALUES (4, 3, 100, 1); -- Tarta de Zanahoria - Mantequilla
INSERT INTO ingredientes_recetas (id_receta, id_ingrediente, cantidad, id_medida) VALUES (4, 6, 200, 1); -- Tarta de Zanahoria - Zanahoria
INSERT INTO ingredientes_recetas (id_receta, id_ingrediente, cantidad, id_medida) VALUES (1, 7, 100, 1); -- Ensalada de Lechuga y Tomate - Lechuga
INSERT INTO ingredientes_recetas (id_receta, id_ingrediente, cantidad, id_medida) VALUES (1, 8, 100, 1); -- Ensalada de Lechuga y Tomate - Tomate
INSERT INTO ingredientes_recetas (id_receta, id_ingrediente, cantidad, id_medida) VALUES (6, 1, 200, 1); -- Pizza Margarita - Harina
INSERT INTO ingredientes_recetas (id_receta, id_ingrediente, cantidad, id_medida) VALUES (6, 35, 1, 5); -- Pizza Margarita - Salsa de Tomate
INSERT INTO ingredientes_recetas (id_receta, id_ingrediente, cantidad, id_medida) VALUES (6, 13, 150, 1); -- Pizza Margarita - Queso Mozarella
INSERT INTO ingredientes_recetas (id_receta, id_ingrediente, cantidad, id_medida) VALUES (7, 25, 200, 1); -- Pasta con Salsa de Queso - Pasta
INSERT INTO ingredientes_recetas (id_receta, id_ingrediente, cantidad, id_medida) VALUES (7, 14, 100, 1); -- Pasta con Salsa de Queso - Queso Gorgonzola    



