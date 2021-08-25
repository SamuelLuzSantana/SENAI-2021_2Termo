-- DML

USE CZBooks;
GO


INSERT INTO TipoUsuarios(nomeTipo)
VALUES	('administrador'),
		('autor'),
		('usuario')
GO



INSERT INTO Usuarios(idTipoUsuario,nomeUSuario, email, senha)
VALUES	(1, 'Adm','adm@email.com', 'ricardo123'),
		(2, 'George Orwell', 'george@email.com', 'senha123'),
		(2, 'Machado de Asis', 'Machado@email.com', 'machadinho'),
		(3, 'Usuario', 'usuario@email.com', 'usuario123')
GO



INSERT INTO Autores(idTipoUsuario, nomeAutor)
VALUES	(2, 'George Orwell'),
		(2, 'Machado de Asis')
GO



INSERT INTO Generos(nomeGenero)
VALUES	('Romance'),
		('fic��o Politica')
GO



INSERT INTO Intituicoes(nomeFantasia,cnpj,endereco)
VALUES	('CZBooks', '74948512000110','Rua Ma�a com pera 124')
GO


INSERT INTO Livros (idAutor, titulo,idGenero,idIntituicao, sinopse, dataPublicacao,preco)
VALUES	(1,'1984',2,1,'O livro narra a hist�ria de Winston Smith, homem de meia idade e membro do Partido Externo. Trabalhava como funcion�rio do Minist�rio da Verdade, 
						  onde reescrevia e alterava dados de acordo com os interesses do Partido.','1949','15,00'),

		(2,'Don Casmurgo',1,1,'O livro conta a hist�ria de Bento Santiago (Bentinho), apelidado de Dom Casmurro por ser calado e introvertido. Na adolesc�ncia,
		apaixona-se por Cap�tu, abandonando o semin�rio e, com ele, os des�gnios tra�ados por sua m�e, Dona Gl�ria, para que se tornasse padre.','1899','19,99')
GO
