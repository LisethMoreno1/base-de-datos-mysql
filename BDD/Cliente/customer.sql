-- Creación de la tabla cliente
CREATE TABLE `BDDPROYECTO`.`cliente` (
    `id_cliente` INT PRIMARY KEY,
    `nombre_cliente` VARCHAR(100),
    `identificacion_cliente` VARCHAR(100),
    `contanto_cliente` VARCHAR(100),
    `fecha_creacion` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    `fecha_actualizacion` TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    `fecha_eliminacion` DATETIME NULL
);

-- Inserción de datos en la tabla cliente
INSERT INTO
    `BDDPROYECTO`.`cliente` (
        id_cliente,
        nombre_cliente,
        identificacion_cliente,
        contanto_cliente
    )
VALUES
    (
        1,
        'Juan Fazt',
        '12233553453',
        '301222212'
    );
