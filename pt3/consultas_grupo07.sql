/*2. Liste o nome dos açudes, ordenados pelo volume máximo e pelo comprimento de forma decrescente.*/

SELECT NOME
FROM ACUDE
ORDER BY VOLUMEMAXIMO, COMPRIMENTO DESC;



/* 4. Qual a bacia com o menor perímetro? */

SELECT MIN(PERIMETRO) AS MenorPerimetro FROM Bacia;

/* 5. Qual o nome do usuário que mais realizou medições puviométricas, e quantas foram?
    FALTA CONCLUIR (RESTRINGIR PARA UM UNICO USUARIO)*/
SELECT u.nome, COUNT(*)
	FROM usuario u, MedicaoPluviometrica m
	WHERE (m.matricula = u.matricula) 
	GROUP BY u.nome

/*9. Liste a quantidade de postos pluviométricos por bacia. */
SELECT b.nome, COUNT(*)
	FROM PostoPluviometrico p, Bacia b
	WHERE (p.idBacia = b.idBacia)
	GROUP BY b.nome 

/*11. Liste o nome dos postos pluviométricos localizados no Ceará ou em Alagoas.*/

SELECT Nome FROM POSTOPLUVIOMETRICO WHERE ENDERECO_ESTADO='Ceará' OR ENDERECO_ESTADO='Alagoas';
