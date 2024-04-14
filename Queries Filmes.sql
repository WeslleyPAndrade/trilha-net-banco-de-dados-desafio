--1
SELECT Nome, Ano FROM Filmes

--2
SELECT Nome, Ano FROM Filmes
ORDER BY Ano

--3
SELECT Nome, Ano, Duracao FROM Filmes
WHERE Upper(Nome) = Upper('de volta para o futuro')

--4
SELECT Nome, Ano, Duracao FROM Filmes
WHERE Ano = 1997

--5
SELECT Nome, Ano, Duracao FROM Filmes
WHERE Ano > 2000

--6
SELECT Nome, Ano, Duracao FROM Filmes
WHERE Duracao > 100 AND Duracao < 150
ORDER BY Duracao

--7
SELECT Ano, Count(*) Quantidade FROM Filmes
GROUP BY Ano
ORDER BY Quantidade DESC

--8
SELECT * FROM Atores
WHERE Genero = 'M'

--9
SELECT * FROM Atores
WHERE Genero = 'F'
ORDER BY PrimeiroNome

--10
SELECT Nome, Genero FROM Filmes F
INNER JOIN FilmesGenero FG ON FG.IdFilme = F.Id
INNER JOIN Generos G ON G.Id = FG.IdGenero

--11
SELECT Nome, Genero FROM Filmes F
INNER JOIN FilmesGenero FG ON FG.IdFilme = F.Id
INNER JOIN Generos G ON G.Id = FG.IdGenero
WHERE UPPER(G.Genero) = UPPER('Mistério')

--12
SELECT Nome, PrimeiroNome, UltimoNome, Papel FROM Filmes F
INNER JOIN ElencoFilme EF ON EF.IdFilme = F.Id
INNER JOIN Atores A ON A.Id = EF.IdAtor
