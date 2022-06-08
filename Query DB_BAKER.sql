CREATE TABLE TB_BREAD(
	COD_BREAD INT IDENTITY PRIMARY KEY,
	NAME NVARCHAR(50) NOT NULL,
	DESCRIPTION NVARCHAR(500) NOT NULL,
	PRICE NUMERIC(9,2) NOT NULL,
	IMG_1 NVARCHAR(200) NOT NULL,
	IMG_2 NVARCHAR(200) NOT NULL,
	IS_ACTIVE BIT NOT NULL, 
	STOCK INT NOT NULL
)

CREATE TABLE TB_SHOP_HISTORY(
	COD_SHOP INT IDENTITY PRIMARY KEY,
	COD_BREAD INT,
	PURCHASE_PRICE NUMERIC(9,2),
	PURCHASED_AMOUNT INT, 
	CARD_USED NVARCHAR(4),
	PURCHASE_DATE DATETIME
)

CREATE TABLE TB_USERS(
	NAME_USER VARCHAR(15) PRIMARY KEY, 
	PASS NVARCHAR(8) NOT NULL
)

ALTER TABLE TB_SHOP_HISTORY
ADD FOREIGN KEY (COD_BREAD) REFERENCES TB_BREAD(COD_BREAD);

---------- querys de prueba de aca para abajo ----------------

SELECT * FROM TB_BREAD

INSERT INTO TB_BREAD(NAME, DESCRIPTION, PRICE, IMG_1, IMG_2, IS_ACTIVE, STOCK) 
VALUES ('Pirujo', 'Pan desabrido, unidades independientes, con forma elongada', 4.30, 'pirujo1.png', 'pirujo2.png', 1, 50);

INSERT INTO TB_BREAD(NAME, DESCRIPTION, PRICE, IMG_1, IMG_2, IS_ACTIVE, STOCK) 
VALUES ('Frances', 'Pan desabrido, unidas en grupos de 8, con forma alargada rectangular', 3.30, 'frances1.png', 'frances2.png', 1, 300);

INSERT INTO TB_BREAD(NAME, DESCRIPTION, PRICE, IMG_1, IMG_2, IS_ACTIVE, STOCK) 
VALUES ('Pan galleta', 'Pan de base desabrida con ligero dulsor, unidades en grupos de 4, con forma cuadrada', 6.50, 'pan_galleta1.png', 'pan_galleta2.png', 1, 50);

INSERT INTO TB_BREAD(NAME, DESCRIPTION, PRICE, IMG_1, IMG_2, IS_ACTIVE, STOCK) 
VALUES ('Semita', 'Panes ligeramente dulces y con sabor a anis, unidades independientes de forma redondeada', 5.0, 'semita1.png', 'semita2.png', 1, 50);

INSERT INTO TB_BREAD(NAME, DESCRIPTION, PRICE, IMG_1, IMG_2, IS_ACTIVE, STOCK) 
VALUES ('Lenguas', 'Pan dulce alargada con forma de lengua, tostado y con azucar en la parte superior', 8, 'lengua1.png', 'lengua2.png', 1, 490);

INSERT INTO TB_BREAD(NAME, DESCRIPTION, PRICE, IMG_1, IMG_2, IS_ACTIVE, STOCK) 
VALUES ('Champurrada', 'Pan dulce y tostado, plano y con forma redonda', 3.50, 'champurrada1.png', 'champurrada2.png', 1, 50);

INSERT INTO TB_BREAD(NAME, DESCRIPTION, PRICE, IMG_1, IMG_2, IS_ACTIVE, STOCK) 
VALUES ('Campechana', 'Pan dulce enrollado, tostado en la superficie y bañado con azucar', 4.30, 'campechana1.png', 'campechana2.png', 1, 50);

INSERT INTO TB_BREAD(NAME, DESCRIPTION, PRICE, IMG_1, IMG_2, IS_ACTIVE, STOCK) 
VALUES ('Hojaldras', 'Pan dulce y tostado con forma alargada, simulando la hoja de un arbol', 4.30, 'hojaldra1.png', 'hojaldra2.png', 1, 50);

INSERT INTO TB_BREAD(NAME, DESCRIPTION, PRICE, IMG_1, IMG_2, IS_ACTIVE, STOCK) 
VALUES ('Rosquita', 'Pan dulce y tostado con forma redondeada, simulando una rosca y sus bordes', 5, 'rosquita1.png', 'rosquita2.png', 1, 50);

INSERT INTO TB_BREAD(NAME, DESCRIPTION, PRICE, IMG_1, IMG_2, IS_ACTIVE, STOCK) 
VALUES ('Mollete', 'Pan dulce y esponjado, con forma redonda y con conchita de azucar en su cubierta', 11, 'mollete1.png', 'mollete2.png', 1, 50);

INSERT INTO TB_BREAD(NAME, DESCRIPTION, PRICE, IMG_1, IMG_2, IS_ACTIVE, STOCK) 
VALUES ('Pan de yemas', 'Pan dulce y esponjado, caracterizado por tener yemas como principal ingrediente lo cual potencia su sabor', 5.30, 'yemas1.png', 'yemas2.png', 1, 90);

SELECT * FROM TB_BREAD


UPDATE TB_BREAD
SET STOCK=1
WHERE COD_BREAD=4; 

UPDATE TB_BREAD
SET IS_ACTIVE=1
WHERE COD_BREAD=1; 