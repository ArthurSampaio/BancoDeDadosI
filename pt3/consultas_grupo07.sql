/*2. Liste o nome dos açudes, ordenados pelo volume máximo e pelo comprimento de forma decrescente.*/

SELECT NOME
FROM ACUDE
ORDER BY VOLUMEMAXIMO, COMPRIMENTO DESC;

/*3. Crie uma visão que liste os valores de chuva diários medidos para o açude de Coremas e seu nome.*/

	CREATE VIEW list3 AS

	SELECT a.NOME, m.VALOR_CHUVA_DIA_1,  m.VALOR_CHUVA_DIA_2,  m.VALOR_CHUVA_DIA_3,  m.VALOR_CHUVA_DIA_4,  m.VALOR_CHUVA_DIA_5,  		m.VALOR_CHUVA_DIA_6,  m.VALOR_CHUVA_DIA_7,  m.VALOR_CHUVA_DIA_8,  m.VALOR_CHUVA_DIA_9
	FROM ACUDE a, MEDICAOPLUVIOMETRICA m, POSTOPLUVIOMETRICO_ACUDE pm
	WHERE a.NOME = 'Coremas' AND a.IDACUDE = pm.IDACUDE AND m.IDPOSTOPLUVIOMETRICO = pm.IDPOSTOPLUVIOMETRICO




/* 4. Qual a bacia com o menor perímetro? */

SELECT MIN(PERIMETRO) AS MenorPerimetro FROM Bacia;

/* 5. Qual o nome do usuário que mais realizou medições puviométricas, e quantas foram?*/
SELECT nome, COUNT(*)
	FROM usuario u, MedicaoPluviometrica m
    WHERE (m.matricula = u.matricula) 
	GROUP BY u.nome
    HAVING COUNT(*) = (SELECT MAX(COUNT(*))
                             FROM MEDICAOPLUVIOMETRICA 
                          GROUP BY MATRICULA)
 
; 

/*6. Liste os valores de alcalinidade medidos para o rio X entre os dias 02/10/2017 e 22/11/2017*/

	SELECT m.DATA,  m.ALCALINIDADE 
	FROM MEDICAORIO m, RIO r
	WHERE r.IDRIO = m.IDRIO AND r.NOME = 'rio 1' AND m.DATA BETWEEN TO_DATE('02/10/2017','DD/MM/YYYY') AND TO_DATE		('22/11/2017','DD/MM/YYYY')

/*7. Liste os valores de DBO pra bacia do Rio Paraíba, ordenadas de forma crescente.*/

	SELECT m.DBO,r.NOME, m.DATA
	FROM RIO r, MEDICAORIO m, BACIA b
	WHERE r.IDBACIA = b.IDBACIA AND b.NOME = 'Rio Paraíba'
	ORDER BY m.DBO DESC

/*8. Crie uma visão que liste os valores de pH e a data medidos pelas estações de qualidade, bem como o nome do açude.*/
	CREATE VIEW list8 AS
    	SELECT m.PH,m.DATA,a.NOME
    	FROM ACUDE a, MEDICAOACUDE m, ESTACAODEQUALIDADE e
    	WHERE e.IDACUDE = a.IDACUDE AND a.IDACUDE = m.IDACUDE
 

/*9. Liste a quantidade de postos pluviométricos por bacia. */
SELECT b.nome, COUNT(*)
	FROM PostoPluviometrico p, Bacia b
	WHERE (p.idBacia = b.idBacia)
	GROUP BY b.nome 

/*10. Qual a média de chuva diária para o açude de bodocongó no mês de Janeiro de 2018?*/
	SELECT AVG(m.VALOR_CHUVA_DIA_1) as mediaDiaria
	FROM ACUDE a, MEDICAOPLUVIOMETRICA m, POSTOPLUVIOMETRICO_ACUDE pa
	WHERE a.IDACUDE = pa.IDACUDE AND pa.IDPOSTOPLUVIOMETRICO = m.IDPOSTOPLUVIOMETRICO AND a.NOME = 'Bodocongó' AND EXTRACT(month 		FROM m.Datas) = '3'


/*11. Liste o nome dos postos pluviométricos localizados no Ceará ou em Alagoas.*/

SELECT Nome FROM POSTOPLUVIOMETRICO WHERE ENDERECO_ESTADO='Ceará' OR ENDERECO_ESTADO='Alagoas';


/*12. Liste os nomes das estações de qualidade e o indicativo do rio em que é feita a medição, agrupados pelo indicativo.*/
	SELECT e.NOME, r.INDICATIVO
	FROM MEDICAORIO m, ESTACAODEQUALIDADE e, RIO r
	WHERE r.IDRIO = m.IDRIO AND m.IDESTACAOQUALIDADE = e.IDESTACAOQUALIDADE 
	(ARGUPAMENTO)
/*13. Qual a soma dos valores de cota atual do açude Bodocongó entre os dias 01/01/2018 e 01/02/2018?*/
	SELECT SUM(COTAATUAL)
	FROM ACUDE a, MEDICAOCOTADIARIA m
	WHERE a.NOME = 'Coremas' AND m.IDACUDE = a.IDACUDE  AND TO_DATE(m.DATAS,'DD/MM/YYYY') BETWEEN TO_DATE('01/01/2018','DD/MM/YYYY') AND TO_DATE('01/02/2018','DD/MM/YYYY')


/*15. Liste os valores de DBO e o nome da bacia, agrupadas pelo nome da bacia.*/
	SELECT SUM(m.DBO) + SUM(mr.DBO), b.NOME
	FROM RIO r, BACIA b, ACUDE a, MEDICAOACUDE m, MEDICAORIO mr
	WHERE b.IDBACIA = r.IDBACIA AND r.IDRIO = a.IDRIO 
	GROUP BY b.NOME
