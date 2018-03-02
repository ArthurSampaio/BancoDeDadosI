INSERT INTO Bacia(idBacia, nome, area, perimetro) VALUES (1,'Rio Piranhas', 26.049, 30);
INSERT INTO Bacia(idBacia, nome, area, perimetro) VALUES (2,'Rio Paraíba', 20.071, 32);
INSERT INTO Bacia(idBacia, nome, area, perimetro) VALUES (3,'Rio Jacu', 977, 38);
INSERT INTO Bacia(idBacia, nome, area, perimetro) VALUES (4,'Rio Curimataú', 3.313, 35);
INSERT INTO Bacia(idBacia, nome, area, perimetro) VALUES (5,'Rio Camaratuba', 637, 370);
INSERT INTO Bacia(idBacia, nome, area, perimetro) VALUES (6,'Rio Guaju', 152, 3);

INSERT INTO PostoPluviometrico(idPostoPluviometrico, nome, endereco_rua, endereco_num, endereco_bairro, endereco_municipio, endereco_estado, idBacia) VALUES (1,'ASPLAN', 'Adenor Silvestre', '78', 'Boa Vista', 'Mamanguape', 'Paraíba' ,1);
INSERT INTO PostoPluviometrico(idPostoPluviometrico, nome, endereco_rua, endereco_num, endereco_bairro, endereco_municipio, endereco_estado, idBacia) VALUES (2,'Poço de Pedra', 'José Aldo', '11', 'Mutirão', 'Nova Palmeira', 'Paraíba' ,1);
INSERT INTO PostoPluviometrico(idPostoPluviometrico, nome, endereco_rua, endereco_num, endereco_bairro, endereco_municipio, endereco_estado, idBacia) VALUES (3,'Balanços', 'Antonia Bezerra', '48', 'Centro', 'Barbalha', 'Ceará' ,1);
INSERT INTO PostoPluviometrico(idPostoPluviometrico, nome, endereco_rua, endereco_num, endereco_bairro, endereco_municipio, endereco_estado, idBacia) VALUES (8,'Terrão', 'Rua 3', '34', 'Centro', 'Maceió', 'Alagoas' ,1);
INSERT INTO PostoPluviometrico(idPostoPluviometrico, nome, endereco_rua, endereco_num, endereco_bairro, endereco_municipio, endereco_estado, idBacia) VALUES (4,'Escola Técnica ', 'rua 4', '14', 'Centro', 'Caicó', 'Rio Grande do Norte' ,2);
INSERT INTO PostoPluviometrico(idPostoPluviometrico, nome, endereco_rua, endereco_num, endereco_bairro, endereco_municipio, endereco_estado, idBacia) VALUES (5,'Barra do Juá', 'Padre Anchieta', '55', 'Boa Passagem', 'Crato', 'Ceará' ,3);
INSERT INTO PostoPluviometrico(idPostoPluviometrico, nome, endereco_rua, endereco_num, endereco_bairro, endereco_municipio, endereco_estado, idBacia) VALUES (6,'Sítio São Vicente', 'sem nome', 'SN', 'Sitio São Vicente', 'Palmeira dos Indios', 'Alagoas' ,4);
INSERT INTO PostoPluviometrico(idPostoPluviometrico, nome, endereco_rua, endereco_num, endereco_bairro, endereco_municipio, endereco_estado, idBacia) VALUES (7,'São Gonçalo', 'Maria Rita', '91', 'João XXIII', 'Sousa', 'Paraíba' ,2);

INSERT INTO Usuario(matricula, nome, telefones) VALUES (1,'João', 16168541651);
INSERT INTO Usuario(matricula, nome, telefones) VALUES (2,'Maria', 1464615481);
INSERT INTO Usuario(matricula, nome, telefones) VALUES (3,'José', 6658484);
INSERT INTO Usuario(matricula, nome, telefones) VALUES (4,'Marcos', 168161);
INSERT INTO Usuario(matricula, nome, telefones) VALUES (5,'Pedro', 438455151);
INSERT INTO Usuario(matricula, nome, telefones) VALUES (6,'Jaco', 6584648);

INSERT INTO MedicaoPluviometrica(idMedicao, datas, valor_chuva_dia_1, valor_chuva_dia_2, valor_chuva_dia_3, valor_chuva_dia_4, valor_chuva_dia_5, valor_chuva_dia_6, valor_chuva_dia_7, valor_chuva_dia_8, valor_chuva_dia_9, valor_chuva_dia_10, valor_chuva_dia_11, valor_chuva_dia_12, valor_chuva_dia_13, valor_chuva_dia_14, valor_chuva_dia_15, valor_chuva_dia_16, valor_chuva_dia_17, valor_chuva_dia_18, valor_chuva_dia_19, valor_chuva_dia_20, valor_chuva_dia_21, valor_chuva_dia_22, valor_chuva_dia_23, valor_chuva_dia_24, valor_chuva_dia_25, valor_chuva_dia_26, valor_chuva_dia_27, valor_chuva_dia_28, valor_chuva_dia_29, valor_chuva_dia_30, valor_chuva_dia_31, idPostoPluviometrico, matricula) VALUES (1,'07/3/2017', 1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,1,2);
INSERT INTO MedicaoPluviometrica(idMedicao, datas, valor_chuva_dia_1, valor_chuva_dia_2, valor_chuva_dia_3, valor_chuva_dia_4, valor_chuva_dia_5, valor_chuva_dia_6, valor_chuva_dia_7, valor_chuva_dia_8, valor_chuva_dia_9, valor_chuva_dia_10, valor_chuva_dia_11, valor_chuva_dia_12, valor_chuva_dia_13, valor_chuva_dia_14, valor_chuva_dia_15, valor_chuva_dia_16, valor_chuva_dia_17, valor_chuva_dia_18, valor_chuva_dia_19, valor_chuva_dia_20, valor_chuva_dia_21, valor_chuva_dia_22, valor_chuva_dia_23, valor_chuva_dia_24, valor_chuva_dia_25, valor_chuva_dia_26, valor_chuva_dia_27, valor_chuva_dia_28, valor_chuva_dia_29, valor_chuva_dia_30, valor_chuva_dia_31, idPostoPluviometrico, matricula) VALUES (2,'07/3/2017', 1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,1,4);
INSERT INTO MedicaoPluviometrica(idMedicao, datas, valor_chuva_dia_1, valor_chuva_dia_2, valor_chuva_dia_3, valor_chuva_dia_4, valor_chuva_dia_5, valor_chuva_dia_6, valor_chuva_dia_7, valor_chuva_dia_8, valor_chuva_dia_9, valor_chuva_dia_10, valor_chuva_dia_11, valor_chuva_dia_12, valor_chuva_dia_13, valor_chuva_dia_14, valor_chuva_dia_15, valor_chuva_dia_16, valor_chuva_dia_17, valor_chuva_dia_18, valor_chuva_dia_19, valor_chuva_dia_20, valor_chuva_dia_21, valor_chuva_dia_22, valor_chuva_dia_23, valor_chuva_dia_24, valor_chuva_dia_25, valor_chuva_dia_26, valor_chuva_dia_27, valor_chuva_dia_28, valor_chuva_dia_29, valor_chuva_dia_30, valor_chuva_dia_31, idPostoPluviometrico, matricula) VALUES (3,'07/3/2017', 1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,3,5);
INSERT INTO MedicaoPluviometrica(idMedicao, datas, valor_chuva_dia_1, valor_chuva_dia_2, valor_chuva_dia_3, valor_chuva_dia_4, valor_chuva_dia_5, valor_chuva_dia_6, valor_chuva_dia_7, valor_chuva_dia_8, valor_chuva_dia_9, valor_chuva_dia_10, valor_chuva_dia_11, valor_chuva_dia_12, valor_chuva_dia_13, valor_chuva_dia_14, valor_chuva_dia_15, valor_chuva_dia_16, valor_chuva_dia_17, valor_chuva_dia_18, valor_chuva_dia_19, valor_chuva_dia_20, valor_chuva_dia_21, valor_chuva_dia_22, valor_chuva_dia_23, valor_chuva_dia_24, valor_chuva_dia_25, valor_chuva_dia_26, valor_chuva_dia_27, valor_chuva_dia_28, valor_chuva_dia_29, valor_chuva_dia_30, valor_chuva_dia_31, idPostoPluviometrico, matricula) VALUES (4,'07/3/2017', 1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,5,1);
INSERT INTO MedicaoPluviometrica(idMedicao, datas, valor_chuva_dia_1, valor_chuva_dia_2, valor_chuva_dia_3, valor_chuva_dia_4, valor_chuva_dia_5, valor_chuva_dia_6, valor_chuva_dia_7, valor_chuva_dia_8, valor_chuva_dia_9, valor_chuva_dia_10, valor_chuva_dia_11, valor_chuva_dia_12, valor_chuva_dia_13, valor_chuva_dia_14, valor_chuva_dia_15, valor_chuva_dia_16, valor_chuva_dia_17, valor_chuva_dia_18, valor_chuva_dia_19, valor_chuva_dia_20, valor_chuva_dia_21, valor_chuva_dia_22, valor_chuva_dia_23, valor_chuva_dia_24, valor_chuva_dia_25, valor_chuva_dia_26, valor_chuva_dia_27, valor_chuva_dia_28, valor_chuva_dia_29, valor_chuva_dia_30, valor_chuva_dia_31, idPostoPluviometrico, matricula) VALUES (5,'07/3/2017', 1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,2,3);
INSERT INTO MedicaoPluviometrica(idMedicao, datas, valor_chuva_dia_1, valor_chuva_dia_2, valor_chuva_dia_3, valor_chuva_dia_4, valor_chuva_dia_5, valor_chuva_dia_6, valor_chuva_dia_7, valor_chuva_dia_8, valor_chuva_dia_9, valor_chuva_dia_10, valor_chuva_dia_11, valor_chuva_dia_12, valor_chuva_dia_13, valor_chuva_dia_14, valor_chuva_dia_15, valor_chuva_dia_16, valor_chuva_dia_17, valor_chuva_dia_18, valor_chuva_dia_19, valor_chuva_dia_20, valor_chuva_dia_21, valor_chuva_dia_22, valor_chuva_dia_23, valor_chuva_dia_24, valor_chuva_dia_25, valor_chuva_dia_26, valor_chuva_dia_27, valor_chuva_dia_28, valor_chuva_dia_29, valor_chuva_dia_30, valor_chuva_dia_31, idPostoPluviometrico, matricula) VALUES (6,'07/3/2017', 1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,2,3);

INSERT INTO telefone_usuario(matricula, numero) VALUES (1,94826741);
INSERT INTO telefone_usuario(matricula, numero) VALUES (2,948267451);
INSERT INTO telefone_usuario(matricula, numero) VALUES (3,94827451);
INSERT INTO telefone_usuario(matricula, numero) VALUES (4,948745321);
INSERT INTO telefone_usuario(matricula, numero) VALUES (5,948267451);
INSERT INTO telefone_usuario(matricula, numero) VALUES (6,948745321);

INSERT INTO Rio(idRio, nome, indicativo, idBacia) VALUES (1,'rio 1', 'indicativo 1', 3);
INSERT INTO Rio(idRio, nome, indicativo, idBacia) VALUES (2,'rio 2', 'indicativo 2', 1);
INSERT INTO Rio(idRio, nome, indicativo, idBacia) VALUES (3,'rio 3', 'indicativo 3', 5);
INSERT INTO Rio(idRio, nome, indicativo, idBacia) VALUES (4,'rio 4', 'indicativo 4', 4);
INSERT INTO Rio(idRio, nome, indicativo, idBacia) VALUES (5,'rio 5', 'indicativo 5', 4);
INSERT INTO Rio(idRio, nome, indicativo, idBacia) VALUES (6,'rio 6', 'indicativo 6', 3);

INSERT INTO Acude(idAcude, nome, volumeMaximo, comprimento, area, idRio) VALUES (1,'Coremas', 854151, 16541, 353, 1);
INSERT INTO Acude(idAcude, nome, volumeMaximo, comprimento, area, idRio) VALUES (2,'Bodocongó', 332525, 65, 5, 1);
INSERT INTO Acude(idAcude, nome, volumeMaximo, comprimento, area, idRio) VALUES (3,'Boqueirão', 1123, 353, 3, 6);
INSERT INTO Acude(idAcude, nome, volumeMaximo, comprimento, area, idRio) VALUES (4,'Acauã', 122, 3838, 2525, 4);
INSERT INTO Acude(idAcude, nome, volumeMaximo, comprimento, area, idRio) VALUES (5,'Congo', 8666, 83, 353, 2);
INSERT INTO Acude(idAcude, nome, volumeMaximo, comprimento, area, idRio) VALUES (6,'São Gonçalo', 776, 869, 3838, 1);

INSERT INTO MedicaoCotaDiaria(idMedicaoDiaria, cotaAtual, datas, matricula, idAcude) VALUES (1,55115, '01/02/2018', 1,  3);
INSERT INTO MedicaoCotaDiaria(idMedicaoDiaria, cotaAtual, datas, matricula, idAcude) VALUES (2,227, '07/01/2018', 2,  4);
INSERT INTO MedicaoCotaDiaria(idMedicaoDiaria, cotaAtual, datas, matricula, idAcude) VALUES (3,333, '13/01/2018', 2,  6);
INSERT INTO MedicaoCotaDiaria(idMedicaoDiaria, cotaAtual, datas, matricula, idAcude) VALUES (4,4444, '03/01/2018', 1,  1);
INSERT INTO MedicaoCotaDiaria(idMedicaoDiaria, cotaAtual, datas, matricula, idAcude) VALUES (5,83838, '23/01/2018', 5,  1);

INSERT INTO CotaAreaVolume(id, cota, area, volume, idAcude) VALUES (1,83838, 181851, 686,  1);
INSERT INTO CotaAreaVolume(id, cota, area, volume, idAcude) VALUES (2,2828, 3833, 5485,  1);
INSERT INTO CotaAreaVolume(id, cota, area, volume, idAcude) VALUES (3,433, 866, 8,  5);
INSERT INTO CotaAreaVolume(id, cota, area, volume, idAcude) VALUES (4,8383, 6789389, 696,  3);
INSERT INTO CotaAreaVolume(id, cota, area, volume, idAcude) VALUES (5,838823738, 28228, 55,  1);

INSERT INTO PostoPluviometrico_Acude(idAcude, idPostoPluviometrico) VALUES (1,1);
INSERT INTO PostoPluviometrico_Acude(idAcude, idPostoPluviometrico) VALUES (1,4);
INSERT INTO PostoPluviometrico_Acude(idAcude, idPostoPluviometrico) VALUES (2,3);
INSERT INTO PostoPluviometrico_Acude(idAcude, idPostoPluviometrico) VALUES (1,5);
INSERT INTO PostoPluviometrico_Acude(idAcude, idPostoPluviometrico) VALUES (4,4);

INSERT INTO EstacaoDeQualidade(idEstacaoQualidade, nome, latitude, longitude, idRio, idAcude) VALUES (1,'estacao 1', 28228, 55,  1, 1);
INSERT INTO EstacaoDeQualidade(idEstacaoQualidade, nome, latitude, longitude, idRio, idAcude) VALUES (2,'estacao 2', 147, 3535,  2, 5);
INSERT INTO EstacaoDeQualidade(idEstacaoQualidade, nome, latitude, longitude, idRio, idAcude) VALUES (3,'estacao 3', 252, 28,  5, 3);
INSERT INTO EstacaoDeQualidade(idEstacaoQualidade, nome, latitude, longitude, idRio, idAcude) VALUES (4,'estacao 4', 8686, 822,  4, 1);
INSERT INTO EstacaoDeQualidade(idEstacaoQualidade, nome, latitude, longitude, idRio, idAcude) VALUES (5,'estacao 5', 777, 3535,  4, 2);

INSERT INTO MedicaoRio(idMedicaoRio, data, pH, DBO, turbidez, oxigenio, alcalinidade, idRio, idEstacaoQualidade) VALUES (1,'11/10/2017', 4, 7,  8, 3,4,1,1);
INSERT INTO MedicaoRio(idMedicaoRio, data, pH, DBO, turbidez, oxigenio, alcalinidade, idRio, idEstacaoQualidade) VALUES (2,'07/11/2011', 5, 6,  7, 4,5,4,3);
INSERT INTO MedicaoRio(idMedicaoRio, data, pH, DBO, turbidez, oxigenio, alcalinidade, idRio, idEstacaoQualidade) VALUES (3,'17/11/2017', 6, 5,  6, 5,5,2,5);
INSERT INTO MedicaoRio(idMedicaoRio, data, pH, DBO, turbidez, oxigenio, alcalinidade, idRio, idEstacaoQualidade) VALUES (4,'11/10/2017', 7, 4,  5, 6,4,4,2);
INSERT INTO MedicaoRio(idMedicaoRio, data, pH, DBO, turbidez, oxigenio, alcalinidade, idRio, idEstacaoQualidade) VALUES (5,'31/10/2017', 8, 3,  4, 7,4,1,2);

INSERT INTO MedicaoAcude(idMedicaoAcude, data, pH, DBO, turbidez, oxigenio, alcalinidade, idAcude, idEstacaoQualidade) VALUES (1,'01/01/2018', 4, 7,  8, 3,4,1,1);
INSERT INTO MedicaoAcude(idMedicaoAcude, data, pH, DBO, turbidez, oxigenio, alcalinidade, idAcude, idEstacaoQualidade) VALUES (2,'06/01/2018', 5, 6,  7, 4,5,4,3);
INSERT INTO MedicaoAcude(idMedicaoAcude, data, pH, DBO, turbidez, oxigenio, alcalinidade, idAcude, idEstacaoQualidade) VALUES (3,'07/01/2018', 6, 5,  6, 5,5,2,5);
INSERT INTO MedicaoAcude(idMedicaoAcude, data, pH, DBO, turbidez, oxigenio, alcalinidade, idAcude, idEstacaoQualidade) VALUES (4,'17/01/2018', 7, 4,  5, 6,4,4,2);
INSERT INTO MedicaoAcude(idMedicaoAcude, data, pH, DBO, turbidez, oxigenio, alcalinidade, idAcude, idEstacaoQualidade) VALUES (5,'01/02/2018', 8, 3,  4, 7,4,1,2);
