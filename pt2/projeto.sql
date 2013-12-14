CREATE TABLE PostoPluviometrico (
	idPostoPluviométrico int NOT NULL PRIMARY KEY,
	nome varchar(255),
	endereco_rua varchar(255),
	endereco_num varchar(255),
	endereco_bairro varchar(255),
	endereco_municipio varchar(255),
	endereco_estado varchar(255),
);

CREATE TABLE Bacia (
	idBacia int NOT NULL PRIMARY KEY,
	nome varchar(255),
	area double,
	perimetro double,
);

CREATE TABLE EstacaoDeQualidade (
	idEstacaoQualidade int NOT NULL PRIMARY KEY,
	nome varchar(255),
	latitude double,
	longitude double,
);

CREATE TABLE Rio (
	idRio int NOT NULL PRIMARY KEY,
	nome varchar(255),
	indicativo varchar(255),
);

CREATE TABLE Acude (
	idAcude int NOT NULL PRIMARY KEY,
	nome varchar(255),
	volumeMaximo double,
	comprimento double, 
	area double,
);

CREATE TABLE CotaAreaVolume (
	idCAV int NOT NULL PRIMARY KEY,
	cota double,
	area double,
	volume double,
);

CREATE TABLE MedicaoCotaDiaria (
	idMedicaoDiaria int NOT NULL PRIMARY KEY,
	cotaAtual double,
	datas date,
);

CREATE TABLE MedicaoPluviometrica (
	idMedicao int NOT NULL PRIMARY KEY,
	datas date,
	valor_chuva_dia_1 int,
	valor_chuva_dia_2 int,
	valor_chuva_dia_3 int,
	valor_chuva_dia_4 int,
	valor_chuva_dia_5 int,
	valor_chuva_dia_6 int,
	valor_chuva_dia_7 int,
	valor_chuva_dia_8 int,
	valor_chuva_dia_9 int,
	valor_chuva_dia_10 int,
	valor_chuva_dia_11 int,
	valor_chuva_dia_12 int,
	valor_chuva_dia_13 int,
	valor_chuva_dia_14 int,
	valor_chuva_dia_15 int,
	valor_chuva_dia_16 int,
	valor_chuva_dia_17 int,
	valor_chuva_dia_18 int,
	valor_chuva_dia_19 int,
	valor_chuva_dia_20 int,
	valor_chuva_dia_21 int,
	valor_chuva_dia_22 int,
	valor_chuva_dia_23 int,
	valor_chuva_dia_24 int,
	valor_chuva_dia_25 int,
	valor_chuva_dia_26 int,
	valor_chuva_dia_27 int,
	valor_chuva_dia_28 int,
	valor_chuva_dia_29 int,
	valor_chuva_dia_30 int,
	valor_chuva_dia_31 int,
);

CREATE TABLE Usuario (
	matricula int NOT NULL PRIMARY KEY,
	nome varchar(255),
	telefones int,
);