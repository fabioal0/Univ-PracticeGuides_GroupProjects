--CREATE SCHEMA RentaCar;

CREATE TABLE RentaCar.Cliente(
	Nif				int				Primary Key,
	Num_carta		varchar(10)		Unique,
	Nome			varchar(50)		Not Null,
	Endereço		varchar(50)		Not Null
);

Create Table RentaCar.Balcao(
	Numero			int				Primary Key,
	Nome			varchar(50)		Not Null,
	Endereco		varchar(50)		Not Null
);

Create Table RentaCar.TipoVeiculo(
	Codigo			tinyint 		Primary Key,
	Designacao		varchar(255)	Not Null,
	Arcondicionado	bit				Not Null
);

Create Table RentaCar.Pesado(
	Tipoveic		tinyint 		Primary Key,	
	Peso			tinyint 		Not Null,
	Passageir		tinyint 		Not Null,
	Foreign Key (Tipoveic) References  RentaCar.TipoVeiculo(Codigo)

);

Create Table RentaCar.Ligeiro(
	Tipoveic		tinyint 		Primary Key,
	NumLug			tinyint 		Not Null,
	Combustivel		varchar(20)		Not Null,
	Foreign Key (Tipoveic) References  RentaCar.TipoVeiculo(Codigo)
);

Create Table RentaCar.Veiculo(
	Matricula		varchar(8)		Primary Key,
	Ano				int				Not Null,
	Marca			varchar(20)		Not Null,
	Tipoveic		tinyint			Not Null,
	Foreign Key (Tipoveic) References  RentaCar.TipoVeiculo(Codigo)
);

Create Table RentaCar.VeicSimilar(
	Tipoveic1		tinyint			Not Null,
	Tipoveic2		tinyint			Not Null,
	Primary Key(Tipoveic1,Tipoveic2),
	Foreign Key (Tipoveic1) References  RentaCar.TipoVeiculo(Codigo),
	Foreign Key (Tipoveic2) References  RentaCar.TipoVeiculo(Codigo)
);

Create Table RentaCar.Aluguer(
	Numero			int				Primary Key,
	Duracao			time			Not Null,
	[Data]			date			Not Null,
	ClieteNif		int				Not Null,
	BalcaoNum		int				Not Null,
	VeicMatric		varchar(8)		Not Null,
	Foreign Key (ClieteNif) References  RentaCar.Cliente(Nif),
	Foreign Key (BalcaoNum) References  RentaCar.Balcao(Numero),
	Foreign Key (VeicMatric) References  RentaCar.Veiculo(Matricula)
);