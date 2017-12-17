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
	valor_chuva_dia_1 float(2),
	valor_chuva_dia_2 float(2),
	valor_chuva_dia_3 float(2),
	valor_chuva_dia_4 float(2),
	valor_chuva_dia_5 float(2),
	valor_chuva_dia_6 float(2),
	valor_chuva_dia_7 float(2),
	valor_chuva_dia_8 float(2),
	valor_chuva_dia_9 float(2),
	valor_chuva_dia_10 float(2),
	valor_chuva_dia_11 float(2),
	valor_chuva_dia_12 float(2),
	valor_chuva_dia_13 float(2),
	valor_chuva_dia_14 float(2),
	valor_chuva_dia_15 float(2),
	valor_chuva_dia_16 float(2),
	valor_chuva_dia_17 float(2),
	valor_chuva_dia_18 float(2),
	valor_chuva_dia_19 float(2),
	valor_chuva_dia_20 float(2),
	valor_chuva_dia_21 float(2),
	valor_chuva_dia_22 float(2),
	valor_chuva_dia_23 float(2),
	valor_chuva_dia_24 float(2),
	valor_chuva_dia_25 float(2),
	valor_chuva_dia_26 float(2),
	valor_chuva_dia_27 float(2),
	valor_chuva_dia_28 float(2),
	valor_chuva_dia_29 float(2),
	valor_chuva_dia_30 float(2),
	valor_chuva_dia_31 float(2),
);

CREATE TABLE Usuario (
	matricula int NOT NULL PRIMARY KEY,
	nome varchar(255),
	telefones int,
);