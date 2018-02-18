/* Scritp de inserções */

/* Comando de insercao de rows em bacia */
INSERT INTO Bacia ( idBINSERT INTO Bacia ( idBacia , nome,    area      , perimetro) 
    SELECT               1       ,   'Boqueirao'   ,   12410    , 2680   FROM dual 
    UNION ALL SELECT     2       ,   'Piranhas'   ,   26047.09 , 2640  FROM dual  
    UNION ALL SELECT     3       ,   'Mamanguape' ,   3522.69  , 200 FROM dual 
    UNION ALL SELECT     4       ,   'Jacu'   ,977.31 , 213   FROM dual 
    UNION ALL SELECT     5       ,   'Gramame' ,   589.64    , 300  FROM dual  
    UNION ALL SELECT     6       ,   'Curimatau' ,    3313.58, 258  FROM dual
    UNION ALL SELECT     7       ,   'Camaratuba' ,    637.16, 258  FROM dual  
    UNION ALL SELECT     8       ,   'Guaju',    152.62, 258  FROM dual 
    UNION ALL SELECT     9       ,   'Miriri' , 436.19 , 258  FROM dual  
    UNION ALL SELECT     10       ,   'Trairi' ,    106.08, 258  FROM dual 
    UNION ALL SELECT     11       ,   'Abiai' ,    585.51, 258  FROM dual    
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
 UNION ALL SELECT               203 ,   100   ,   'Sumé'   ,   44864100    , 2596    ,  48511       FROM dual
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
INSERT INTO PostoPluviometrico(idPostoPluviometrico,    idBacia,    endereco_rua,        endereco_num,     endereco_bairro,    endereco_municipio,    endereco_estado)
 SELECT               00001 ,              1,          'Adamastor Neves'   ,   '70'   , '   Centro',              'Monteiro',             'Paraíba'       FROM dual
 UNION ALL SELECT     00002,               1,          'João R de Lucena'   ,  '24'     ,   'Centro',             'Camalaú',              'Paraíba'  FROM dual
 UNION ALL SELECT     00003,               2,          'Arrojado Lisboa'   ,   '9'     ,    'Bela Vista',         'Juazeiro do Norte',    'Ceará' FROM dual
 UNION ALL SELECT     00004,               3,          'Floriano Peixoto'   ,  '115'     ,  'Leão Sampaio',       'Barbalha',             'Ceará'  FROM dual
 UNION ALL SELECT     00005,               1,          'Eunice Ribeiro'   ,    '36'     ,   'Centro',             'Queimadas',            'Paraíba'  FROM dual
 
;