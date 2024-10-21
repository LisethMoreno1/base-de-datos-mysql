-- Creación de la tabla categoria
CREATE TABLE `BDDPROYECTO`.`categoria` (
    `id_categoria` INT PRIMARY KEY,
    `nombre_categorias` VARCHAR(100),
    `fecha_creacion` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    `fecha_actualizacion` TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    `fecha_eliminacion` DATETIME NULL
);

-- Inserción de datos en la tabla categoria
INSERT INTO
    `BDDPROYECTO`.`categoria` (
        id_categoria,
        nombre_categSorias,
        fecha_creacion,
        fecha_actualizacion,
        fecha_eliminacion
    )
VALUES
    (
        1,
        'Tecnologias',
        CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP,
        NULL
    );