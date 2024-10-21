CREATE TABLE `BDDPROYECTO`.`usuarios` (
    `id_usuario` INT PRIMARY KEY,
    `primer_nombre` VARCHAR(100),
    `segundo_nombre` VARCHAR(100),
    `primer_apellido` VARCHAR(100),
    `segundo_apellido` VARCHAR(100),
    `numero_telefono` VARCHAR(100),
    `edad` INT,
    `email` VARCHAR(200),
    `fecha_nacimiento` DATE,
);

ALTER TABLE
    `BDDPROYECTO`.`usuarios`
ADD
    fecha_creacion TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
ADD
    fecha_actualizacion TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
ADD
    fecha_eliminacion DATETIME NULL;

INSERT INTO
    `BDDPROYECTO`.`usuarios` (
        primer_nombre,
        segundo_nombre,
        primer_apellido,
        segundo_apellido,
        numero_telefono,
        edad,
        email,
        fecha_nacimiento,
        fecha_creacion,
        fecha_actualizacion,
        fecha_eliminacion
    )
VALUES
    (
        'Juan',
        'Carlos',
        'González',
        'Pérez',
        '3001234567',
        30,
        'juan.perez@example.com',
        '1990-05-15',
        CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP,
        NULL
    );