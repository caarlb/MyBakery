
# My Bakery

Website para la compra de pan de diferente variedades. Lista dinamica del catalogo segun existencias en la base de datos para elegir el favorito del consumidor. 

## Tech Stack

**Client:** JAVAweb, HTML, BOOTSTRAP, JavaScript

**DB:** SQL Server


## Scrip de la Base de Datos

Tabla Pan:

```bash
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
```
Tabla Historial de Compras:

```bash
CREATE TABLE TB_SHOP_HISTORY(
	COD_SHOP INT IDENTITY PRIMARY KEY,
	COD_BREAD INT,
	PURCHASE_PRICE NUMERIC(9,2),
	PURCHASED_AMOUNT INT, 
	CARD_USED NVARCHAR(4),
	PURCHASE_DATE DATETIME
)
```

Tabla Usuarios:

```bash
CREATE TABLE TB_USERS(
	NAME_USER VARCHAR(15) PRIMARY KEY, 
	PASS NVARCHAR(8) NOT NULL
)
```

Relacion entre tablas:

```bash
ALTER TABLE TB_SHOP_HISTORY
ADD FOREIGN KEY (COD_BREAD) 
REFERENCES TB_BREAD(COD_BREAD);
```
## Proximamente

Aun esta pendiente de comprater el modulo de login, asi como el modulo para completar a compra, la reporteria y mejoras en UX/UI

