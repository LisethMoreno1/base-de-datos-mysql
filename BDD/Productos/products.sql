CREATE TABLE `BDDPROYECTO`.`producto` (
    `id_producto` INT PRIMARY KEY,
    `nombre_producto` VARCHAR(200),
    `id_categoria` INT,
    `valor_producto` DECIMAL(10, 2),
    `cantidad_producto` INT,
    `estado_producto` BOOLEAN,
    `fecha_creacion` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    `fecha_actualizacion` TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    `fecha_eliminacion` DATETIME NULL,
    CONSTRAINT fk_categoria FOREIGN KEY (`id_categoria`) REFERENCES `BDDPROYECTO`.`categoria`(`id_categoria`) -- Definimos la clave foránea
);

INSERT INTO
    `BDDPROYECTO`.`producto` (
        `id_producto`,
        `nombre_producto`,
        `id_categoria`,
        `valor_producto`,
        `cantidad_producto`,
        `estado_producto`,
        `fecha_creacion`,
        `fecha_actualizacion`,
        `fecha_eliminacion`
    )
VALUES
    (
        4,
        'Producto A',
        1,
        50.00,
        100,
        TRUE,
        CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP,
        NULL
    ),
    (
        5,
        'Producto B',
        1,
        150.00,
        50,
        TRUE,
        CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP,
        NULL
    ),
    (
        6,
        'Producto C',
        1,
        75.00,
        80,
        TRUE,
        CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP,
        NULL
    );