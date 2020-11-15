-- 1. CrearBaseDeDatos
CREATE DATABASE post;

-- 2. Crear tabla post, con los atributos id, nombre de usuario, fecha de creación, contenido,descripción
CREATE TABLE post(
  id INT UNIQUE,
  nombre_de_usuario VARCHAR(25), 
  fecha_de_creación DATE, 
  contenido VARCHAR(200),
  descripción VARCHAR(150)
);

--3. Insertar 3 post, 2 para el usuario "Pamela" y uno para "Carlos"
INSERT INTO post(
  nombre_de_usuario,
  fecha_de_creación,
  contenido,
  descripción)
  VALUES (
    'Pamela',
    '12/11/2019',
    'El CAE nos indica el costo de un crédito en un período anual, indistintamente de cual sea su plazo...',
    'Todo sobre el CAE'
  )
);
INSERT INTO post(
  nombre_de_usuario,
  fecha_de_creación,
  contenido,
  descripción)
  VALUES (
    'Pamela',
    '13/11/2019',
    'Es un préstamo dirigido a los trabajadores con ingresos mensuales sobre $400.000 (promedio en 2019) que hayan sufrido una caída ingresos de al menos 30%',
    'Préstamo Estatal solidario'
  )
);
INSERT INTO post(
  nombre_de_usuario,
  fecha_de_creación,
  contenido,
  descripción)
  VALUES (
    'Carlos',
    '12/11/2019',
    'Existen al menos 3 maneras de realizar el pago de tu deuda en dólares dentro de las fechas límites de pago',
    '¿Cómo pagar los dólares de mi tarjeta de crédito?'
  )
);

-- 4. Modificar la tabla post, agregando la columna título (1 punto)
