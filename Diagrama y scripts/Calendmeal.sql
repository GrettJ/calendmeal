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

-- Insertar datos iniciales

INSERT INTO unidades_medida (id, nombre) VALUES (nextval('unidades_medida_id_seq'), 'gramos');
INSERT INTO unidades_medida (id, nombre) VALUES (nextval('unidades_medida_id_seq'), 'mililitros');
INSERT INTO unidades_medida (id, nombre) VALUES (nextval('unidades_medida_id_seq'), 'tazas');
INSERT INTO unidades_medida (id, nombre) VALUES (nextval('unidades_medida_id_seq'), 'cucharadas');
INSERT INTO unidades_medida (id, nombre) VALUES (nextval('unidades_medida_id_seq'), 'cucharaditas');
INSERT INTO unidades_medida (id, nombre) VALUES (nextval('unidades_medida_id_seq'), 'unidades');


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
INSERT INTO alergenos (id, nombre) VALUES (nextval('alergenos_id_seq'), 'Carne');

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
INSERT INTO recetas (id, nombre, instrucciones) VALUES (nextval('recetas_id_seq'), 'Ensalada César', '1. Lavar y trocear la lechuga.\n2. Cocer los huevos y cortarlos en cuartos.\n3. Mezclar la lechuga con los huevos, crutones y aderezo César.\n4. Servir fría con queso parmesano rallado por encima.');
INSERT INTO recetas (id, nombre, instrucciones) VALUES (nextval('recetas_id_seq'), 'Tarta de Chocolate', '1. Precalentar el horno a 180°C.\n2. Derretir el chocolate y mezclar con mantequilla y azúcar.\n3. Añadir los huevos y mezclar bien.\n4. Incorporar la harina y verter en un molde.\n5. Hornear durante 25 minutos.');
INSERT INTO recetas (id, nombre, instrucciones) VALUES (nextval('recetas_id_seq'), 'Pasta con Pesto', '1. Cocer la pasta según las instrucciones del paquete.\n2. En un procesador de alimentos, mezclar albahaca, piñones, ajo, queso parmesano y aceite de oliva para hacer el pesto.\n3. Mezclar la pasta cocida con el pesto y servir caliente.');
INSERT INTO recetas (id, nombre, instrucciones) VALUES (nextval('recetas_id_seq'), 'Tacos de Pollo', '1. Cocinar el pollo a la parrilla y desmenuzarlo.\n2. Calentar las tortillas de maíz.\n3. Rellenar las tortillas con el pollo, cebolla, cilantro y salsa al gusto.\n4. Servir con rodajas de lima.');
INSERT INTO recetas (id, nombre, instrucciones) VALUES (nextval('recetas_id_seq'), 'Sopa de Lentejas', '1. Lavar y remojar las lentejas durante 1 hora.\n2. Sofreír cebolla, zanahoria y apio en aceite de oliva.\n3. Añadir las lentejas y caldo de verduras.\n4. Cocinar a fuego lento durante 30 minutos hasta que las lentejas estén tiernas.');
INSERT INTO recetas (id, nombre, instrucciones) VALUES (nextval('recetas_id_seq'), 'Ensalada de Garbanzos', '1. Cocer los garbanzos hasta que estén tiernos.\n2. Mezclar con cebolla roja, pimiento, perejil y aliñar con aceite de oliva y limón.\n3. Servir fría como acompañamiento o plato principal.');
INSERT INTO recetas (id, nombre, instrucciones) VALUES (nextval('recetas_id_seq'), 'Pimientos Rellenos', '1. Precalentar el horno a 180°C.\n2. Cocer arroz y mezclar con carne molida, cebolla y especias.\n3. Rellenar los pimientos con la mezcla de arroz y carne.\n4. Hornear durante 30 minutos hasta que los pimientos estén tiernos.');
INSERT INTO recetas (id, nombre, instrucciones) VALUES (nextval('recetas_id_seq'), 'Berenjenas a la Parmesana', '1. Precalentar el horno a 200°C.\n2. Cortar las berenjenas en rodajas y espolvorear con sal.\n3. En una bandeja para hornear, alternar capas de berenjenas, salsa de tomate y queso parmesano.\n4. Hornear durante 30 minutos hasta que el queso esté dorado.');
INSERT INTO recetas (id, nombre, instrucciones) VALUES (nextval('recetas_id_seq'), 'Salmón al Horno', '1. Precalentar el horno a 180°C.\n2. Colocar el salmón en una bandeja para hornear y aliñar con aceite de oliva, limón y hierbas.\n3. Hornear durante 20 minutos hasta que el salmón esté cocido y tierno.');
INSERT INTO recetas (id, nombre, instrucciones) VALUES (nextval('recetas_id_seq'), 'Galletas de Avena', '1. Precalentar el horno a 180°C.\n2. Mezclar avena, harina, azúcar y mantequilla derretida.\n3. Formar bolitas y colocarlas en una bandeja para hornear.\n4. Hornear durante 15 minutos hasta que estén doradas.');
INSERT INTO recetas (id, nombre, instrucciones) VALUES (nextval('recetas_id_seq'), 'Tortilla Española', '1. Pelar y cortar las patatas en rodajas finas.\n2. Freír las patatas en aceite de oliva hasta que estén doradas.\n3. Batir los huevos y mezclar con las patatas.\n4. Cocinar en una sartén hasta que esté cuajada por ambos lados.');
INSERT INTO recetas (id, nombre, instrucciones) VALUES (nextval('recetas_id_seq'), 'Sopa de Verduras', '1. Lavar y cortar las verduras en trozos pequeños.\n2. Sofreír cebolla y ajo en aceite de oliva.\n3. Añadir las verduras y caldo de verduras.\n4. Cocinar a fuego lento durante 30 minutos hasta que las verduras estén tiernas.');
INSERT INTO recetas (id, nombre, instrucciones) VALUES (nextval('recetas_id_seq'), 'Batido de Plátano y Fresa', '1. Pelar los plátanos y lavar las fresas.\n2. Mezclar en una batidora con yogur y miel.\n3. Servir frío en un vaso alto.');
INSERT INTO recetas (id, nombre, instrucciones) VALUES (nextval('recetas_id_seq'), 'Tarta de Limón', '1. Precalentar el horno a 180°C.\n2. Mezclar galletas trituradas con mantequilla derretida para hacer la base.\n3. Batir huevos, azúcar, zumo de limón y ralladura de limón.\n4. Verter la mezcla sobre la base y hornear durante 30 minutos.');  
INSERT INTO recetas (id, nombre, instrucciones) VALUES (nextval('recetas_id_seq'), 'Pudin de Pan', '1. Precalentar el horno a 180°C.\n2. Trocear el pan y mezclar con leche, azúcar, huevos y canela.\n3. Verter la mezcla en un molde y hornear durante 40 minutos hasta que esté dorado.');
INSERT INTO recetas (id, nombre, instrucciones) VALUES (nextval('recetas_id_seq'), 'Tarta de Queso y Frutas', '1. Precalentar el horno a 180°C.\n2. Mezclar queso crema, azúcar y huevos.\n3. Verter la mezcla en una base de galletas trituradas.\n4. Hornear durante 45 minutos y dejar enfriar antes de decorar con frutas frescas.');   
INSERT INTO recetas (id, nombre, instrucciones) VALUES (nextval('recetas_id_seq'), 'Sopa de Cebolla', '1. Pelar y cortar las cebollas en rodajas finas.\n2. Sofreír las cebollas en mantequilla hasta que estén doradas.\n3. Añadir caldo de carne y cocinar a fuego lento durante 30 minutos.\n4. Servir caliente con pan tostado y queso gratinado por encima.');
INSERT INTO recetas (id, nombre, instrucciones) VALUES (nextval('recetas_id_seq'), 'Ensalada de Atún', '1. Escurrir el atún y desmenuzarlo en un bol.\n2. Añadir cebolla picada, pimiento rojo y aceitunas.\n3. Aliñar con aceite de oliva, limón y sal al gusto.\n4. Servir fría como aperitivo o plato principal.');
INSERT INTO recetas (id, nombre, instrucciones) VALUES (nextval('recetas_id_seq'), 'Pasta con Verduras Asadas', '1. Cocer la pasta según las instrucciones del paquete.\n2. Asar verduras como pimientos, calabacín y berenjena en el horno.\n3. Mezclar la pasta cocida con las verduras asadas y aliñar con aceite de oliva y queso parmesano.');
INSERT INTO recetas (id, nombre, instrucciones) VALUES (nextval('recetas_id_seq'),'Paella', '1. Sofríe pollo, conejo y verduras. 2. Añade arroz, caldo y azafrán. 3. Cocina a fuego medio hasta que el arroz esté hecho.');
INSERT INTO recetas (id, nombre, instrucciones) VALUES (nextval('recetas_id_seq'),'Lasaña', '1. Cocina la carne con tomate. 2. Monta capas de pasta, carne y bechamel. 3. Hornea durante 30 minutos.');
INSERT INTO recetas (id, nombre, instrucciones) VALUES (nextval('recetas_id_seq'),'Fajitas de pollo', '1. Marina y cocina el pollo. 2. Añade pimientos y cebolla. 3. Sirve con tortillas calientes.');
INSERT INTO recetas (id, nombre, instrucciones) VALUES (nextval('recetas_id_seq'),'Empanadas', '1. Prepara el relleno con carne y cebolla. 2. Rellena la masa y hornea hasta dorar.');
INSERT INTO recetas (id, nombre, instrucciones) VALUES (nextval('recetas_id_seq'),'Pollo al horno', '1. Marina el pollo. 2. Hornea con papas durante 45 minutos.');
INSERT INTO recetas (id, nombre, instrucciones) VALUES (nextval('recetas_id_seq'),'Canelones', '1. Rellena los canelones con carne. 2. Cubre con salsa de tomate y bechamel. 3. Hornea 30 minutos.');
INSERT INTO recetas (id, nombre, instrucciones) VALUES (nextval('recetas_id_seq'),'Tacos', '1. Cocina carne sazonada. 2. Sirve en tortillas con lechuga, tomate y queso.');
INSERT INTO recetas (id, nombre, instrucciones) VALUES (nextval('recetas_id_seq'),'Hamburguesa casera', '1. Forma hamburguesas de carne picada. 2. Cocina y sirve en pan con vegetales y salsas.');
INSERT INTO recetas (id, nombre, instrucciones) VALUES (nextval('recetas_id_seq'),'Guiso de lentejas', '1. Cocina lentejas con verduras y chorizo. 2. Añade especias y deja hervir hasta ablandar.');
INSERT INTO recetas (id, nombre, instrucciones) VALUES (nextval('recetas_id_seq'),'Pizza margarita', '1. Extiende la masa. 2. Cubre con tomate, mozzarella y albahaca. 3. Hornea a 220°C por 15 minutos.');
INSERT INTO recetas (id, nombre, instrucciones) VALUES (nextval('recetas_id_seq'),'Arroz chaufa', '1. Sofríe arroz cocido con huevo, cebolla y pollo. 2. Añade salsa de soja y mezcla.');
INSERT INTO recetas (id, nombre, instrucciones) VALUES (nextval('recetas_id_seq'),'Croquetas de jamón', '1. Haz una bechamel con jamón. 2. Enfría, empana y fríe.');
INSERT INTO recetas (id, nombre, instrucciones) VALUES (nextval('recetas_id_seq'),'Risotto de setas', '1. Sofríe cebolla y setas. 2. Añade arroz y caldo gradualmente. 3. Remueve hasta cremoso.');
INSERT INTO recetas (id, nombre, instrucciones) VALUES (nextval('recetas_id_seq'),'Sopa de verduras', '1. Cocina verduras troceadas con agua y sal. 2. Hervir hasta que estén tiernas.');
INSERT INTO recetas (id, nombre, instrucciones) VALUES (nextval('recetas_id_seq'),'Polenta con queso', '1. Cocina la polenta. 2. Añade mantequilla y queso hasta fundir.');





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
INSERT INTO ingredientes (id, nombre) VALUES (nextval('ingredientes_id_seq'),'Pollo');
INSERT INTO ingredientes (id, nombre) VALUES (nextval('ingredientes_id_seq'),'Pimiento');
INSERT INTO ingredientes (id, nombre) VALUES (nextval('ingredientes_id_seq'),'Carne picada');
INSERT INTO ingredientes (id, nombre) VALUES (nextval('ingredientes_id_seq'),'Bechamel');
INSERT INTO ingredientes (id, nombre) VALUES (nextval('ingredientes_id_seq'),'Tortillas');
INSERT INTO ingredientes (id, nombre) VALUES (nextval('ingredientes_id_seq'),'Jamón');
INSERT INTO ingredientes (id, nombre) VALUES (nextval('ingredientes_id_seq'),'Setas');
INSERT INTO ingredientes (id, nombre) VALUES (nextval('ingredientes_id_seq'),'Lentejas');
INSERT INTO ingredientes (id, nombre) VALUES (nextval('ingredientes_id_seq'),'Pimienta');
INSERT INTO ingredientes (id, nombre) VALUES (nextval('ingredientes_id_seq'),'Albahaca');
INSERT INTO ingredientes (id, nombre) VALUES (nextval('ingredientes_id_seq'),'Chorizo');
INSERT INTO ingredientes (id, nombre) VALUES (nextval('ingredientes_id_seq'),'Bolognesa');
INSERT INTO ingredientes (id, nombre) VALUES (nextval('ingredientes_id_seq'),'Conejo');
INSERT INTO ingredientes (id, nombre) VALUES (nextval('ingredientes_id_seq'),'Masa de empanada');
INSERT INTO ingredientes (id, nombre) VALUES (nextval('ingredientes_id_seq'),'Caldo');
INSERT INTO ingredientes (id, nombre) VALUES (nextval('ingredientes_id_seq'),'Pan rallado');
INSERT INTO ingredientes (id, nombre) VALUES (nextval('ingredientes_id_seq'),'Cebolla');
INSERT INTO ingredientes (id, nombre) VALUES (nextval('ingredientes_id_seq'),'Pan de hamburguesa');
INSERT INTO ingredientes (id, nombre) VALUES (nextval('ingredientes_id_seq'),'Queso');
INSERT INTO ingredientes (id, nombre) VALUES (nextval('ingredientes_id_seq'),'Salsa de soja');
INSERT INTO ingredientes (id, nombre) VALUES (nextval('ingredientes_id_seq'),'Polenta');




INSERT INTO ingredientes_alergenos (id_ingrediente, id_alergeno ) VALUES ((SELECT i.id FROM ingredientes i WHERE nombre = 'Harina'),( SELECT a.id FROM alergenos a WHERE nombre = 'Gluten')); -- Harina - Gluten
INSERT INTO ingredientes_alergenos (id_ingrediente, id_alergeno) VALUES ((SELECT i.id FROM ingredientes i WHERE nombre = 'Huevo'),( SELECT a.id FROM alergenos a WHERE nombre = 'Huevo')); -- Huevo - Huevo
INSERT INTO ingredientes_alergenos (id_ingrediente, id_alergeno) VALUES ((SELECT i.id FROM ingredientes i WHERE nombre = 'Mantequilla'),( SELECT a.id FROM alergenos a WHERE nombre = 'Lactosa')); -- Mantequilla - Lactosa
INSERT INTO ingredientes_alergenos (id_ingrediente, id_alergeno) VALUES ((SELECT i.id FROM ingredientes i WHERE nombre = 'Queso Parmesano'),( SELECT a.id FROM alergenos a WHERE nombre = 'Lactosa')); -- Queso Parmesano - Lactosa
INSERT INTO ingredientes_alergenos (id_ingrediente, id_alergeno) VALUES ((SELECT i.id FROM ingredientes i WHERE nombre = 'Queso Mozarella'),( SELECT a.id FROM alergenos a WHERE nombre = 'Lactosa')); -- Queso Mozarella - Lactosa
INSERT INTO ingredientes_alergenos (id_ingrediente, id_alergeno) VALUES ((SELECT i.id FROM ingredientes i WHERE nombre = 'Queso Gorgonzola'),( SELECT a.id FROM alergenos a WHERE nombre = 'Lactosa')); -- Queso Gorgonzola - Lactosa
INSERT INTO ingredientes_alergenos (id_ingrediente, id_alergeno) VALUES ((SELECT i.id FROM ingredientes i WHERE nombre = 'Leche'),( SELECT a.id FROM alergenos a WHERE nombre = 'Lactosa')); -- Leche - Lactosa
INSERT INTO ingredientes_alergenos (id_ingrediente, id_alergeno) VALUES ((SELECT i.id FROM ingredientes i WHERE nombre = 'Crema de cacahuete'),( SELECT a.id FROM alergenos a WHERE nombre = 'Cacahuete')); -- Crema de cacahuete - Cacahuete
INSERT INTO ingredientes_alergenos (id_ingrediente, id_alergeno) VALUES ((SELECT i.id FROM ingredientes i WHERE nombre = 'Hojaldre'),( SELECT a.id FROM alergenos a WHERE nombre = 'Gluten')); -- Hojaldre - Gluten
INSERT INTO ingredientes_alergenos (id_ingrediente, id_alergeno) VALUES ((SELECT i.id FROM ingredientes i WHERE nombre = 'Nata para cocinar'),( SELECT a.id FROM alergenos a WHERE nombre = 'Lactosa')); -- Nata para cocinar - Lactosa        
INSERT INTO ingredientes_alergenos (id_ingrediente, id_alergeno) VALUES ((SELECT i.id FROM ingredientes i WHERE nombre = 'Bechamel'),( SELECT a.id FROM alergenos a WHERE nombre = 'Lactosa'));
INSERT INTO ingredientes_alergenos (id_ingrediente, id_alergeno) VALUES ((SELECT i.id FROM ingredientes i WHERE nombre = 'Yogur'),( SELECT a.id FROM alergenos a WHERE nombre = 'Lactosa'));
INSERT INTO ingredientes_alergenos (id_ingrediente, id_alergeno) VALUES ((SELECT i.id FROM ingredientes i WHERE nombre = 'Tortillas'),( SELECT a.id FROM alergenos a WHERE nombre = 'Gluten'));
INSERT INTO ingredientes_alergenos (id_ingrediente, id_alergeno) VALUES ((SELECT i.id FROM ingredientes i WHERE nombre = 'Queso'),( SELECT a.id FROM alergenos a WHERE nombre = 'Lactosa')); 
INSERT INTO ingredientes_alergenos (id_ingrediente, id_alergeno) VALUES ((SELECT i.id FROM ingredientes i WHERE nombre = 'Pan rallado'),( SELECT a.id FROM alergenos a WHERE nombre = 'Gluten'));
INSERT INTO ingredientes_alergenos (id_ingrediente, id_alergeno) VALUES ((SELECT i.id FROM ingredientes i WHERE nombre = 'Pan de hamburguesa'),( SELECT a.id FROM alergenos a WHERE nombre = 'Gluten'));
INSERT INTO ingredientes_alergenos (id_ingrediente, id_alergeno) VALUES ((SELECT i.id FROM ingredientes i WHERE nombre = 'Mostaza'),( SELECT a.id FROM alergenos a WHERE nombre = 'Mostaza')); 
INSERT INTO ingredientes_alergenos (id_ingrediente, id_alergeno) VALUES ((SELECT i.id FROM ingredientes i WHERE nombre = 'Masa de empanada'),( SELECT a.id FROM alergenos a WHERE nombre = 'Gluten')); 
INSERT INTO ingredientes_alergenos (id_ingrediente, id_alergeno) VALUES ((SELECT i.id FROM ingredientes i WHERE nombre = 'Bolognesa'),( SELECT a.id FROM alergenos a WHERE nombre = 'Carne'));
INSERT INTO ingredientes_alergenos (id_ingrediente, id_alergeno) VALUES ((SELECT i.id FROM ingredientes i WHERE nombre = 'Pollo'),( SELECT a.id FROM alergenos a WHERE nombre = 'Carne'));
INSERT INTO ingredientes_alergenos (id_ingrediente, id_alergeno) VALUES ((SELECT i.id FROM ingredientes i WHERE nombre = 'Jamón'),( SELECT a.id FROM alergenos a WHERE nombre = 'Carne'));
INSERT INTO ingredientes_alergenos (id_ingrediente, id_alergeno) VALUES ((SELECT i.id FROM ingredientes i WHERE nombre = 'Chorizo'),( SELECT a.id FROM alergenos a WHERE nombre = 'Carne')); 
INSERT INTO ingredientes_alergenos (id_ingrediente, id_alergeno) VALUES ((SELECT i.id FROM ingredientes i WHERE nombre = 'Conejo'),( SELECT a.id FROM alergenos a WHERE nombre = 'Carne'));
INSERT INTO ingredientes_alergenos (id_ingrediente, id_alergeno) VALUES ((SELECT i.id FROM ingredientes i WHERE nombre = 'Carne picada'),( SELECT a.id FROM alergenos a WHERE nombre = 'Carne'));


INSERT INTO ingredientes_recetas (id_receta, id_ingrediente, cantidad, id_medida) VALUES ((SELECT  r.id FROM recetas r WHERE nombre = 'Tarta de Zanahoria'),( SELECT i.id FROM ingredientes i WHERE nombre = 'Harina'), 200, 1); -- Tarta de Zanahoria - Harina
INSERT INTO ingredientes_recetas (id_receta, id_ingrediente, cantidad, id_medida) VALUES ((SELECT r.id FROM recetas r WHERE nombre = 'Tarta de Zanahoria'),( SELECT i.id FROM ingredientes i WHERE nombre = 'Levadura'), 1, 5); -- Tarta de Zanahoria - Levadura
INSERT INTO ingredientes_recetas (id_receta, id_ingrediente, cantidad, id_medida) VALUES ((SELECT r.id FROM recetas r WHERE nombre = 'Tarta de Zanahoria'),( SELECT i.id FROM ingredientes i WHERE nombre = 'Azucar'), 200, 1); -- Tarta de Zanahoria - Azucar
INSERT INTO ingredientes_recetas (id_receta, id_ingrediente, cantidad, id_medida) VALUES ((SELECT r.id FROM recetas r WHERE nombre = 'Tarta de Zanahoria'), (SELECT i.id FROM ingredientes i WHERE nombre = 'Huevo'), 3, 1); -- Tarta de Zanahoria - Huevo
INSERT INTO ingredientes_recetas (id_receta, id_ingrediente, cantidad, id_medida) VALUES ((SELECT r.id FROM recetas r WHERE nombre = 'Tarta de Zanahoria'), (SELECT i.id FROM ingredientes i WHERE nombre = 'Mantequilla'), 100, 1); -- Tarta de Zanahoria - Mantequilla
INSERT INTO ingredientes_recetas (id_receta, id_ingrediente, cantidad, id_medida) VALUES ((SELECT r.id FROM recetas r WHERE nombre = 'Tarta de Zanahoria'),( SELECT i.id FROM ingredientes i WHERE nombre = 'Zanahoria'), 200, 1); -- Tarta de Zanahoria - Zanahoria
INSERT INTO ingredientes_recetas (id_receta, id_ingrediente, cantidad, id_medida) VALUES ((SELECT r.id FROM recetas r WHERE nombre = 'Ensalada de Lechuga y Tomate'), (SELECT i.id FROM ingredientes i WHERE nombre = 'Lechuga'), 100, 1); -- Ensalada de Lechuga y Tomate - Lechuga
INSERT INTO ingredientes_recetas (id_receta, id_ingrediente, cantidad, id_medida) VALUES ((SELECT r.id FROM recetas r WHERE nombre = 'Ensalada de Lechuga y Tomate'), (SELECT i.id FROM ingredientes i WHERE nombre = 'Tomate'), 2, 6); -- Ensalada de Lechuga y Tomate - Tomate
INSERT INTO ingredientes_recetas (id_receta, id_ingrediente, cantidad, id_medida) VALUES ((SELECT r.id FROM recetas r WHERE nombre = 'Pizza Margarita'), (SELECT i.id FROM ingredientes i WHERE nombre = 'Harina'), 200, 1); -- Ensalada de Lechuga y Tomate - Aceite de Oliva
INSERT INTO ingredientes_recetas (id_receta, id_ingrediente, cantidad, id_medida) VALUES ((SELECT r.id FROM recetas r WHERE nombre = 'Pizza Margarita'), (SELECT i.id FROM ingredientes i WHERE nombre = 'Aceite de Oliva'), 30, 2); -- Pizza Margarita - Aceite de Oliva
INSERT INTO ingredientes_recetas (id_receta, id_ingrediente, cantidad, id_medida) VALUES ((SELECT r.id FROM recetas r WHERE nombre = 'Pizza Margarita'), (SELECT i.id FROM ingredientes i WHERE nombre = 'Levadura'), 1, 5); -- Pizza Margarita - Levadura
INSERT INTO ingredientes_recetas (id_receta, id_ingrediente, cantidad, id_medida) VALUES ((SELECT r.id FROM recetas r WHERE nombre = 'Pizza Margarita'), (SELECT i.id FROM ingredientes i WHERE nombre = 'Sal'), 5, 1); -- Pizza Margarita - Sal
INSERT INTO ingredientes_recetas (id_receta, id_ingrediente, cantidad, id_medida) VALUES ((SELECT r.id FROM recetas r WHERE nombre = 'Pizza Margarita'), (SELECT i.id FROM ingredientes i WHERE nombre = 'Tomate frito'), 100, 2); -- Pizza Margarita - Tomate frito
INSERT INTO ingredientes_recetas (id_receta, id_ingrediente, cantidad, id_medida) VALUES ((SELECT r.id FROM recetas r WHERE nombre = 'Pizza Margarita'), (SELECT i.id FROM ingredientes i WHERE nombre = 'Queso Mozarella'), 150, 1); -- Pizza Margarita - Queso Mozarella
INSERT INTO ingredientes_recetas (id_receta, id_ingrediente, cantidad, id_medida) VALUES ((SELECT r.id FROM recetas r WHERE nombre = 'Pasta con Salsa de Queso'), (SELECT i.id FROM ingredientes i WHERE nombre = 'Pasta'), 200, 1); -- Pasta con Salsa de Queso - Pasta
INSERT INTO ingredientes_recetas (id_receta, id_ingrediente, cantidad, id_medida) VALUES ((SELECT r.id FROM recetas r WHERE nombre = 'Pasta con Salsa de Queso'), (SELECT i.id FROM ingredientes i WHERE nombre = 'Nata para cocinar'), 100, 2); -- Pasta con Salsa de Queso - Nata para cocinar
INSERT INTO ingredientes_recetas (id_receta, id_ingrediente, cantidad, id_medida) VALUES ((SELECT r.id FROM recetas r WHERE nombre = 'Pasta con Salsa de Queso'), (SELECT i.id FROM ingredientes i WHERE nombre = 'Queso Gorgonzola'), 50, 1); -- Pasta con Salsa de Queso - Queso Gorgonzola

INSERT INTO ingredientes_recetas (id_receta, id_ingrediente, cantidad, id_medida)
VALUES (
    (SELECT r.id FROM recetas r WHERE nombre = 'Lasaña'),
    (SELECT i.id FROM ingredientes i WHERE nombre = 'Bolognesa'),
    250,
    1
);
INSERT INTO ingredientes_recetas (id_receta, id_ingrediente, cantidad, id_medida)
VALUES (
    (SELECT r.id FROM recetas r WHERE nombre = 'Lasaña'),
    (SELECT i.id FROM ingredientes i WHERE nombre = 'Pasta'),
    120,
    1
);
INSERT INTO ingredientes_recetas (id_receta, id_ingrediente, cantidad, id_medida)
VALUES (
    (SELECT r.id FROM recetas r WHERE nombre = 'Lasaña'),
    (SELECT i.id FROM ingredientes i WHERE nombre = 'Bechamel'),
    500,
    2
);
INSERT INTO ingredientes_recetas (id_receta, id_ingrediente, cantidad, id_medida)
VALUES (
    (SELECT r.id FROM recetas r WHERE nombre = 'Lasaña'),
    (SELECT i.id FROM ingredientes i WHERE nombre = 'Queso Mozarella'),
    200,
    1
);

INSERT INTO ingredientes_recetas (id_receta, id_ingrediente, cantidad, id_medida)
VALUES (
    (SELECT r.id FROM recetas r WHERE nombre = 'Paella'),
    (SELECT i.id FROM ingredientes i WHERE nombre = 'Pollo'),
    300,
    1
);
INSERT INTO ingredientes_recetas (id_receta, id_ingrediente, cantidad, id_medida)
VALUES (
    (SELECT r.id FROM recetas r WHERE nombre = 'Paella'),
    (SELECT i.id FROM ingredientes i WHERE nombre = 'Conejo'),
    200,
    1
);
INSERT INTO ingredientes_recetas (id_receta, id_ingrediente, cantidad, id_medida)
VALUES (
    (SELECT r.id FROM recetas r WHERE nombre = 'Paella'),
    (SELECT i.id FROM ingredientes i WHERE nombre = 'Arroz'),
    200,
    1
);
INSERT INTO ingredientes_recetas (id_receta, id_ingrediente, cantidad, id_medida)
VALUES (
    (SELECT r.id FROM recetas r WHERE nombre = 'Paella'),
    (SELECT i.id FROM ingredientes i WHERE nombre = 'Caldo'),
    150,
    2
);
INSERT INTO ingredientes_recetas (id_receta, id_ingrediente, cantidad, id_medida)
VALUES (
    (SELECT r.id FROM recetas r WHERE nombre = 'Tortilla de Patatas'),
    (SELECT i.id FROM ingredientes i WHERE nombre = 'Patatas'),
    300,
    1
);
INSERT INTO ingredientes_recetas (id_receta, id_ingrediente, cantidad, id_medida)
VALUES (
    (SELECT r.id FROM recetas r WHERE nombre = 'Tortilla de Patatas'),
    (SELECT i.id FROM ingredientes i WHERE nombre = 'Huevos'),
    4,
    4
);

INSERT INTO ingredientes_recetas (id_receta, id_ingrediente, cantidad, id_medida)
VALUES (
    (SELECT r.id FROM recetas r WHERE nombre = 'Fajitas de pollo'),
    (SELECT i.id FROM ingredientes i WHERE nombre = 'Pollo'),
    250,
    1
);
INSERT INTO ingredientes_recetas (id_receta, id_ingrediente, cantidad, id_medida)
VALUES (
    (SELECT r.id FROM recetas r WHERE nombre = 'Fajitas de pollo'),
    (SELECT i.id FROM ingredientes i WHERE nombre = 'Pimiento'),
    100,
    1
);
INSERT INTO ingredientes_recetas (id_receta, id_ingrediente, cantidad, id_medida)
VALUES (
    (SELECT r.id FROM recetas r WHERE nombre = 'Fajitas de pollo'),
    (SELECT i.id FROM ingredientes i WHERE nombre = 'Tortillas'),
    4,
    4
);
INSERT INTO ingredientes_recetas (id_receta, id_ingrediente, cantidad, id_medida)
VALUES (
    (SELECT r.id FROM recetas r WHERE nombre = 'Fajitas de pollo'),
    (SELECT i.id FROM ingredientes i WHERE nombre = 'Cebolla'),
    50,
    1
);
INSERT INTO ingredientes_recetas (id_receta, id_ingrediente, cantidad, id_medida)
VALUES (
    (SELECT r.id FROM recetas r WHERE nombre = 'Fajitas de pollo'),
    (SELECT i.id FROM ingredientes i WHERE nombre = 'Queso Mozarella'),
    100,
    1
);
INSERT INTO ingredientes_recetas (id_receta, id_ingrediente, cantidad, id_medida)
VALUES (
    (SELECT r.id FROM recetas r WHERE nombre = 'Empanadas'),
    (SELECT i.id FROM ingredientes i WHERE nombre = 'Carne picada'),
    300,
    1
);
INSERT INTO ingredientes_recetas (id_receta, id_ingrediente, cantidad, id_medida)
VALUES (
    (SELECT r.id FROM recetas r WHERE nombre = 'Empanadas'),
    (SELECT i.id FROM ingredientes i WHERE nombre = 'Cebolla'),
    100,
    1
);
INSERT INTO ingredientes_recetas (id_receta, id_ingrediente, cantidad, id_medida)
VALUES (
    (SELECT r.id FROM recetas r WHERE nombre = 'Empanadas'),
    (SELECT i.id FROM ingredientes i WHERE nombre = 'Masa de empanada'),
    12,
    4
);
INSERT INTO ingredientes_recetas (id_receta, id_ingrediente, cantidad, id_medida)
VALUES (
    (SELECT r.id FROM recetas r WHERE nombre = 'Empanadas'),
    (SELECT i.id FROM ingredientes i WHERE nombre = 'Huevo'),
    1,
    4
);
INSERT INTO ingredientes_recetas (id_receta, id_ingrediente, cantidad, id_medida)
VALUES (
    (SELECT r.id FROM recetas r WHERE nombre = 'Pollo al horno'),
    (SELECT i.id FROM ingredientes i WHERE nombre = 'Pollo'),
    1,
    4
);
INSERT INTO ingredientes_recetas (id_receta, id_ingrediente, cantidad, id_medida)
VALUES (
    (SELECT r.id FROM recetas r WHERE nombre = 'Pollo al horno'),
    (SELECT i.id FROM ingredientes i WHERE nombre = 'Patatas'),
    500,
    1
);
INSERT INTO ingredientes_recetas (id_receta, id_ingrediente, cantidad, id_medida)
VALUES (
    (SELECT r.id FROM recetas r WHERE nombre = 'Canelones'),
    (SELECT i.id FROM ingredientes i WHERE nombre = 'Bechamel'),
    250,
    2
);
INSERT INTO ingredientes_recetas (id_receta, id_ingrediente, cantidad, id_medida)
VALUES (
    (SELECT r.id FROM recetas r WHERE nombre = 'Canelones'),
    (SELECT i.id FROM ingredientes i WHERE nombre = 'Bolognesa'),
    300,
    1
);
INSERT INTO ingredientes_recetas (id_receta, id_ingrediente, cantidad, id_medida)
VALUES (
    (SELECT r.id FROM recetas r WHERE nombre = 'Canelones'),
    (SELECT i.id FROM ingredientes i WHERE nombre = 'Pasta'),
    12,
    4
);
INSERT INTO ingredientes_recetas (id_receta, id_ingrediente, cantidad, id_medida)
VALUES (
    (SELECT r.id FROM recetas r WHERE nombre = 'Canelones'),
    (SELECT i.id FROM ingredientes i WHERE nombre = 'Queso'),
    200,
    1
);
INSERT INTO ingredientes_recetas (id_receta, id_ingrediente, cantidad, id_medida)
VALUES (
    (SELECT r.id FROM recetas r WHERE nombre = 'Tacos'),
    (SELECT i.id FROM ingredientes i WHERE nombre = 'Carne picada'),
    300,
    1
);
INSERT INTO ingredientes_recetas (id_receta, id_ingrediente, cantidad, id_medida)
VALUES (
    (SELECT r.id FROM recetas r WHERE nombre = 'Tacos'),
    (SELECT i.id FROM ingredientes i WHERE nombre = 'Tortillas'),
    6,
    4
);
INSERT INTO ingredientes_recetas (id_receta, id_ingrediente, cantidad, id_medida)
VALUES (
    (SELECT r.id FROM recetas r WHERE nombre = 'Tacos'),
    (SELECT i.id FROM ingredientes i WHERE nombre = 'Lechuga'),
    100,
    1
);
INSERT INTO ingredientes_recetas (id_receta, id_ingrediente, cantidad, id_medida)
VALUES (
    (SELECT r.id FROM recetas r WHERE nombre = 'Tacos'),
    (SELECT i.id FROM ingredientes i WHERE nombre = 'Tomate'),
    2,
    4
);
INSERT INTO ingredientes_recetas (id_receta, id_ingrediente, cantidad, id_medida)
VALUES (
    (SELECT r.id FROM recetas r WHERE nombre = 'Tacos'),
    (SELECT i.id FROM ingredientes i WHERE nombre = 'Queso'),
    100,
    1
);
INSERT INTO ingredientes_recetas (id_receta, id_ingrediente, cantidad, id_medida)
VALUES (
    (SELECT r.id FROM recetas r WHERE nombre = 'Hamburguesa casera'),
    (SELECT i.id FROM ingredientes i WHERE nombre = 'Carne picada'),
    250,
    1
);
INSERT INTO ingredientes_recetas (id_receta, id_ingrediente, cantidad, id_medida)
VALUES (
    (SELECT r.id FROM recetas r WHERE nombre = 'Hamburguesa casera'),
    (SELECT i.id FROM ingredientes i WHERE nombre = 'Pan de hamburguesa'),
    2,
    4
);
INSERT INTO ingredientes_recetas (id_receta, id_ingrediente, cantidad, id_medida)
VALUES (
    (SELECT r.id FROM recetas r WHERE nombre = 'Hamburguesa casera'),
    (SELECT i.id FROM ingredientes i WHERE nombre = 'Lechuga'),
    50,
    1
);
INSERT INTO ingredientes_recetas (id_receta, id_ingrediente, cantidad, id_medida)
VALUES (
    (SELECT r.id FROM recetas r WHERE nombre = 'Hamburguesa casera'),
    (SELECT i.id FROM ingredientes i WHERE nombre = 'Tomate'),
    1,
    4
);
INSERT INTO ingredientes_recetas (id_receta, id_ingrediente, cantidad, id_medida)
VALUES (
    (SELECT r.id FROM recetas r WHERE nombre = 'Hamburguesa casera'),
    (SELECT i.id FROM ingredientes i WHERE nombre = 'Cebolla'),
    50,
    1
);
INSERT INTO ingredientes_recetas (id_receta, id_ingrediente, cantidad, id_medida)
VALUES (
    (SELECT r.id FROM recetas r WHERE nombre = 'Hamburguesa casera'),
    (SELECT i.id FROM ingredientes i WHERE nombre = 'Queso'),
    50,
    1
);
INSERT INTO ingredientes_recetas (id_receta, id_ingrediente, cantidad, id_medida)
VALUES (
    (SELECT r.id FROM recetas r WHERE nombre = 'Guiso de lentejas'),
    (SELECT i.id FROM ingredientes i WHERE nombre = 'Lentejas'),
    200,
    1
);
INSERT INTO ingredientes_recetas (id_receta, id_ingrediente, cantidad, id_medida)
VALUES (
    (SELECT r.id FROM recetas r WHERE nombre = 'Guiso de lentejas'),
    (SELECT i.id FROM ingredientes i WHERE nombre = 'Chorizo'),
    100,
    1
);
INSERT INTO ingredientes_recetas (id_receta, id_ingrediente, cantidad, id_medida)
VALUES (
    (SELECT r.id FROM recetas r WHERE nombre = 'Guiso de lentejas'),
    (SELECT i.id FROM ingredientes i WHERE nombre = 'Pimiento'),
    50,
    1
);
INSERT INTO ingredientes_recetas (id_receta, id_ingrediente, cantidad, id_medida)
VALUES (
    (SELECT r.id FROM recetas r WHERE nombre = 'Guiso de lentejas'),
    (SELECT i.id FROM ingredientes i WHERE nombre = 'Cebolla'),
    50,
    1
);
INSERT INTO ingredientes_recetas (id_receta, id_ingrediente, cantidad, id_medida)
VALUES (
    (SELECT r.id FROM recetas r WHERE nombre = 'Guiso de lentejas'),
    (SELECT i.id FROM ingredientes i WHERE nombre = 'Zanahoria'),
    50,
    1
);
INSERT INTO ingredientes_recetas (id_receta, id_ingrediente, cantidad, id_medida)
VALUES (
    (SELECT r.id FROM recetas r WHERE nombre = 'Guiso de lentejas'),
    (SELECT i.id FROM ingredientes i WHERE nombre = 'Pimienta'),
    5,
    1
);
INSERT INTO ingredientes_recetas (id_receta, id_ingrediente, cantidad, id_medida)
VALUES (
    (SELECT r.id FROM recetas r WHERE nombre = 'Guiso de lentejas'),
    (SELECT i.id FROM ingredientes i WHERE nombre = 'Caldo'),
    500,
    2
);
INSERT INTO ingredientes_recetas (id_receta, id_ingrediente, cantidad, id_medida)
VALUES (
    (SELECT r.id FROM recetas r WHERE nombre = 'Arroz chaufa'),
    (SELECT i.id FROM ingredientes i WHERE nombre = 'Arroz'),
);

INSERT INTO ingredientes_recetas (id_receta, id_ingrediente, cantidad, id_medida)
VALUES (
    (SELECT r.id FROM recetas r WHERE nombre = 'Arroz chaufa'),
    (SELECT i.id FROM ingredientes i WHERE nombre = 'Huevo'),
    2,
    4
);
INSERT INTO ingredientes_recetas (id_receta, id_ingrediente, cantidad, id_medida)
VALUES (
    (SELECT r.id FROM recetas r WHERE nombre = 'Arroz chaufa'),
    (SELECT i.id FROM ingredientes i WHERE nombre = 'Cebolla'),
    50,
    1
);
INSERT INTO ingredientes_recetas (id_receta, id_ingrediente, cantidad, id_medida)
VALUES (
    (SELECT r.id FROM recetas r WHERE nombre = 'Arroz chaufa'),
    (SELECT i.id FROM ingredientes i WHERE nombre = 'Pollo'),
    150,
    1
);
INSERT INTO ingredientes_recetas (id_receta, id_ingrediente, cantidad, id_medida)
VALUES (
    (SELECT r.id FROM recetas r WHERE nombre = 'Arroz chaufa'),
    (SELECT i.id FROM ingredientes i WHERE nombre = 'Salsa de soja'),
    30,
    2
);
INSERT INTO ingredientes_recetas (id_receta, id_ingrediente, cantidad, id_medida)
VALUES (
    (SELECT r.id FROM recetas r WHERE nombre = 'Croquetas de jamón'),
    (SELECT i.id FROM ingredientes i WHERE nombre = 'Bechamel'),
    300,
    2
);

INSERT INTO ingredientes_recetas (id_receta, id_ingrediente, cantidad, id_medida)
VALUES (
    (SELECT r.id FROM recetas r WHERE nombre = 'Croquetas de jamón'),
    (SELECT i.id FROM ingredientes i WHERE nombre = 'Jamón'),
    150,
    1
);
INSERT INTO ingredientes_recetas (id_receta, id_ingrediente, cantidad, id_medida)   
VALUES (
    (SELECT r.id FROM recetas r WHERE nombre = 'Croquetas de jamón'),
    (SELECT i.id FROM ingredientes i WHERE nombre = 'Huevo'),
    2,
    4
);
INSERT INTO ingredientes_recetas (id_receta, id_ingrediente, cantidad, id_medida)
VALUES (
    (SELECT r.id FROM recetas r WHERE nombre = 'Croquetas de jamón'),
    (SELECT i.id FROM ingredientes i WHERE nombre = 'Pan rallado'),
    100,
    1
);
INSERT INTO ingredientes_recetas (id_receta, id_ingrediente, cantidad, id_medida)
VALUES (
    (SELECT r.id FROM recetas r WHERE nombre = 'Risotto de setas'),
    (SELECT i.id FROM ingredientes i WHERE nombre = 'Arroz'),
    200,
    1
);
INSERT INTO ingredientes_recetas (id_receta, id_ingrediente, cantidad, id_medida)
VALUES (
    (SELECT r.id FROM recetas r WHERE nombre = 'Risotto de setas'),
    (SELECT i.id FROM ingredientes i WHERE nombre = 'Setas'),
    150,
    1
);
INSERT INTO ingredientes_recetas (id_receta, id_ingrediente, cantidad, id_medida)
VALUES (
    (SELECT r.id FROM recetas r WHERE nombre = 'Risotto de setas'),
    (SELECT i.id FROM ingredientes i WHERE nombre = 'Cebolla'),
    50,
    1
);
INSERT INTO ingredientes_recetas (id_receta, id_ingrediente, cantidad, id_medida)
VALUES (
    (SELECT r.id FROM recetas r WHERE nombre = 'Risotto de setas'),
    (SELECT i.id FROM ingredientes i WHERE nombre = 'Caldo'),
    500,
    2
);
INSERT INTO ingredientes_recetas (id_receta, id_ingrediente, cantidad, id_medida)
VALUES (
    (SELECT r.id FROM recetas r WHERE nombre = 'Risotto de setas'),
    (SELECT i.id FROM ingredientes i WHERE nombre = 'Queso'),
    50,
    1
);
INSERT INTO ingredientes_recetas (id_receta, id_ingrediente, cantidad, id_medida)
VALUES (
    (SELECT r.id FROM recetas r WHERE nombre = 'Sopa de verduras'),
    (SELECT i.id FROM ingredientes i WHERE nombre = 'Zanahoria'),
    100,
    1
);
INSERT INTO ingredientes_recetas (id_receta, id_ingrediente, cantidad, id_medida)
VALUES (
    (SELECT r.id FROM recetas r WHERE nombre = 'Sopa de verduras'),
    (SELECT i.id FROM ingredientes i WHERE nombre = 'Cebolla'),
    50,
    1
);
INSERT INTO ingredientes_recetas (id_receta, id_ingrediente, cantidad, id_medida)
VALUES (
    (SELECT r.id FROM recetas r WHERE nombre = 'Sopa de verduras'),
    (SELECT i.id FROM ingredientes i WHERE nombre = 'Pimiento'),
    50,
    1
);
INSERT INTO ingredientes_recetas (id_receta, id_ingrediente, cantidad, id_medida)
VALUES (
    (SELECT r.id FROM recetas r WHERE nombre = 'Sopa de verduras'),
    (SELECT i.id FROM ingredientes i WHERE nombre = 'Caldo'),
    1,
    4
);
INSERT INTO ingredientes_recetas (id_receta, id_ingrediente, cantidad, id_medida)
VALUES (
    (SELECT r.id FROM recetas r WHERE nombre = 'Sopa de verduras'),
    (SELECT i.id FROM ingredientes i WHERE nombre = 'Pimienta'),
    5,
    1
);
INSERT INTO ingredientes_recetas (id_receta, id_ingrediente, cantidad, id_medida)
VALUES (
    (SELECT r.id FROM recetas r WHERE nombre = 'Polenta con queso'),
    (SELECT i.id FROM ingredientes i WHERE nombre = 'Polenta'),
    200,
    1
);
INSERT INTO ingredientes_recetas (id_receta, id_ingrediente, cantidad, id_medida)
VALUES (
    (SELECT r.id FROM recetas r WHERE nombre = 'Polenta con queso'),
    (SELECT i.id FROM ingredientes i WHERE nombre = 'Queso'),
    100,
    1
);
INSERT INTO ingredientes_recetas (id_receta, id_ingrediente, cantidad, id_medida)
VALUES (
    (SELECT r.id FROM recetas r WHERE nombre = 'Polenta con queso'),
    (SELECT i.id FROM ingredientes i WHERE nombre = 'Mantequilla'),
    50,
    1
);
INSERT INTO ingredientes_recetas (id_receta, id_ingrediente, cantidad, id_medida)
VALUES (
    (SELECT r.id FROM recetas r WHERE nombre = 'Polenta con queso'),
    (SELECT i.id FROM ingredientes i WHERE nombre = 'Caldo'),
    500,
    2
);   

