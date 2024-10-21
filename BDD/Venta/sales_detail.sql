CREATE TABLE `BDDPROYECTO`.`detalle_venta` (
    `id_detalle` INT PRIMARY KEY AUTO_INCREMENT,
    `id_venta` INT,
    `id_producto` INT,
    `cantidad` INT,
    `precio_unitario` DECIMAL(10, 2),
    `subtotal` DECIMAL(10, 2),
    CONSTRAINT fk_venta_detalle FOREIGN KEY (`id_venta`) REFERENCES `BDDPROYECTO`.`venta`(`id_venta`) ON DELETE CASCADE,
    CONSTRAINT fk_producto_detalle FOREIGN KEY (`id_producto`) REFERENCES `BDDPROYECTO`.`producto`(`id_producto`)
);

INSERT INTO
    `BDDPROYECTO`.`detalle_venta` (
        id_venta,
        id_producto,
        cantidad,
        precio_unitario,
        subtotal
    )
VALUES
    (1, 3, 2, 50.00, 100.00),
    (1, 2, 1, 150.00, 150.00),
    (2, 1, 2, 75.00, 225.00);