/* Scritp de inserções */

/* Comando de insercao de rows em bacia */
INSERT INTO Bacia ( idBacia , nome,    area, perimetro) 
    SELECT               1       ,   'Boqueirao'   ,   12410      , 2680   FROM dual 
    UNION ALL SELECT     2       ,   'Piranhas'   ,   26047.09    , 2640  FROM dual  
    UNION ALL SELECT     3       ,   'Mamanguape' ,   3522.69     , 200 FROM dual 
    UNION ALL SELECT     4       ,   'Jacu'       ,977.31         , 213   FROM dual 
    UNION ALL SELECT     5       ,   'Gramame'    ,   589.64      , 300  FROM dual  
    UNION ALL SELECT     6       ,   'Curimatau'  ,    3313.58    , 258  FROM dual
    UNION ALL SELECT     7       ,   'Camaratuba' ,    637.16     , 258  FROM dual  
    UNION ALL SELECT     8       ,   'Guaju'      ,    152.62     , 258  FROM dual 
    UNION ALL SELECT     9       ,   'Miriri'     , 436.19        , 258  FROM dual  
    UNION ALL SELECT     10       ,   'Trairi'    ,    106.08      , 258  FROM dual 
    UNION ALL SELECT     11       ,   'Abiai'     ,    585.51, 258  FROM dual    
;

/* Comando de insercao de rows em rio */
INSERT INTO Rio(idRio,   idBacia,     nome,                   indicativo    )
 SELECT           100    , 1,    'Paraíba'        ,    'Permanente'         FROM dual
 UNION ALL SELECT 101    , 2,    'Piranhas-Açu'    ,'Permanent'    FROM dual
 UNION ALL SELECT           103    , 2,    'Piancó'        ,    'Temporario'         FROM dual
 UNION ALL SELECT 104    , 1,    'Taperoá'    ,'Temporario'    FROM dual
 UNION ALL SELECT 105    , 2,    'Espinharas'    ,'Temporario'    FROM dual
 UNION ALL SELECT 106    ,1,    'Sanhauá'    ,'Permanente'    FROM dual
 UNION ALL SELECT 107    , 1,    'Gurinhém'    ,'Temporario'    FROM dual
  UNION ALL SELECT 108    , 3,    'Mamanguape'    ,'Permanente'    FROM dual
;

/* Comando de insercao de rows em açude */
INSERT INTO Acude(idAcude,idRio,nome, volumeMaximo,comprimento, area)
 SELECT               102 ,   100   ,   'Açude de Boqueirao'   ,   411686287    , 1000    ,  1241       FROM dual
 UNION ALL SELECT     200,    101   ,   'Açude de Coremas'     ,   591646222    , 20000   ,  2604.09  FROM dual
 UNION ALL SELECT     201,    101   ,   'Açude de Congo'     ,   250174    , 59851   ,  28957  FROM dual
 UNION ALL SELECT     203 ,   100   ,   'Sumé'   ,   44864100    , 2596    ,  48511       FROM dual
 UNION ALL SELECT     204,    100   ,   'Camalaú'     ,   48107240    , 21314   ,  1204.09  FROM dual
 UNION ALL SELECT     205,    100   ,   'Bodocongó'     ,   3250174    , 5551   ,  12957  FROM dual
 UNION ALL SELECT     206,    101   ,   'Mãe dágua'     ,   567999136    , 5679991   ,  569842  FROM dual
 UNION ALL SELECT     207,    101   ,   'São Gonçalo'     ,   44600000    , 4460000   ,  4460000  FROM dual
;

/* Comando de insercao de rows em usuario */
INSERT INTO Usuario(matricula,        nome,                   telefones    )
 SELECT           00001    ,     'José Maria'        ,    '87459712'         FROM dual
 UNION ALL SELECT 00002    ,    'Francisco de Assis'    ,'999587432'    FROM dual
 UNION ALL SELECT 00003    ,    'Marcelo Paiva'    ,'999417432'    FROM dual
 UNION ALL SELECT 00004    ,    'Josefa Taveira'    ,'999587415'    FROM dual
 UNION ALL SELECT 00005    ,    'Jair Ventura'    ,'999587137'    FROM dual
 UNION ALL SELECT 00006    ,    'Maria José'    ,'999157432'    FROM dual
 UNION ALL SELECT 00007    ,    'Lourival Lima'    ,'999587001'    FROM dual
 UNION ALL SELECT 00008    ,    'Beatriz Santos'    ,'99901810'    FROM dual
;
                   
/* Comando de insercao de rows em posto pluviometrico */
INSERT INTO PostoPluviometrico(idPostoPluviometrico, nome,   idBacia,    endereco_rua,        endereco_num,     endereco_bairro,    endereco_municipio,    endereco_estado)
 SELECT               00001 ,      'posto1'  ,      1,          'Adamastor Neves'   ,   '70'   , '   Centro',              'Monteiro',             'Paraíba'       FROM dual
 UNION ALL SELECT     00002,       'posto2' ,        1,          'João R de Lucena'   ,  '24'     ,   'Centro',             'Camalaú',              'Paraíba'  FROM dual
 UNION ALL SELECT     00003,      'posto3' ,         2,          'Arrojado Lisboa'   ,   '9'     ,    'Bela Vista',         'Juazeiro do Norte',    'Ceará' FROM dual
 UNION ALL SELECT     00004,      'posto4' ,         3,          'Floriano Peixoto'   ,  '115'     ,  'Leão Sampaio',       'Barbalha',             'Ceará'  FROM dual
 UNION ALL SELECT     00005,       'posto5',        1,          'Eunice Ribeiro'   ,    '36'     ,   'Centro',             'Queimadas',            'Paraíba'  FROM dual
 
;

INSERT INTO EstacaoDeQualidade(idEstacaoQualidade, idRio, idAcude, nome, latitude, longitude)
 
     SELECT           00037, 101, 102, 'Estação 35', 587236, 597145 FROM dual
     UNION ALL SELECT 00001, 101, 200, 'Estação 1', 587526, 597145 FROM dual
     UNION ALL SELECT 00002, 101, 200, 'Estação 2', 587245, 597145 FROM dual
     UNION ALL SELECT 00003, 101, 200, 'Estação 3', 587245, 597145 FROM dual
     UNION ALL SELECT 00004, 101, 200, 'Estação 4', 587236, 577145 FROM dual
     UNION ALL SELECT 00005, 101, 201, 'Estação 5', 587236, 567145 FROM dual
     UNION ALL SELECT 00006, 102, 201, 'Estação 6', 587236, 597145 FROM dual
     UNION ALL SELECT 00007, 102, 201, 'Estação 7', 587236, 527145 FROM dual
     UNION ALL SELECT 00008, 102, 201, 'Estação 8', 587236, 597145 FROM dual
     UNION ALL SELECT 00009, 102, 102, 'Estação 9', 587236, 597145 FROM dual
     UNION ALL SELECT 00010, 102, 102, 'Estação 10', 587236, 997145 FROM dual
     UNION ALL SELECT 00011, 103, 102, 'Estação 11', 587236, 597145 FROM dual
     UNION ALL SELECT 00012, 103, 102, 'Estação 12', 587236, 697145 FROM dual
     UNION ALL SELECT 00013, 103, 102, 'Estação 13', 587236, 597145 FROM dual
     UNION ALL SELECT 00014, 103, 203, 'Estação 14', 587236, 897145 FROM dual
     UNION ALL SELECT 00015, 103, 206, 'Estação 15', 587236, 597145 FROM dual
     UNION ALL SELECT 00016, 104, 206, 'Estação 16', 587236, 597145 FROM dual
     UNION ALL SELECT 00017, 104, 200, 'Estação 17', 587236, 597145 FROM dual
     UNION ALL SELECT 00019, 104, 201, 'Estação 18', 587236, 597145 FROM dual
     UNION ALL SELECT 00020, 104, 201, 'Estação 19', 587236, 597145 FROM dual
     UNION ALL SELECT 00021, 104, 102, 'Estação 20', 587236, 597145 FROM dual
     UNION ALL SELECT 00022, 105, 203, 'Estação 21', 587236, 597145 FROM dual
     UNION ALL SELECT 00023, 105, 203, 'Estação 22', 587236, 597145 FROM dual
     UNION ALL SELECT 00024, 105, 203, 'Estação 23', 587236, 597145 FROM dual
     UNION ALL SELECT 00025, 105, 204, 'Estação 24', 587236, 597145 FROM dual
     UNION ALL SELECT 00026, 105, 204, 'Estação 25', 587236, 597145 FROM dual
     UNION ALL SELECT 00027, 105, 204, 'Estação 26', 587236, 597145 FROM dual
     UNION ALL SELECT 00028, 105, 204, 'Estação 27', 587236, 597145 FROM dual
     UNION ALL SELECT 00029, 100, 205, 'Estação 28', 587236, 597145 FROM dual
     UNION ALL SELECT 00030, 100, 205, 'Estação 29', 587236, 597145 FROM dual
     UNION ALL SELECT 00031, 100, 205, 'Estação 30', 587236, 597145 FROM dual
     UNION ALL SELECT 00032, 100, 205, 'Estação 31', 587236, 597145 FROM dual
     UNION ALL SELECT 00033, 100, 205, 'Estação 32', 587236, 597145 FROM dual
     UNION ALL SELECT 00034, 100, 201, 'Estação 33', 587236, 597145 FROM dual
     UNION ALL SELECT 00035, 100, 201, 'Estação 34', 587236, 597145 FROM dual
 ;
 
INSERT INTO PostoPluviometrico_Acude(idAcude,idPostoPluviometrico)
 
 
     SELECT           200 ,1   FROM dual
     UNION ALL SELECT 200, 00001   FROM dual
     UNION ALL SELECT 200, 00001   FROM dual
     UNION ALL SELECT 200, 00001   FROM dual
     UNION ALL SELECT 201, 00001   FROM dual
     UNION ALL SELECT 201, 00002   FROM dual
     UNION ALL SELECT 201, 00002   FROM dual
     UNION ALL SELECT 202, 00002   FROM dual
     UNION ALL SELECT 202, 00002   FROM dual
     UNION ALL SELECT 202, 00002   FROM dual
     UNION ALL SELECT 203, 00002   FROM dual
     UNION ALL SELECT 203, 00003   FROM dual
     UNION ALL SELECT 203, 00003   FROM dual
     UNION ALL SELECT 204, 00003   FROM dual
     UNION ALL SELECT 204, 00004   FROM dual
     UNION ALL SELECT 204, 00004   FROM dual
     UNION ALL SELECT 205, 00004   FROM dual
     UNION ALL SELECT 205, 00004   FROM dual
     UNION ALL SELECT 205, 00004   FROM dual
   
 ;



INSERT INTO MedicaoCotaDiaria (idMedicaoDiaria, cotaAtual, datas, matricula, idAcude)


    SELECT 0001, 3, '12/04/2011', 00003, 201 FROM dual 
    UNION ALL SELECT 0002, 5, '12/04/2011', 00004, 200 FROM dual
    UNION ALL SELECT 0003, 8, '12/04/2011', 00001, 201 FROM dual
    UNION ALL SELECT 0004, 9, '12/04/2011', 00002, 202 FROM dual




;