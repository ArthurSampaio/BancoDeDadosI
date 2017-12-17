CREATE TABLE Bacia (
	idBacia int NOT NULL PRIMARY KEY,
	nome varchar(255),
	area float(2),
	perimetro float(2)
);

/*Relação: Bacia(1) - Rio(n)*/
CREATE TABLE Rio (

	FOREIGN KEY (idBacia) references Bacia (idBacia)
	idRio int NOT NULL PRIMARY KEY,
	nome varchar(255),
	indicativo varchar(255) NOT NULL
);

CREATE TABLE EstacaoDeQualidade (
	idEstacaoQualidade int NOT NULL PRIMARY KEY,
	nome varchar(255),
	latitude float(2),
	longitude float(2)
);

/*Relacacao: estacaodequalidade - mede*/
/*Relacacao: medicao - rio*/
/*Relacacao: medicao - acude*/
CREATE TABLE Medicao (
	data date NOT NULL, 
	ph float(2) NOT NULL,
	dbo float(2) NOT NULL,
	turbidez INT NOT NULL,
	oxigenio float(2) NOT NULL,
	alcalinidade float(2) NOT NULL
	idEstacaoQualidade int FOREIGN KEY references EstacaoDeQualidade(idEstacaoQualidade),
	idRio int FOREIGN KEY references Rio(idRio) 
	idAcude int FOREIGN KEY references Acude(idAcude)
	--TODO: vê se da pra usar esta mesma tabela na medicao do açude
	
);


/*Adicinado chave estrangeira de Rio (rio-açude)*/
CREATE TABLE Acude (
	idAcude int NOT NULL PRIMARY KEY,
	nome varchar(255),
	volumeMaximo float(2),
	comprimento float(2), 
	area float(2),
	FOREIGN KEY (idRio) references Rio (idRio)
);

/*Relação: acude(1) - CotaAreaVolume(n)*/
CREATE TABLE CotaAreaVolume (
	idCAV int NOT NULL PRIMARY KEY,
	cota float(2),
	area float(2),
	volume float(2),
	FOREIGN KEY (idAcude) references Acude (idAcude)
);



/*Relação medicao(n) - acude(1)*/
/*Relação medicao(n) - usuario(1)*/
CREATE TABLE MedicaoCotaDiaria (
	idMedicaoDiaria int NOT NULL PRIMARY KEY,
	cotaAtual float(2),
	datas date,
	FOREIGN KEY (idAcude) references Acude (idAcude),
	FOREIGN KEY (matricula) references Usuario (matricula)
);

CREATE TABLE Usuario (
	matricula int NOT NULL PRIMARY KEY,
	nome varchar(255),
	telefones int
);

/*Relação: PostoPluviometrico(n) - bacia(1)*/
CREATE TABLE PostoPluviometrico (
	idPostoPluviométrico int NOT NULL PRIMARY KEY,
	nome varchar(255),
	endereco_rua varchar(255),
	endereco_num varchar(255),
	endereco_bairro varchar(255),
	endereco_municipio varchar(255),
	endereco_estado varchar(255),
	FOREIGN KEY (idBacia) references Bacia (idBacia),
);

/*Relação: medicaoPluviometrica(n) - usuario(1)*/
/*Relação: medicaoPluviometrica(n) - postoPluviometrico(1)*/
CREATE TABLE MedicaoPluviometrica (
	idPostoPluviométrico INT FOREIGN KEY references PostoPluviometrico(idPostoPluviométrico),
	matricula INT FOREIGN KEY references Usuario(matricula),
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
	valor_chuva_dia_31 float(2)
);


DROP TABLE Usuario; 
DROP TABLE MedicaoPluviometrica;
DROP TABLE PostoPluviometrico;
DROP TABLE Bacia; 
DROP TABLE Acude; 
DROP TABLE Rio; 
DROP TABLE EstacaoDeQualidade; 
DROP TABLE MedicaoCotaDiaria; 
DROP TABLE CotaAreaVolume; 
DROP TABLE Medicao; 