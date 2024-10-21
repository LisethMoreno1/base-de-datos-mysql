CREATE TABLE `BDDPROYECTO`.`login` (
    `id_login` INT PRIMARY KEY AUTO_INCREMENT,
    `id_usuario` INT,
    `contrasena` VARCHAR(255),
    `fecha_creacion` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    `fecha_actualizacion` TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    FOREIGN KEY (`id_usuario`) REFERENCES `usuarios`(`id_usuario`) ON DELETE CASCADE
);

INSERT INTO
    `BDDPROYECTO`.`login` (`id_usuario`, `contrasena`)
VALUES
    (0, 'contraseña_encriptada');



DROP TABLE `BDDPROYECTO`.`login` ;