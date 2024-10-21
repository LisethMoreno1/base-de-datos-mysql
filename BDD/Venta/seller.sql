CREATE TABLE `BDDPROYECTO`.`venta` (
    `id_venta` INT PRIMARY KEY,
    `id_producto` INT,
    `id_usuario` INT,
    `id_cliente` INT,
    `id_categoria` INT,
    `forma_pago` VARCHAR(100),
    `numero_comprobante` VARCHAR(20),
    `numero_serie` VARCHAR(20),
    `fecha_venta` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    `total` DECIMAL(11, 2),
    `estado` VARCHAR(20),
    CONSTRAINT fk_categoria_venta FOREIGN KEY (`id_categoria`) REFERENCES `BDDPROYECTO`.`categoria`(`id_categoria`),
    CONSTRAINT fk_cliente_venta FOREIGN KEY (`id_cliente`) REFERENCES `BDDPROYECTO`.`cliente`(`id_cliente`),
    CONSTRAINT fk_usuario_venta FOREIGN KEY (`id_usuario`) REFERENCES `BDDPROYECTO`.`usuarios`(`id_usuario`)
);

INSERT INTO
    `BDDPROYECTO`.`venta` (
        id_venta,
        id_producto,
        id_usuario,
        id_cliente,
        id_categoria,
        forma_pago,
        numero_comprobante,
        numero_serie,
        fecha_venta,
        total,
        estado
    )
VALUES
    (
        1,
        101,
        0,
        1,
        1,
        'Tarjeta de crédito',
        '00012345',
        'SER001',
        CURRENT_TIMESTAMP,
        450.50,
        'Completado'
    ),
    (
        2,
        102,
        0,
        1,
        1,
        'Efectivo',
        '00012346',
        'SER002',
        CURRENT_TIMESTAMP,
        325.75,
        'Pendiente'
    );