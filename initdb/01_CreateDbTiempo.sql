CREATE TABLE tiempo_limpio (
    id              INT PRIMARY KEY,
    data            DATE,
    tenda           VARCHAR(50),
    produto         VARCHAR(50),
    unidades        INT,
    prezo_unitario  DECIMAL(10,2),   -- DECIMAL e non FLOAT: suma exacta en euros
    importe         DECIMAL(12,2)
) CHARACTER SET utf8mb4;