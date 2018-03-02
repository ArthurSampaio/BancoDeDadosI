-- REMOVENDO TODAS INFORMACOES

BEGIN
FOR cur_rec IN (SELECT object_name, object_type
  FROM user_objects
  WHERE object_type IN
	 ('TABLE',
	  'VIEW',
	  'TRIGGER'
	 ))
  LOOP
    BEGIN
      IF cur_rec.object_type = 'TABLE' THEN
        EXECUTE IMMEDIATE    'DROP '
		  || cur_rec.object_type
		  || ' "'
		  || cur_rec.object_name
		  || '" CASCADE CONSTRAINTS';
      ELSE
        EXECUTE IMMEDIATE    'DROP '
		  || cur_rec.object_type
		  || ' "'
		  || cur_rec.object_name
		  || '"';
	  END IF;
      EXCEPTION
        WHEN OTHERS THEN
          DBMS_OUTPUT.put_line (   'FAILED: DROP '
		  || cur_rec.object_type
		  || ' "'
		  || cur_rec.object_name
		  || '"'
   		  );
    END;
  END LOOP;
END;
/
-- CRIANDO TABELAS

CREATE TABLE Bacia (
	idBacia                 INTEGER NOT NULL,
	nome                    VARCHAR(255),
	area                    NUMBER,
	perimetro               NUMBER,
    PRIMARY KEY (idBacia)
);

CREATE TABLE PostoPluviometrico (
	idPostoPluviometrico     INTEGER NOT NULL,
	nome                     VARCHAR(255),
	endereco_rua             VARCHAR(255),
	endereco_num             VARCHAR(255),
	endereco_bairro          VARCHAR(255),
	endereco_municipio       VARCHAR(255),
	endereco_estado          VARCHAR(255),
    idBacia                  INTEGER NOT NULL,
    FOREIGN KEY (idBacia) REFERENCES Bacia(idBacia),
    PRIMARY KEY (idPostoPluviometrico)
);

CREATE TABLE Usuario (
	matricula                INTEGER NOT NULL,
	nome                     VARCHAR(255),
	telefones                VARCHAR(255),
    FOREIGN KEY (matricula) REFERENCES usuario(matricula),    
    PRIMARY KEY (matricula)
);

CREATE TABLE MedicaoPluviometrica (
	idMedicao                INTEGER NOT NULL,
	datas                    DATE NOT NULL,
	valor_chuva_dia_1        NUMBER,
	valor_chuva_dia_2        NUMBER,
	valor_chuva_dia_3        NUMBER,
	valor_chuva_dia_4        NUMBER,
	valor_chuva_dia_5        NUMBER,
	valor_chuva_dia_6        NUMBER,
	valor_chuva_dia_7        NUMBER,
	valor_chuva_dia_8        NUMBER,
	valor_chuva_dia_9        NUMBER,
	valor_chuva_dia_10       NUMBER,
	valor_chuva_dia_11       NUMBER,
	valor_chuva_dia_12       NUMBER,
	valor_chuva_dia_13       NUMBER,
	valor_chuva_dia_14       NUMBER,
	valor_chuva_dia_15       NUMBER,
	valor_chuva_dia_16       NUMBER,
	valor_chuva_dia_17       NUMBER,
	valor_chuva_dia_18       NUMBER,
	valor_chuva_dia_19       NUMBER,
	valor_chuva_dia_20       NUMBER,
	valor_chuva_dia_21       NUMBER,
	valor_chuva_dia_22       NUMBER,
	valor_chuva_dia_23       NUMBER,
	valor_chuva_dia_24       NUMBER,
	valor_chuva_dia_25       NUMBER,
	valor_chuva_dia_26       NUMBER,
	valor_chuva_dia_27       NUMBER,
	valor_chuva_dia_28       NUMBER,
	valor_chuva_dia_29       NUMBER,
	valor_chuva_dia_30       NUMBER,
	valor_chuva_dia_31       NUMBER,
    idPostoPluviometrico     INTEGER NOT NULL,     
    matricula                INTEGER NOT NULL, 
    FOREIGN KEY (idPostoPluviometrico) REFERENCES PostoPluviometrico(idPostoPluviometrico),     
    FOREIGN KEY (matricula) REFERENCES Usuario(matricula),
    PRIMARY KEY (idMedicao)    
);

CREATE TABLE telefone_usuario (    
    matricula                INTEGER NOT NULL,    
    numero                   VARCHAR(11),    
    PRIMARY KEY(matricula, numero),  
    FOREIGN KEY (matricula) REFERENCES Usuario(matricula)    
);

CREATE TABLE Rio (
	idRio                    INTEGER NOT NULL,
	nome                     VARCHAR(255),
	indicativo               VARCHAR(255),
    idBacia                  INTEGER NOT NULL,
    FOREIGN KEY (idBacia) REFERENCES Bacia(idBacia),
    PRIMARY KEY (idRio)
);

CREATE TABLE Acude (
	idAcude                  INTEGER NOT NULL,
	nome                     VARCHAR(255),
	volumeMaximo             NUMBER,
	comprimento              NUMBER, 
	area                     NUMBER,
    idRio                    INTEGER NOT NULL,
    FOREIGN KEY (idRio) REFERENCES Rio(idRio),
    PRIMARY KEY (idAcude)
);

CREATE TABLE MedicaoCotaDiaria (
	idMedicaoDiaria          INTEGER NOT NULL,
	cotaAtual                INTEGER,
	datas                    DATE NOT NULL,
    matricula                INTEGER NOT NULL,      
    idAcude                  INTEGER NOT NULL,      
    FOREIGN KEY (matricula) REFERENCES Usuario(matricula),      
    FOREIGN KEY (idAcude) REFERENCES Acude(idAcude),   
    PRIMARY KEY (idMedicaoDiaria)
);

CREATE TABLE CotaAreaVolume (
	id                       INTEGER NOT NULL,
	cota                     INTEGER,
	area                     INTEGER,
	volume                   INTEGER,
    idAcude                  INTEGER NOT NULL, 
    FOREIGN KEY(idAcude) REFERENCES acude(idAcude),   
    PRIMARY KEY (id)
);

CREATE TABLE PostoPluviometrico_Acude(    
    idAcude                  INTEGER NOT NULL,    
    idPostoPluviometrico     INTEGER NOT NULL,     
    FOREIGN KEY (idAcude) REFERENCES Acude(idAcude),    
    FOREIGN KEY (idPostoPluviometrico) REFERENCES PostoPluviometrico(idPostoPluviometrico),
    PRIMARY KEY(idAcude, idPostoPluviometrico)
);

CREATE TABLE EstacaoDeQualidade (
	idEstacaoQualidade       INTEGER NOT NULL,
	nome                     VARCHAR(255),
	latitude                 INTEGER,
	longitude                INTEGER,
    idRio                    INTEGER NOT NULL,
    idAcude                  INTEGER NOT NULL,
    FOREIGN KEY (idRio) REFERENCES Rio(idRio),
    FOREIGN KEY (idAcude) REFERENCES Acude(idAcude),
    PRIMARY KEY (idEstacaoQualidade)
);

CREATE TABLE MedicaoRio (
	idMedicaoRio             INTEGER NOT NULL,
    data                     DATE NOT NULL,
    pH                       NUMBER(9,2),
    DBO                      NUMBER(9,2),
    turbidez                 NUMBER(9,2),
    oxigenio                 NUMBER(9,2),
    alcalinidade             NUMBER(9,2),
    idRio                    INTEGER NOT NULL,
    idEstacaoQualidade       INTEGER NOT NULL,
    FOREIGN KEY (idRio) REFERENCES Rio(idRio),
    FOREIGN KEY (idEstacaoQualidade) REFERENCES EstacaoDeQualidade(idEstacaoQualidade),
    PRIMARY KEY (idMedicaoRio)
);

CREATE TABLE MedicaoAcude (
	idMedicaoAcude           INTEGER NOT NULL,
    data                     DATE NOT NULL,
    pH                       NUMBER(9,2),
    DBO                      NUMBER(9,2),
    turbidez                 NUMBER(9,2),
    oxigenio                 NUMBER(9,2),
    alcalinidade             NUMBER(9,2),
    idAcude                  INTEGER NOT NULL,
    idEstacaoQualidade       INTEGER NOT NULL,
    FOREIGN KEY (idAcude) REFERENCES Acude(idAcude),
    FOREIGN KEY (idEstacaoQualidade) REFERENCES EstacaoDeQualidade(idEstacaoQualidade),
    PRIMARY KEY (idMedicaoAcude)
);
