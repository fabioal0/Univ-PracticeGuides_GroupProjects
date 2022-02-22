--CREATE SCHEMA InformacaodaUniversidade;

CREATE TABLE InformacaodaUniversidade.Professor(
	NumMec			int				Primary Key,
	Nome			varchar(50)		Not Null,
	DataNasc		date			Not Null,
	Categoria		varchar(50)		Unique Not Null,
	AreaCient		varchar(50)		Not Null,
	Dedicacao		tinyint			Not Null,
	D_Nome			varchar(50)		Not Null,
);

CREATE TABLE InformacaodaUniversidade.Departamento(
	Nome			varchar(50)		Primary Key,
	Localizacao		varchar(50)		Not Null,
	P_NumMec		int				Not Null,
);

CREATE TABLE InformacaodaUniversidade.EstudanteGraduado(
	NumMec			int				Primary Key,
	Nome			varchar(50)		Not Null,
	DataNasc		date			Not Null,
	Aconcelhador	int				Not Null,
	D_Nome			varchar(50)		Not Null,
	GrauFormação	int				Not Null,
);

CREATE TABLE InformacaodaUniversidade.GrauFormacao(
	Codigo			int				Primary Key,
	Grau			int				Not Null,
);

CREATE TABLE InformacaodaUniversidade.ProfParticipaProj(
	P_NumMec		int				Not Null,
	PI_ID			int				Not Null,
	Primary Key(P_NumMec,PI_ID)
);

CREATE TABLE InformacaodaUniversidade.ProjInvestigacao(
	ID				int				Primary Key,
	Nome			varchar(50)		Unique Not Null,
	EntFinanciadora	varchar(50)		Not Null,
	Orcamento		int				Not Null,
	DataIni			date			Not Null,
	DataFim			date			Not Null,
	P_NumMec		int				Not Null,
);

CREATE TABLE InformacaodaUniversidade.EstParticipaProj(
	PI_ID			int				Not Null,
	E_NumMec		int				Not Null,
	P_NumMec		int				Not Null,
	Primary Key(E_NumMec,PI_ID)
);

ALTER TABLE InformacaodaUniversidade.Professor ADD CONSTRAINT FKProf FOREIGN KEY(D_Nome) REFERENCES InformacaodaUniversidade.Departamento(Nome);
ALTER TABLE InformacaodaUniversidade.Departamento ADD CONSTRAINT FKDep FOREIGN KEY(P_NumMec) REFERENCES InformacaodaUniversidade.Professor(NumMec);
ALTER TABLE InformacaodaUniversidade.EstudanteGraduado ADD CONSTRAINT FKEstg1 FOREIGN KEY(Aconcelhador) REFERENCES InformacaodaUniversidade.EstudanteGraduado(NumMec);
ALTER TABLE InformacaodaUniversidade.EstudanteGraduado ADD CONSTRAINT FKEstg2 FOREIGN KEY(D_Nome) REFERENCES InformacaodaUniversidade.Departamento(Nome);
ALTER TABLE InformacaodaUniversidade.EstudanteGraduado ADD CONSTRAINT FKEstg3 FOREIGN KEY(GrauFormação) REFERENCES InformacaodaUniversidade.GrauFormacao(Codigo);
ALTER TABLE InformacaodaUniversidade.ProjInvestigacao ADD CONSTRAINT FKPI FOREIGN KEY(P_NumMec) REFERENCES InformacaodaUniversidade.Professor(NumMec);
ALTER TABLE InformacaodaUniversidade.ProfParticipaProj ADD CONSTRAINT FKProfPProj1 FOREIGN KEY(P_NumMec) REFERENCES InformacaodaUniversidade.Professor(NumMec);
ALTER TABLE InformacaodaUniversidade.ProfParticipaProj ADD CONSTRAINT FKProfPProj2 FOREIGN KEY(PI_ID) REFERENCES InformacaodaUniversidade.ProjInvestigacao(ID);
ALTER TABLE InformacaodaUniversidade.EstParticipaProj ADD CONSTRAINT FKEssPProj1 FOREIGN KEY(PI_ID) REFERENCES InformacaodaUniversidade.ProjInvestigacao(ID);
ALTER TABLE InformacaodaUniversidade.EstParticipaProj ADD CONSTRAINT FKEssPProj2 FOREIGN KEY(E_NumMec) REFERENCES InformacaodaUniversidade.EstudanteGraduado(NumMec);
ALTER TABLE InformacaodaUniversidade.EstParticipaProj ADD CONSTRAINT FKEssPProj3 FOREIGN KEY(P_NumMec) REFERENCES InformacaodaUniversidade.Professor(NumMec);
