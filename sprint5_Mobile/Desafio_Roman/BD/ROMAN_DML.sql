USE ROMAN;

INSERT INTO	TipoUsuario		(nomeTipoUsuario)
VALUES						('Professor'),
							('Administrador')

INSERT INTO Usuario			(idTipoUsuario, email, senha)
VALUES						(1, 'prof1@gmail.com', 'senai@132'),
							(1, 'prof2@gmail.com', 'senai@132')
go

INSERT INTO Equipe			(nomeEquipe)
VALUES						('Desenvolvimento'),
							('Redes'), 
							('Multimidia')
go

INSERT INTO Professor		(idUsuario, idEquipe, nomeProfessor)
VALUES						(1,1,'Saulo'),
							(1,1,'Caique')
go

INSERT INTO Tema			(nomeTema)
VALUES						('HQ'),
							('Gest�o')
go

INSERT INTO Projeto			(idTema, nomeProjeto)
VALUES						(1,'Vil�es'),
							(2,'Controle de presen�a')
go

