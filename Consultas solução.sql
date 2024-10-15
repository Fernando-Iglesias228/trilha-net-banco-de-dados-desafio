-- 1
SELECT
	f.Nome,
	f.Ano
FROM
	Filmes f

-- 2
SELECT
	f.Nome,
	f.Ano
FROM
	Filmes f
ORDER BY
	f.Ano ASC

-- 3
SELECT
	f.Nome,
	f.Ano,
	f.Duracao
FROM
	Filmes f
WHERE
	f.Nome = 'De volta para o futuro'

-- 4
SELECT
	f.Nome,
	f.Ano,
	f.Duracao
FROM
	Filmes as f
WHERE
	f.Ano = 1997

-- 5

SELECT
	f.Nome,
	f.Ano,
	f.Duracao
FROM
	Filmes f
WHERE
	Ano > 2000

-- 6
SELECT
	f.Nome,
	f.Ano,
	f.Duracao
FROM
	Filmes f
WHERE
	f.Duracao BETWEEN 101 AND 149
ORDER BY
	f.Duracao ASC

-- 7
SELECT 
	COUNT(f.Ano) Quantidade,
	f.Ano
FROM
	Filmes f
GROUP BY
	f.Ano
ORDER BY
	Quantidade DESC
	
/* Obs. 7: Pelo que interpretei dos resultados obtidos na imagem,
acredito que o correto seja ordenar pela quantidade por ano de forma decrescente,
e não pela duração*/

-- 8
SELECT
	a.PrimeiroNome,
	a.UltimoNome
FROM
	Atores a
WHERE
	a.Genero = 'M'

-- 9
SELECT
	a.PrimeiroNome,
	a.UltimoNome
FROM
	Atores a
WHERE
	a.Genero = 'F'
ORDER BY
	a.PrimeiroNome

-- 10
SELECT
	f.Nome,
	g.Genero
FROM
	Filmes f
INNER JOIN
	FilmesGenero fg ON f.Id = fg.IdFilme
INNER JOIN
	Generos g ON fg.IdGenero = g.Id

-- 11
SELECT
	f.Nome,
	g.Genero
FROM
	Filmes f
INNER JOIN
	FilmesGenero fg ON f.Id = fg.IdFilme
INNER JOIN
	Generos g ON fg.IdGenero = g.Id
WHERE
	g.Genero = 'Mistério'

-- 12
SELECT
	f.Nome,
	a.PrimeiroNome,
	a.UltimoNome,
	ef.Papel
FROM
	Filmes f
INNER JOIN
	ElencoFilme ef ON f.Id = ef.IdFilme
INNER JOIN
	Atores a ON ef.IdAtor = a.Id