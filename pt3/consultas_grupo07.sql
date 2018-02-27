/*2. Liste o nome dos açudes, ordenados pelo volume máximo e pelo comprimento de forma decrescente.*/

SELECT NOME
FROM ACUDE
ORDER BY VOLUMEMAXIMO, COMPRIMENTO DESC;



/* 4. Qual a bacia com o menor perímetro? */

SELECT MIN(PERIMETRO) AS MenorPerimetro FROM Bacia;


/*11. Liste o nome dos postos pluviométricos localizados no Ceará ou em Alagoas.*/

SELECT Nome FROM POSTOPLUVIOMETRICO WHERE ENDERECO_ESTADO='Ceará' OR ENDERECO_ESTADO='Alagoas';