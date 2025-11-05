CREATE DATABASE IF NOT EXISTS BD_ALUGUEL_PRODUTOS;
USE BD_ALUGUEL_PRODUTOS;

CREATE TABLE IF NOT EXISTS CLIENTE(
	CLIENTE_ID INTEGER AUTO_INCREMENT PRIMARY KEY,
    EMAIL VARCHAR (255) NOT NULL,
    CPF VARCHAR (14) NOT NULL,
    NOME VARCHAR (255) NOT NULL,
    TELEFONE VARCHAR (15) NOT NULL
);

CREATE TABLE IF NOT EXISTS PRODUTO(
	PRODUTO_ID INTEGER AUTO_INCREMENT PRIMARY KEY,
    NOME VARCHAR(255) NOT NULL,
    DESCRICAO VARCHAR (500) NOT NULL,
    PRECO DECIMAL NOT NULL,
    QTD_DISPONIVEL INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS ALUGUEL(
	ALUGUEL_ID INTEGER AUTO_INCREMENT PRIMARY KEY,
    DATA_ALUGUEL DATE NOT NULL,
    DATA_DEVOLUCAO DATE NOT NULL,
    VALOR_TOTAL DECIMAL NOT NULL,
    FK_CLIENTE_ID INTEGER NOT NULL,
    FK_PRODUTO_ID INTEGER NOT NULL,
    FOREIGN KEY (FK_CLIENTE_ID) REFERENCES CLIENTE(CLIENTE_ID) ON DELETE CASCADE,
    FOREIGN KEY (FK_PRODUTO_ID) REFERENCES PRODUTO(PRODUTO_ID) ON DELETE CASCADE 
);

-- DML - LINGUAGEM DE MANIPULAÇÃO 

-- INSERT - INSERIR 

INSERT INTO CLIENTE (EMAIL,TELEFONE,CPF,NOME)
VALUES ("email@email.com", "19999999999","123456789","Leo");

INSERT INTO CLIENTE (EMAIL, TELEFONE, CPF, NOME)
VALUES ("geribolanicoly@gmail.com","19995592905", "58119104870","Nicoly");

INSERT INTO CLIENTE (NOME, EMAIL, TELEFONE, CPF)
VALUES ("Gabriel","gabriel@gmail.com","19994154099", "22222222222");

-- SELECT - SELECIONAR

SELECT * FROM CLIENTE;

-- INSERIR PRODUTOS

INSERT INTO PRODUTO (NOME, DESCRICAO, PRECO, QTD_DISPONIVEL)
VALUES ("MacBook M4","Notebook Apple", 4789.90, 5);

INSERT INTO PRODUTO (NOME, DESCRICAO, PRECO , QTD_DISPONIVEL)
VALUES ("Iphone 17", "Smartphone Apple", 16.000, 3);

INSERT INTO PRODUTO (NOME, DESCRICAO, PRECO, QTD_DISPONIVEL)
VALUES ("Appe Ipad 11", "Tablet Apple", 2.659, 11);

INSERT INTO PRODUTO (NOME, DESCRICAO, PRECO, QTD_DISPONIVEL)
VALUES ("AirPods 4", "Fone Apple", 1.549, 31);

INSERT INTO PRODUTO (NOME, DESCRICAO, PRECO, QTD_DISPONIVEL)
VALUES ("Apple Watch", "Relógio", 1.540, 50);

INSERT INTO PRODUTO (NOME, DESCRICAO, PRECO, QTD_DISPONIVEL)
VALUES ("AIR Tag", "Tag", 683, 100);

INSERT INTO PRODUTO (NOME, DESCRICAO, PRECO, QTD_DISPONIVEL)
VALUES ("JBL boombox","Caixa de Som", 3.200, 30);

INSERT INTO PRODUTO (NOME, DESCRICAO, PRECO, QTD_DISPONIVEL)
VALUES ("PS5","Console", 3.760, 90);

INSERT INTO PRODUTO (NOME, DESCRICAO, PRECO, QTD_DISPONIVEL)
VALUES ("Playstation VR","Óculos de Realidade Virtual", 2.180, 40);

INSERT INTO PRODUTO (NOME, DESCRICAO, PRECO, QTD_DISPONIVEL)
VALUES ("Whoop 5","Pulseira Monitora", 3.589, 60);


SELECT * FROM PRODUTO;

-- INSERIR ALUGUEIS 
SELECT * FROM CLIENTE;
SELECT * FROM PRODUTO;

INSERT INTO ALUGUEL (DATA_ALUGUEL, 
					DATA_DEVOLUCAO, 
                    VALOR_TOTAL,
                    FK_CLIENTE_ID,
                    FK_PRODUTO_ID)
VALUES 				("2025-09-24", 
					 "2025-10-01", 
                     7890, 
                     3, 
                     2);
                     
INSERT INTO ALUGUEL (DATA_ALUGUEL, 
					DATA_DEVOLUCAO, 
                    VALOR_TOTAL,
                    FK_CLIENTE_ID,
                    FK_PRODUTO_ID)
VALUES 				("2025-07-26", 
					 "2025-09-09", 
                     8690, 
                     2, 
                     9);
                     
INSERT INTO ALUGUEL (DATA_ALUGUEL, 
					DATA_DEVOLUCAO, 
                    VALOR_TOTAL,
                    FK_CLIENTE_ID,
                    FK_PRODUTO_ID)
VALUES 				("2025-06-23", 
					 "2025-08-08", 
                     15.000, 
                     1, 
                     6);
                     
INSERT INTO ALUGUEL (DATA_ALUGUEL, 
					DATA_DEVOLUCAO, 
                    VALOR_TOTAL,
                    FK_CLIENTE_ID,
                    FK_PRODUTO_ID)
VALUES 				("2025-04-23", 
					 "2025-05-09", 
                     7890, 
                     1, 
                     1);
                     
INSERT INTO ALUGUEL (DATA_ALUGUEL, 
					DATA_DEVOLUCAO, 
                    VALOR_TOTAL,
                    FK_CLIENTE_ID,
                    FK_PRODUTO_ID)
VALUES 				("2025-10-24", 
					 "2025-11-01", 
                     5670, 
                     4, 
                     10);
                     
INSERT INTO ALUGUEL (DATA_ALUGUEL, 
					DATA_DEVOLUCAO, 
                    VALOR_TOTAL,
                    FK_CLIENTE_ID,
                    FK_PRODUTO_ID)
VALUES 				("2025-03-24", 
					 "2025-04-01", 
                     4000, 
                     1, 
                     5);
	
INSERT INTO ALUGUEL (DATA_ALUGUEL, 
					DATA_DEVOLUCAO, 
                    VALOR_TOTAL,
                    FK_CLIENTE_ID,
                    FK_PRODUTO_ID)
VALUES 				("2025-02-20", 
					 "2025-03-01", 
                     7890, 
                     3, 
                     2);
                     
INSERT INTO ALUGUEL (DATA_ALUGUEL, 
					DATA_DEVOLUCAO, 
                    VALOR_TOTAL,
                    FK_CLIENTE_ID,
                    FK_PRODUTO_ID)
VALUES 				("2025-01-02", 
					 "2025-10-01", 
                     20.000, 
                     1, 
                     1);
                     
INSERT INTO ALUGUEL (DATA_ALUGUEL, 
					DATA_DEVOLUCAO, 
                    VALOR_TOTAL,
                    FK_CLIENTE_ID,
                    FK_PRODUTO_ID)
VALUES 				("2025-09-24", 
					 "2025-10-01", 
                     2000, 
                     3, 
                     4);
                     
INSERT INTO ALUGUEL (DATA_ALUGUEL, 
					DATA_DEVOLUCAO, 
                    VALOR_TOTAL,
                    FK_CLIENTE_ID,
                    FK_PRODUTO_ID)
VALUES 				("2025-10-24", 
					 "2025-11-01", 
                     9000, 
                     2, 
                     5);
                     
INSERT INTO ALUGUEL (DATA_ALUGUEL, 
					DATA_DEVOLUCAO, 
                    VALOR_TOTAL,
                    FK_CLIENTE_ID,
                    FK_PRODUTO_ID)
VALUES 				("2025-12-24", 
					 "2026-01-01", 
                     9000, 
                     3, 
                     6);
                     
INSERT INTO ALUGUEL (DATA_ALUGUEL, 
					DATA_DEVOLUCAO, 
                    VALOR_TOTAL,
                    FK_CLIENTE_ID,
                    FK_PRODUTO_ID)
VALUES 				("2025-05-21", 
					 "2025-06-12", 
                     10.000, 
                     1, 
                     1);
                     
INSERT INTO ALUGUEL (DATA_ALUGUEL, 
					DATA_DEVOLUCAO, 
                    VALOR_TOTAL,
                    FK_CLIENTE_ID,
                    FK_PRODUTO_ID)
VALUES 				("2025-05-24", 
					 "2025-06-01", 
                     7560, 
                     3, 
                     9);
                     
INSERT INTO ALUGUEL (DATA_ALUGUEL, 
					DATA_DEVOLUCAO, 
                    VALOR_TOTAL,
                    FK_CLIENTE_ID,
                    FK_PRODUTO_ID)
VALUES 				("2025-01-24", 
					 "2025-03-01", 
                     13.780, 
                     1, 
                     1);
                     
INSERT INTO ALUGUEL (DATA_ALUGUEL, 
					DATA_DEVOLUCAO, 
                    VALOR_TOTAL,
                    FK_CLIENTE_ID,
                    FK_PRODUTO_ID)
VALUES 				("2025-07-01", 
					 "2025-07-10", 
                     2.000, 
                     2, 
                     5);
                     
INSERT INTO ALUGUEL (DATA_ALUGUEL, 
					DATA_DEVOLUCAO, 
                    VALOR_TOTAL,
                    FK_CLIENTE_ID,
                    FK_PRODUTO_ID)
VALUES 				("2025-09-28", 
					 "2025-10-11", 
                     3000, 
                     3, 
                     2);
                     
INSERT INTO ALUGUEL (DATA_ALUGUEL, 
					DATA_DEVOLUCAO, 
                    VALOR_TOTAL,
                    FK_CLIENTE_ID,
                    FK_PRODUTO_ID)
VALUES 				("2025-09-29", 
					 "2025-10-11", 
                     5.000, 
                     2, 
                     9);
                     
INSERT INTO ALUGUEL (DATA_ALUGUEL, 
					DATA_DEVOLUCAO, 
                    VALOR_TOTAL,
                    FK_CLIENTE_ID,
                    FK_PRODUTO_ID)
VALUES 				("2025-09-07", 
					 "2025-10-09", 
                     13.908,
                     2, 
                     1);
                     
INSERT INTO ALUGUEL (DATA_ALUGUEL, 
					DATA_DEVOLUCAO, 
                    VALOR_TOTAL,
                    FK_CLIENTE_ID,
                    FK_PRODUTO_ID)
VALUES 				("2025-09-28", 
					 "2025-10-01", 
                     3000, 
                     1, 
                     2);
                     
INSERT INTO ALUGUEL (DATA_ALUGUEL, 
					DATA_DEVOLUCAO, 
                    VALOR_TOTAL,
                    FK_CLIENTE_ID,
                    FK_PRODUTO_ID)
VALUES 				("2025-09-12", 
					 "2025-10-01", 
                     9.569, 
                     4, 
                     9);
SELECT * FROM ALUGUEL;

SELECT * FROM CLIENTE;
SELECT * FROM PRODUTO;

-- ATUALIZAR UM REGISTRO (UPDATE)
UPDATE PRODUTO
SET    PRECO = 3500
WHERE  PRODUTO_ID = 1;

UPDATE PRODUTO
SET    PRECO = 15700
WHERE  PRODUTO_ID = 2;

UPDATE PRODUTO
SET    PRECO = 2800
WHERE  PRODUTO_ID = 3;

-- QTD_ DISP

UPDATE PRODUTO
SET    QTD_DISPONIVEL = 3
WHERE  PRODUTO_ID = 1;

UPDATE PRODUTO
SET    QTD_DISPONIVEL = 10
WHERE  PRODUTO_ID = 3;

UPDATE PRODUTO
SET    QTD_DISPONIVEL = 29
WHERE  PRODUTO_ID = 4;

UPDATE PRODUTO
SET    QTD_DISPONIVEL = 47
WHERE  PRODUTO_ID = 5;

UPDATE PRODUTO
SET    QTD_DISPONIVEL = 56
WHERE  PRODUTO_ID = 10;

-- EMAIL

UPDATE CLIENTE
SET    EMAIL = "leo@gamil.com"
WHERE  CLIENTE_ID = 1;

UPDATE CLIENTE
SET    EMAIL = "gabrielevaristo@gamil.com"
WHERE  CLIENTE_ID = 3;

-- DATA DEV ALUGUEL

UPDATE ALUGUEL
SET    DATA_DEVOLUCAO = "2025-12-25"
WHERE  ALUGUEL_ID = 1;

UPDATE ALUGUEL
SET    DATA_DEVOLUCAO = "2025-12-25"
WHERE  ALUGUEL_ID = 2;

UPDATE ALUGUEL
SET    DATA_DEVOLUCAO = "2025-12-25"
WHERE  ALUGUEL_ID = 3;

UPDATE ALUGUEL
SET    DATA_DEVOLUCAO = "2025-12-25"
WHERE  ALUGUEL_ID = 4;

UPDATE ALUGUEL
SET    DATA_DEVOLUCAO = "2025-12-25"
WHERE  ALUGUEL_ID = 5;

UPDATE ALUGUEL
SET    DATA_DEVOLUCAO = "2025-12-25"
WHERE  ALUGUEL_ID = 6;

UPDATE ALUGUEL
SET    DATA_DEVOLUCAO = "2025-12-25"
WHERE  ALUGUEL_ID = 7;

UPDATE ALUGUEL
SET    DATA_DEVOLUCAO = "2025-12-25"
WHERE  ALUGUEL_ID = 8;

-- APAGAR UM REGISTRO (DELETE)

DELETE FROM CLIENTE 
WHERE       CLIENTE_ID = 1;

DELETE FROM PRODUTO
WHERE       PRODUTO_ID = 4;

DELETE FROM ALUGUEL 
WHERE       ALUGUEL_ID = 3;

SELECT * FROM CLIENTE;

SELECT *
FROM CLIENTE
WHERE CLIENTE_ID = 2;

SELECT NOME, 
       PRECO
FROM   PRODUTO
WHERE  PRODUTO_ID = 3;