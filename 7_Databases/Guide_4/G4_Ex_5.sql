CREATE SCHEMA GestaoConferencias;

CREATE TABLE GestaoConferencias.Instituicao (
	nome			VARCHAR(255)	NOT NULL,
	endereco		VARCHAR(255)	NOT NULL,
	CONSTRAINT INSTPK
		PRIMARY KEY(nome),
	CONSTRAINT INSTUNIQ
		UNIQUE(endereco)
);

CREATE TABLE GestaoConferencias.ArtigoCientifico (
	numeroRegisto		SMALLINT		NOT NULL,
	titulo				VARCHAR(255)	NOT NULL,
	CONSTRAINT ARCIENPK
		PRIMARY KEY(numeroRegisto),
);

CREATE TABLE GestaoConferencias.Pessoa (
	nome			VARCHAR(255)	NOT NULL,
	email			VARCHAR(255)	NOT NULL,
	morada			VARCHAR(255),
	instituicaoNome	VARCHAR(255),
	CONSTRAINT PESSPK
		PRIMARY KEY(email),
	CONSTRAINT PESSFK
		FOREIGN KEY(instituicaoNome) REFERENCES GestaoConferencias.Instituicao(nome)
);

CREATE TABLE GestaoConferencias.Autor (
	artigoNRegisto	SMALLINT		NOT NULL,
	pessoaEmail		VARCHAR(255)	NOT NULL,
	CONSTRAINT AUTORPK
		PRIMARY KEY(artigoNRegisto,pessoaEmail),
	CONSTRAINT AUTORFK1
		FOREIGN KEY(artigoNRegisto) REFERENCES GestaoConferencias.ArtigoCientifico(numeroRegisto),
	CONSTRAINT AUTORFK2
		FOREIGN KEY(pessoaEmail) REFERENCES GestaoConferencias.Pessoa(email)
);

CREATE TABLE GestaoConferencias.Participante (
	email			VARCHAR(255)	NOT NULL,
	dataInscricao	DATE			NOT NULL,
	CONSTRAINT PRTCPTPK
		PRIMARY KEY(email),
	CONSTRAINT PRTCPTFK
		FOREIGN KEY(email) REFERENCES GestaoConferencias.Pessoa(email)
);

CREATE TABLE GestaoConferencias.Estudante (
	email					VARCHAR(255)	NOT NULL,
	localizacaoComprovativo	VARCHAR(255)	NOT NULL,
	CONSTRAINT ESTDTPK
		PRIMARY KEY(email),
	CONSTRAINT ESTDTFK1
		FOREIGN KEY(email) REFERENCES GestaoConferencias.Participante(email),
	CONSTRAINT ESTDTFK
		FOREIGN KEY(localizacaoComprovativo) REFERENCES GestaoConferencias.Instituicao(endereco)
);

CREATE TABLE GestaoConferencias.NaoEstudante (
	email					VARCHAR(255)	NOT NULL,
	referenciaTransBancaria	INT				NOT NULL,
	CONSTRAINT NESTDTPK
		PRIMARY KEY(email),
	CONSTRAINT NESTDTFK
		FOREIGN KEY(email) REFERENCES GestaoConferencias.Participante(email),
	CONSTRAINT NESTDTUNIQ
		UNIQUE(referenciaTransBancaria)
);
