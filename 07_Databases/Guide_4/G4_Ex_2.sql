CREATE SCHEMA GestaoReservasVoo;

CREATE TABLE GestaoReservasVoo.Aeroporto (
	codigoAeroporto	SMALLINT		NOT NULL,
	cidade			VARCHAR(255)	NOT NULL,
	[state]			VARCHAR(255)	NOT NULL,
	nome			VARCHAR(255)	NOT NULL,
	CONSTRAINT AEROPK
		PRIMARY KEY(codigoAeroporto),
	CONSTRAINT AEROUNIQ
		UNIQUE(cidade,nome)
);

CREATE TABLE GestaoReservasVoo.TipoAviao (
	tipoNome		VARCHAR(255)	NOT NULL,
	companhia		VARCHAR(255)	NOT NULL,
	numeroLugares	SMALLINT		NOT NULL,
	CONSTRAINT TPAVIPK
		PRIMARY KEY(tipoNome)
);

CREATE TABLE GestaoReservasVoo.AeroportoTipoAviao (
	aeroporto_CodigoAeroporto	SMALLINT		NOT NULL,
	tipoAviao_TipoNome			VARCHAR(255)	NOT NULL,
	CONSTRAINT AEROTPAVIPK
		PRIMARY KEY(aeroporto_CodigoAeroporto, tipoAviao_TipoNome),
	CONSTRAINT AEROTPAVIFK1
		FOREIGN KEY (aeroporto_CodigoAeroporto) REFERENCES GestaoReservasVoo.Aeroporto(codigoAeroporto),
	CONSTRAINT AEROTPAVIFK2
		FOREIGN KEY (tipoAviao_TipoNome) REFERENCES GestaoReservasVoo.TipoAviao(tipoNome)
);

CREATE TABLE GestaoReservasVoo.Aviao (
	aviaoID			BIGINT			NOT NULL,
	totalLugares	SMALLINT		NOT NULL,
	tipoDeAviao		VARCHAR(255)	NOT NULL,
	CONSTRAINT AVIPK
		PRIMARY KEY(aviaoID),
	CONSTRAINT AVIFK
		FOREIGN KEY(tipoDeAviao) REFERENCES GestaoReservasVoo.TipoAviao(tipoNome),
	CONSTRAINT LUGCHECK
		CHECK(totalLugares > 0)
);

CREATE TABLE GestaoReservasVoo.Voo (
	number			BIGINT			NOT NULL,
	companhia		VARCHAR(255)	NOT NULL,
	weekdays		TINYINT			NOT NULL,
	CONSTRAINT VOOPK
		PRIMARY KEY(number),
	CONSTRAINT WKDCHECK
		CHECK(weekdays >= 0 AND weekdays <= 7)
);

CREATE TABLE GestaoReservasVoo.Tarifa (
	codigo			BIGINT			NOT NULL,
	vooNumber		BIGINT			NOT NULL,
	restricao		BIGINT			NOT NULL,
	quantia			SMALLMONEY		NOT NULL,
	CONSTRAINT TRFPK
		PRIMARY KEY(codigo),
	CONSTRAINT TRFFK
		FOREIGN KEY(vooNumber) REFERENCES GestaoReservasVoo.Voo(number),
	CONSTRAINT QNTCHECK
		CHECK(quantia > 0)
);

CREATE TABLE GestaoReservasVoo.FlightLeg (
	legNum					BIGINT			NOT NULL,
	vooNumber				BIGINT			NOT NULL,
	horaChegada				TIME			NOT NULL,
	horaPartida				TIME			NOT NULL,
	codigoAeroporto_Chegada	SMALLINT		NOT NULL,
	codigoAeroporto_Partida	SMALLINT		NOT NULL,
	CONSTRAINT FLGLPK
		PRIMARY KEY(legNum,vooNumber),
	CONSTRAINT FLGLFK1
		FOREIGN KEY(vooNumber) REFERENCES GestaoReservasVoo.Voo(number),
	CONSTRAINT FLGLFK2
		FOREIGN KEY(codigoAeroporto_Chegada) REFERENCES GestaoReservasVoo.Aeroporto(codigoAeroporto),
	CONSTRAINT FLGLFK3
		FOREIGN KEY(codigoAeroporto_Partida) REFERENCES GestaoReservasVoo.Aeroporto(codigoAeroporto)
);

CREATE TABLE GestaoReservasVoo.LegInstance (
	[data]				DATE		NOT NULL,
	lugaresDisponiveis	SMALLINT	NOT NULL,
	flightLegNum		BIGINT		NOT NULL,
	flightLegVooNum		BIGINT	    NOT NULL,
	aviaoID				BIGINT		NOT NULL,
	CONSTRAINT LGIPK
		PRIMARY KEY([data],flightLegNum,flightLegVooNum),
	CONSTRAINT LGIFK1
		FOREIGN KEY(flightLegNum,flightLegVooNum) REFERENCES GestaoReservasVoo.FlightLeg(legNum,vooNumber),
	CONSTRAINT LFIFK2
		FOREIGN KEY(aviaoID) REFERENCES GestaoReservasVoo.Aviao(aviaoID),
	CONSTRAINT LUGDISCHECK
		CHECK(lugaresDisponiveis >= 0)
);

CREATE TABLE GestaoReservasVoo.Lugares (
	numLLugar			SMALLINT		NOT NULL,
	nome				VARCHAR(255)	NOT NULL,
	numero				SMALLINT		NOT NULL,
	li_Data				DATE			NOT NULL,
	li_FlightLegVooNum	BIGINT			NOT NULL,
	li_FlightLegNum		BIGINT			NOT NULL,
	CONSTRAINT LUGPK
		PRIMARY KEY(numLLUgar, li_Data, li_FlightLegVooNum, li_FlightLegNum),
	CONSTRAINT LUGFK
		FOREIGN KEY(li_Data,li_FlightLegNum,li_FlightLegVooNum) REFERENCES GestaoReservasVoo.LegInstance([data],flightLegNum,flightLegVooNum)
);

CREATE TABLE GestaoReservasVoo.Partida (
	aeroporto_CodigoAeroporto		SMALLINT		NOT NULL,
	li_Data							DATE			NOT NULL,
	li_FlightLegVooNum				BIGINT			NOT NULL,
	li_FlightLegNum					BIGINT			NOT NULL,
	tempoPartida					TIME			NOT NULL,
	CONSTRAINT PRTDPK
		PRIMARY KEY(aeroporto_CodigoAeroporto, li_Data, li_FlightLegVooNum, li_FlightLegNum),
	CONSTRAINT PRTDFK1
		FOREIGN KEY(aeroporto_CodigoAeroporto) REFERENCES GestaoReservasVoo.Aeroporto(codigoAeroporto),
	CONSTRAINT PRTDFK2
		FOREIGN KEY(li_data,li_FlightLegNum,li_FlightLegVooNum) REFERENCES GestaoReservasVoo.LegInstance([data],flightLegNum,flightLegVooNum)
);

CREATE TABLE GestaoReservasVoo.Chegada (
	aeroporto_CodigoAeroporto		SMALLINT		NOT NULL,
	li_Data							DATE			NOT NULL,
	li_FlightLegVooNum				BIGINT			NOT NULL,
	li_FlightLegNum					BIGINT			NOT NULL,
	tempoChegada					TIME			NOT NULL,
	CONSTRAINT CHGDPK
		PRIMARY KEY(aeroporto_CodigoAeroporto, li_Data, li_FlightLegVooNum, li_FlightLegNum),
	CONSTRAINT CHGDFK1
		FOREIGN KEY(aeroporto_CodigoAeroporto) REFERENCES GestaoReservasVoo.Aeroporto(codigoAeroporto),
	CONSTRAINT CHGDFK2
		FOREIGN KEY(li_data,li_FlightLegNum,li_FlightLegVooNum) REFERENCES GestaoReservasVoo.LegInstance([data],flightLegNum,flightLegVooNum)
);