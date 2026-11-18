CREATE DATABASE IF NOT EXISTS lab CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE lab;

CREATE TABLE productos (
  id INT AUTO_INCREMENT PRIMARY KEY,
  nombre VARCHAR(100) NOT NULL,
  precio INT NOT NULL,
  imagen VARCHAR(200) NOT NULL
);

CREATE TABLE colecciones (
  id INT AUTO_INCREMENT PRIMARY KEY,
  titulo VARCHAR(100) NOT NULL,
  descripcion VARCHAR(200) NOT NULL
);

CREATE TABLE contactos (
  id INT AUTO_INCREMENT PRIMARY KEY,
  nombre VARCHAR(100) NOT NULL,
  correo VARCHAR(100) NOT NULL,
  mensaje TEXT NOT NULL,
  creado_en TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO productos (nombre, precio, imagen) VALUES
('Chaqueta X-Lab', 350000, 'img/chaqueta.jpg'),
('Guante negro', 90000, 'img/guante.jpg'),
('Gorro bucket', 80000, 'img/gorro.jpg');

INSERT INTO colecciones (titulo, descripcion) VALUES
('Spring Summer', 'Materiales de creacion y proteccion.'),
('Keep Unseen', 'Un lenguaje visual oscuro y limpio.'),
('Crafted Elements', 'Piezas hechas a mano en pocas unidades.');

INSERT INTO contactos (nombre, correo, mensaje) VALUES
('Ana Rojas', 'ana@correo.com', 'Hola, quiero saber si la chaqueta tiene talla M.');
