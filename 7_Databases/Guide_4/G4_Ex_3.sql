--CREATE SCHEMA Gest�odeStocks;

CREATE TABLE Gest�odeStocks.CondPag(
	Codigo			int				Primary Key,
	Dias			int				Unique Not Null,
);

CREATE TABLE Gest�odeStocks.Tipo(
	Codigo			int				Primary key,
	Designacao		varchar(255)	Not Null
);

CREATE TABLE Gest�odeStocks.Fornecedor(
	Nif				int				Primary Key,
	Nome			varchar(50)		Unique Not Null,
	Endereco		varchar(50)		Not Null,
	NumFax			int				Unique Not Null,
	Condpag			int				Not Null,
	TipCod			int				Not Null,
	Foreign Key (Condpag) References  Gest�odeStocks.CondPag(Codigo),
	Foreign Key (TipCod) References  Gest�odeStocks.Tipo(Codigo)
);

CREATE TABLE Gest�odeStocks.Encomenda(
	Numero			int				Primary Key,
	[Data]			date			Not Null,
	Nif				int				Not Null,
	Foreign Key (Nif) References Gest�odeStocks.Fornecedor(Nif)
);

CREATE TABLE Gest�odeStocks.Produto(
	Codigo			int				Primary Key,
	Nome			varchar(50)		Not Null,
	Preco			int				Not Null,
	Iva				tinyint			Not Null,				
	Quantidade		int		
);

CREATE TABLE Gest�odeStocks.EncomendaProd(
	Numero			int				Not Null,
	Codigo			int				Not Null,
	Quantiade		int,		
	PRIMARY KEY (Numero,Codigo),
	Foreign Key (Numero) References  Gest�odeStocks.Encomenda(Numero),
	Foreign Key (Codigo) References  Gest�odeStocks.Produto(Codigo)
);