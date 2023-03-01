-- 1 – Trazer todos os dados.
-- 2 – Trazer o nome do livro e o nome da editora
-- 3 – Trazer o nome do livro e a UF dos livros publicados por autores do sexo masculino.
-- 4 - Trazer o nome do livro e o número de páginas dos livros publicados por autores do sexo 'F'.
-- 5 – Trazer os valores dos livros das editoras de São Paulo.
-- 6 – Trazer os dados dos autores do sexo masculino que tiveram livros publicados por São Paulo ou Rio de Janeiro.


-- R1
CREATE DATABASE LIVRARIA;

CREATE TABLE LIVROS(
    LIVRO VARCHAR(100),
    AUTOR VARCHAR(100),
    SEXO CHAR(1),
    PAGINAS INT(5),
    EDITORA VARCHAR(30),
    PREÇO FLOAT(10, 2),
    UF CHAR(2),
    ANO INT(4) 
)

INSERT INTO LIVROS('Cavaleiro Real', 'Ana Claudia', 'F', 405, 'Atlas', 49.9, 'RJ', 2009);
INSERT INTO LIVROS('Pessoas Efetivas', 'Eduardo Santos', 'M', 390, 'Beta', 78.99, 'RJ', 2018);
INSERT INTO LIVROS('Habitos Saudáveis', 'Eduardo Santos', 'M', 630, 'Beta', 150.98, 'RJ', 2019);
INSERT INTO LIVROS('A Casa Marrom', 'Hermes Macedo', 'M', 250, 'Bubba', 60, 'MG', 2016);
INSERT INTO LIVROS('Estacio Querido', 'Geraldo Francisco', 'M', 310, 'Insignia', 100, 'ES', 2015);
INSERT INTO LIVROS('Pra sempre amigas', 'Leda Silva', 'F', 510, 'Insignia', 78.98, 'ES', 2011);
INSERT INTO LIVROS('Copas Inesqueciveis', 'Marco Alcantara', 'M', 200, 'Larson', 130.98, 'RS', 2018);
INSERT INTO LIVROS('O poder da mente', 'Clara Mafra', 'F', 120, 'Continental', 56.58, 'SP', 2017);
-- R2

SELECT LIVRO, EDITORA FROM LIVROS;

-- R3

SELECT LIVRO, UF FROM LIVROS
WHERE AUTOR LIKE 'M';

-- R4

SELECT LIVRO, PAGINAS FROM LIVROS
WHERE AUTOR LIKE 'F';

-- R5

SELECT PREÇO FROM LIVROS
WHERE UF LIKE 'SP';

--R6

SELECT (IF AUTOR LIKE 'M') FROM LIVROS
WHERE UF LIKE 'SP' AND 'RJ';
-- ou 

SELECT AUTOR FROM LIVROS
WHERE SEXO = 'M' AND(UF = 'SP' OR 'RJ');
