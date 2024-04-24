// Buscar o nome e ano dos filmes.
SELECT Nome, Ano 
  FROM Filmes f;

// Buscar o nome e ano dos filmes, 
// ordenados por ordem crescente pelo ano.
SELECT Nome, Ano, Duracao 
  FROM Filmes f 
 ORDER BY Ano;

// Buscar pelo filme de volta para o futuro, 
// trazendo o nome, ano e a duração
SELECT Nome, Ano, Duracao 
  FROM Filmes f 
 WHERE Nome = 'De Volta para o Futuro';

// Buscar os filmes lançados em 1997
SELECT Nome, Ano, Duracao 
  FROM Filmes f 
 WHERE Ano = 1997;

// Buscar os filmes lançados APÓS o ano 2000
SELECT Nome, Ano, Duracao 
  FROM Filmes f 
 WHERE Ano > 2000;

// Buscar os filmes com a duracao maior que 100 e 
// menor que 150, ordenando pela duracao em ordem crescente
SELECT Nome, Ano, Duracao 
  FROM Filmes f 
 WHERE Duracao > 100 
   AND Duracao < 150
 ORDER BY Duracao;

// Buscar a quantidade de filmes lançadas no ano, agrupando 
// por ano, ordenando pela quantidade em ordem decrescente
SELECT Ano, COUNT(*) Quantidade
  FROM Filmes f 
 GROUP BY Ano
 ORDER BY Quantidade DESC;

// Buscar os Atores do gênero masculino, 
// retornando o PrimeiroNome, UltimoNome
SELECT Id,
       PrimeiroNome,
       UltimoNome,
       Genero
  FROM Atores a
 WHERE Genero = 'M';

// Buscar os Atores do gênero feminino, retornando o 
// PrimeiroNome, UltimoNome, e ordenando pelo PrimeiroNome
SELECT Id,
       PrimeiroNome,
       UltimoNome,
       Genero
  FROM Atores a
 WHERE Genero = 'F'
 ORDER BY PrimeiroNome;

// Buscar o nome do filme e o gênero
SELECT f.Nome,
       g.Genero
  FROM Filmes f
 INNER JOIN FilmesGenero fg ON f.Id = fg.IdFilme
 INNER JOIN Generos g ON g.Id = fg.IdGenero;

// Buscar o nome do filme e o gênero do tipo "Mistério"
SELECT f.Nome,
       g.Genero
  FROM Filmes f
 INNER JOIN FilmesGenero fg ON f.Id = fg.IdFilme
 INNER JOIN Generos g ON g.Id = fg.IdGenero
 WHERE g.Genero = 'Mistério';

// Buscar o nome do filme e os atores, trazendo o 
// PrimeiroNome, UltimoNome e seu Papel
SELECT f.Nome Filme,
       a.PrimeiroNome,
       a.UltimoNome,
       ef.Papel
  FROM Filmes f 
 INNER JOIN ElencoFilme ef ON ef.IdFilme = f.Id
 INNER JOIN Atores a ON a.Id = ef.IdAtor;






















