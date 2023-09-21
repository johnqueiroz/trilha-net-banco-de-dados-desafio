--1

SELECT nome, ano FROM Filmes

--2

SELECT nome, ano, duracao from Filmes ORDER BY ano ASC

--3

SELECT nome, ano, duracao from Filmes WHERE nome = 'De Volta para o Futuro'

--4

SELECT nome, ano, duracao from Filmes WHERE ano = 1997

--5

SELECT nome, ano, duracao from Filmes WHERE ano > 2000

--6

SELECT nome, ano, duracao from Filmes WHERE duracao > 100 and duracao < 150 ORDER BY duracao ASC 

--7

SELECT ano, COUNT(*) as Quantidade FROM Filmes GROUP BY ano ORDER BY Quantidade DESC, ano DESC;

--8

SELECT * FROM Atores WHERE Genero = 'M'

--9

SELECT * FROM Atores WHERE Genero = 'F' ORDER BY PrimeiroNome

--10

SELECT  F.Nome, G.Genero  FROM FilmesGenero FG
INNER JOIN Generos G ON FG.IdGenero = G.Id
INNER JOIN Filmes F ON FG.IdFilme = F.Id

--11

SELECT  F.Nome, G.Genero  FROM FilmesGenero FG
INNER JOIN Generos G ON FG.IdGenero = G.Id
INNER JOIN Filmes F ON FG.IdFilme = F.Id WHERE G.Genero = 'Mistério'

--12

SELECT  F.Nome, A.PrimeiroNome, A.UltimoNome, EF.Papel  FROM ElencoFilme EF
INNER JOIN Atores A ON EF.IdAtor = A.Id
INNER JOIN Filmes F ON EF.IdFilme = F.Id 
