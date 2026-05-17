CREATE TABLE clientes (
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(100),
    ciudad VARCHAR(50)
);

CREATE TABLE pedidos (
    id SERIAL PRIMARY KEY,
    cliente_id INTEGER,
	fecha DATE,
    total NUMERIC,

    FOREIGN KEY(cliente_id)
    REFERENCES clientes(id)
);

INSERT INTO clientes (nombre, ciudad) VALUES
('Camila', 'Santiago'),
('Javier', 'Valparaíso'),
('Fernanda', 'Santiago'),
('Martín', 'Arica'),
('Paula', 'Valparaíso');

INSERT INTO pedidos (cliente_id, fecha, total) VALUES
(1, '2026-05-01', 50000),
(1, '2026-05-03', 70000),
(2, '2026-05-05', 30000),
(3, '2026-05-08', 120000),
(5, '2026-05-10', 25000);

-- 1. Inserción de datos (INSERT)

-- Insertar al menos 3 nuevos clientes.
INSERT INTO clientes (nombre, ciudad)
VALUES
('Andrea', 'Santiago'),
('Felipe', 'Arica'),
('Valentina', 'Concepción');

-- Insertar al menos 5 pedidos asociados a los clientes.
INSERT INTO pedidos (cliente_id, fecha, total)
VALUES
(1, '2026-05-10', 35000),
(2, '2026-05-11', 42000),
(3, '2026-05-12', 78000),
(1, '2026-05-13', 15000),
(2, '2026-05-14', 99000);


-- 2. Actualización de datos (UPDATE)

-- Cambiar la ciudad de un cliente con id = 2 a "Viña del Mar".
UPDATE clientes
SET ciudad = 'Viña del Mar'
WHERE id = 2;

-- Modificar el total de un pedido existente.
UPDATE pedidos
SET total = 120000
WHERE id = 1;


-- 3. Eliminación de datos (DELETE)

--Eliminar un pedido por su id.
DELETE FROM pedidos
WHERE id = 5;

--Intentar eliminar un cliente que tiene pedidos asociados y documentar el resultado (debe fallar si hay
--restricción de integridad referencial).
DELETE FROM clientes
WHERE id = 1;

