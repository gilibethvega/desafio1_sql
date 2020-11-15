-- 1. CrearBaseDeDatos
CREATE DATABASE post;
\c posts
-- 2. Crear tabla post, con los atributos id, nombre de usuario, fecha de creación, contenido,descripcion
CREATE TABLE post(
  id INT,
  nombre_de_usuario VARCHAR(25), 
  fecha_de_creación DATE, 
  contenido VARCHAR(200),
  descripcion VARCHAR(150),
  PRIMARY KEY (id));
);

--3. Insertar 3 post, 2 para el usuario "Pamela" y uno para "Carlos"
INSERT INTO post(
  id,
  nombre_de_usuario,
  fecha_de_creación,
  contenido,
  descripcion)
  VALUES (
    1,
    'Pamela',
    '2019/11/10',
    'El CAE nos indica el costo de un crédito en un período anual, indistintamente de cual sea su plazo...',
    'Educación Financiera'
  );
INSERT INTO post(
  id,
  nombre_de_usuario,
  fecha_de_creación,
  contenido,
  descripcion)
  VALUES (
    2,
    'Pamela',
    '2019/11/11',
    'Es un préstamo dirigido a los trabajadores con ingresos mensuales sobre $400.000 (promedio en 2019) que hayan sufrido una caída ingresos de al menos 30%',
    'Créditos'
  );
INSERT INTO post(
  id,
  nombre_de_usuario,
  fecha_de_creación,
  contenido,
  descripcion)
  VALUES (
    3,
    'Carlos',
    '2019/11/12',
    'Existen al menos 3 maneras de realizar el pago de tu deuda en dólares dentro de las fechas límites de pago',
    'Tarjeta de Crédito'
  );
-- 4. Modificar la tabla post, agregando la columna título (1 punto)
ALTER TABLE post
ADD titulo VARCHAR(50);

--5. Agregar título a las publicaciones ya ingresadas ( (1 punto)
UPDATE post SET titulo='Conoce el CAE' WHERE id=1;
UPDATE post SET titulo='Préstamo Estatal solidario' WHERE id=2;
UPDATE post SET titulo='¿Cómo pagar los dólares de mi tarjeta de crédito?' WHERE id=3;

-- 6. Insertar 2 post para el usuario "Pedro" (0.4 puntos)
INSERT INTO post(
  id,
  nombre_de_usuario,
  fecha_de_creación,
  contenido,
  descripcion,
  titulo)
  VALUES (
    4,
    'Pedro',
    '2019/11/12',
    'Corresponden a un período de tiempo que postergas para empezar a pagar un crédito',
    'Educación financiera',
    'Meses de gracia'
  );
INSERT INTO post(
  id,
  nombre_de_usuario,
  fecha_de_creación,
  contenido,
  descripcion,
  titulo)
  VALUES (
    5,
    'Pedro',
    '2019/11/13',
    'Envía dinero con Global66 desde Chile hacia más de 55 países',
    'Remesas',
    'Envía dinero'
  );
--7. Eliminar el post de Carlos (1 punto)
DELETE FROM post WHERE nombre_de_usuario='Carlos';
--8. Ingresar un nuevo post para el usuario "Carlos" (0.6 puntos)
INSERT INTO post(
  id,
  nombre_de_usuario,
  fecha_de_creación,
  contenido,
  descripcion,
  titulo)
  VALUES (
    6,
    'Carlos',
    '2019/11/14',
    'Recibe dinero desde cualquier parte del mundo con Transferwise',
    'Remesas',
    'Transferwise'
  );
--Parte 2
--9. Crear una nueva tabla, llamada comentarios, con los atributos id, fecha y hora de creación, contenido, que se relacione con la tabla posts. (1 punto)
CREATE TABLE comentarios(
  id INT,
  fecha_y_hora TIMESTAMP, 
  contenido VARCHAR(200),
  FOREIGN KEY (id) REFERENCES post(id)
);
--10. Crear 2 comentarios para el post de "Pamela" y 4 para "Carlos" (0.4 puntos)
INSERT INTO comentarios(
  id,
  fecha_y_hora,
  contenido)
  VALUES (
    1,
    '2019/11/14 12:00:00',
    'Muy informativo tu post, muchas gracias'
  );
INSERT INTO comentarios(
  id,
  fecha_y_hora,
  contenido)
  VALUES (
    1,
    '2019/11/14 12:16:00',
    '¿El CAE incluye los seguros?'
  );
INSERT INTO comentarios(
  id,
  fecha_y_hora,
  contenido)
  VALUES (
    6,
    '2019/11/14 12:17:00',
    'Tomaré esto en cuenta cuando envíe dinero al exterior'
  );
INSERT INTO comentarios(
  id,
  fecha_y_hora,
  contenido)
  VALUES (
    6,
    '2019/11/14 12:20:00',
    'Muchas gracias ahorre dinero con tu código'
  );
INSERT INTO comentarios(
  id,
  fecha_y_hora,
  contenido)
  VALUES (
    6,
    '2019/11/14 12:20:00',
    'Tengo BCI ¿cuanto costaría en ese banco enviar dinero al exterior?'
  );
INSERT INTO comentarios(
  id,
  fecha_y_hora,
  contenido)
  VALUES (
    6,
    '2019/11/14 12:20:00',
    'Excelente información'
  );
--11. Crear un nuevo post para "Margarita" (1 punto)
INSERT INTO post(
  id,
  nombre_de_usuario,
  fecha_de_creación,
  contenido,
  descripcion,
  titulo)
  VALUES (
    7,
    'Margarita',
    '2019/11/15',
    'Dejale tu dinero a los expertos e invierte con Fintual',
    'Ahorro',
    'Conoce Fintual'
  );
--12. Ingresar 5 comentarios para el post de Margarita. (1 punto)
INSERT INTO comentarios(
  id,
  fecha_y_hora,
  contenido)
  VALUES (
    7,
    '2019/11/14 12:20:00',
    'Tengo meses ahorrando con ellos y me ha ido super'
  );
INSERT INTO comentarios(
  id,
  fecha_y_hora,
  contenido)
  VALUES (
    7,
    '2019/11/14 12:25:00',
    'No me gusta mucho la app, prefiero otra'
  );
INSERT INTO comentarios(
  id,
  fecha_y_hora,
  contenido)
  VALUES (
    7,
    '2019/11/14 12:35:00',
    'Es muy sencillo de usar, gracias por la info'
  );
INSERT INTO comentarios(
  id,
  fecha_y_hora,
  contenido)
  VALUES (
    7,
    '2019/11/14 12:35:00',
    'Necesitamos mas contenido sobre inversiones'
  );
INSERT INTO comentarios(
  id,
  fecha_y_hora,
  contenido)
  VALUES (
    7,
    '2019/11/14 12:35:00',
    'Prefiero comprar acciones directamente en renta4'
  );