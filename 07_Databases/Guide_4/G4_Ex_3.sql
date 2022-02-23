--CREATE SCHEMA GestãodeStocks;

CREATE TABLE GestãodeStocks.CondPag(
	Codigo			int				Primary Key,
	Dias			int				Unique Not Null,
);

CREATE TABLE GestãodeStocks.Tipo(
	Codigo			int				Primary key,
	Designacao		varchar(255)	Not Null
);

CREATE TABLE GestãodeStocks.Fornecedor(
	Nif				int				Primary Key,
	Nome			varchar(50)		Unique Not Null,
	Endereco		varchar(50)		Not Null,
	NumFax			int				Unique Not Null,
	Condpag			int				Not Null,
	TipCod			int				Not Null,
	Foreign Key (Condpag) References  GestãodeStocks.CondPag(Codigo),
	Foreign Key (TipCod) References  GestãodeStocks.Tipo(Codigo)
);

CREATE TABLE GestãodeStocks.Encomenda(
	Numero			int				Primary Key,
	[Data]			date			Not Null,
	Nif				int				Not Null,
	Foreign Key (Nif) References GestãodeStocks.Fornecedor(Nif)
);

CREATE TABLE GestãodeStocks.Produto(
	Codigo			int				Primary Key,
	Nome			varchar(50)		Not Null,
	Preco			int				Not Null,
	Iva				tinyint			Not Null,				
	Quantidade		int		
);

CREATE TABLE GestãodeStocks.EncomendaProd(
	Numero			int				Not Null,
	Codigo			int				Not Null,
	Quantiade		int,		
	PRIMARY KEY (Numero,Codigo),
	Foreign Key (Numero) References  GestãodeStocks.Encomenda(Numero),
	Foreign Key (Codigo) References  GestãodeStocks.Produto(Codigo)
);