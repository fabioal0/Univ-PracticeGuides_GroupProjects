CREATE SCHEMA PrescricaoEletronicaMedicamentos;

CREATE TABLE PrescricaoEletronicaMedicamentos.Medico (
	nID				BIGINT			NOT NULL,
	especialidade	VARCHAR(255)	NOT NULL,
	nome			VARCHAR(255)	NOT NULL,
	CONSTRAINT MDCPK
		PRIMARY KEY(nID)
);

CREATE TABLE PrescricaoEletronicaMedicamentos.Paciente (
	nUtente			INT				NOT NULL,
	nome			VARCHAR(255)	NOT NULL,
	dataNascimento	DATE			NOT NULL,
	endereco		VARCHAR(255)	NOT NULL,
	CONSTRAINT PCNTPK
		PRIMARY KEY(nUtente)
);

CREATE TABLE PrescricaoEletronicaMedicamentos.Farmaceutica (
	nRegistoNacional	BIGINT			NOT NULL,
	nome				VARCHAR(255)	NOT NULL,
	endereco			VARCHAR(255)	NOT NULL,
	nTelefone			BIGINT,
	CONSTRAINT FRMCTCPK
		PRIMARY KEY(nRegistoNacional),
	CONSTRAINT FRMCTCUNIQ
		UNIQUE(nome,endereco)
);

CREATE TABLE PrescricaoEletronicaMedicamentos.FarmaceuticaFarmaco (
	farmaceuticaNRN			BIGINT			NOT NULL,
	farmacoNomeComercial	VARCHAR(255)	NOT NULL,
	frfrNRN					BIGINT			NOT NULL,
	CONSTRAINT FRFRPK
		PRIMARY KEY(farmaceuticaNRN,farmacoNomeComercial),
	CONSTRAINT FRFRFK1
		FOREIGN KEY(farmaceuticaNRN) REFERENCES PrescricaoEletronicaMedicamentos.Farmaceutica(nRegistoNacional)
);

CREATE TABLE PrescricaoEletronicaMedicamentos.Farmaco (
	nomeComercial		VARCHAR(255)	NOT NULL,
	farmaceuticaNRN		BIGINT			NOT NULL,
	formula				VARCHAR(max)	NOT NULL,
	CONSTRAINT FRMCPK
		PRIMARY KEY(nomeComercial,farmaceuticaNRN),
	CONSTRAINT FRMCFK
		FOREIGN KEY(farmaceuticaNRN) REFERENCES PrescricaoEletronicaMedicamentos.Farmaceutica(nRegistoNacional)
);

ALTER TABLE PrescricaoEletronicaMedicamentos.FarmaceuticaFarmaco ADD CONSTRAINT FRFRFK2
		FOREIGN KEY(farmacoNomeComercial,frfrNRN) REFERENCES PrescricaoEletronicaMedicamentos.Farmaco(nomeComercial,farmaceuticaNRN);

CREATE TABLE PrescricaoEletronicaMedicamentos.Farmacia (
	nome			VARCHAR(255)		NOT NULL,
	endereco		VARCHAR(255)		NOT NULL,
	nTelefone		BIGINT,
	CONSTRAINT FRMCAPK
		PRIMARY KEY(nome),
	CONSTRAINT FRMCAUNIQ
		UNIQUE(endereco)
);

CREATE TABLE PrescricaoEletronicaMedicamentos.FarmacoFarmacia (
	farmaciaNome			VARCHAR(255)		NOT NULL,
	farmacoNomeComercial	VARCHAR(255)		NOT NULL,
	frfrNRN					BIGINT				NOT NULL,
	CONSTRAINT FRMCOFRMCAPK
		PRIMARY KEY(farmaciaNome,farmacoNomeComercial,frfrNRN),
	CONSTRAINT FRMCOFRMCAFK1
		FOREIGN KEY(farmaciaNome) REFERENCES PrescricaoEletronicaMedicamentos.Farmacia(nome),
	CONSTRAINT FRMCOFRMCAFK2
		FOREIGN KEY(farmacoNomeComercial,frfrNRN) REFERENCES PrescricaoEletronicaMedicamentos.Farmaco(nomeComercial,farmaceuticaNRN)
);

CREATE TABLE PrescricaoEletronicaMedicamentos.Prescricao (
	numero					INT					NOT NULL,
	medicoNID				BIGINT				NOT NULL,
	pacienteNUtente			INT					NOT NULL,
	farmaciaNome			VARCHAR(255),
	[data]					DATE,
	CONSTRAINT PRESPK
		PRIMARY KEY(numero),
	CONSTRAINT PRESFK1
		FOREIGN KEY(medicoNID) REFERENCES PrescricaoEletronicaMedicamentos.Medico(nID),
	CONSTRAINT PRESFK2
		FOREIGN KEY(pacienteNUtente) REFERENCES PrescricaoEletronicaMedicamentos.Paciente(nUtente),
	CONSTRAINT PRESFK3
		FOREIGN KEY(farmaciaNome) REFERENCES PrescricaoEletronicaMedicamentos.Farmacia(nome)
);

CREATE TABLE PrescricaoEletronicaMedicamentos.PrescricaoFarmaco (
	prescricaoNumero		INT					NOT NULL,
	farmacoNomeComercial	VARCHAR(255)		NOT NULL,
	farmaceuticaNRN			BIGINT				NOT NULL,
	CONSTRAINT PRESFRPK
		PRIMARY KEY(prescricaoNumero,farmacoNomeComercial,farmaceuticaNRN), 
	CONSTRAINT PRESFRFK1
		FOREIGN KEY(prescricaoNumero) REFERENCES PrescricaoEletronicaMedicamentos.Prescricao(numero),
	CONSTRAINT PRESFRFK2
		FOREIGN KEY(farmacoNomeComercial,farmaceuticaNRN) REFERENCES PrescricaoEletronicaMedicamentos.Farmaco(nomeComercial,farmaceuticaNRN)
);



