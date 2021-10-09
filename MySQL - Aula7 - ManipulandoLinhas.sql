# Manipulando Linhas
#Ou registros, tuplas
select * from cursos;
#Primeiro vaos adicionar dados à tabela cursos:
insert into cursos values
('1','HTML4','curso de HTML5','40','40','2014'),
('2','Algoritmos','logica de prog','20','40','2014'),
('3','Photoshop','curso de photoshop em cc','10','40','2014'),
('4','PGP','curso de php para iniciantes','40','40','2010'),
('5','Jarva','intro a linguagem java','10','40','2000'),
('6','MySQL','banco de dados','30','40','2016'),
('7','Word','curso completo word','40','40','2016'),
('8','Sapateado','danças ritmicas','40','40','2018'),
('9','Cozinha Árabe','Aprenda a fazer kibe','40','40','2018'),
('10','YouTube','Gerar polêmica e ganhar inscritos','5','40','2018');

#Porém existe alguns erros de digitação. Para consertar isso, utilizamos o comando:
UPDATE cursos
SET nome = 'HTML5'
WHERE idcurso = '1';

#Lembre-se sempre de usar o WHERE como a PRIMARY KEY, pois assim vc altera 1 única e específica linha.
#Se eu quiser alterar mais de uma coluna da mesma linha:
UPDATE cursos
SET nome = 'PHP', ano = '2015'
WHERE idcurso = '4';

#Alterar dados em linhas pode ser perigoso pois podemos acabar sobrescrevendo mais de uma linha não intencionalmente.
#Para isso utilizamos o comando LIMIT:
update cursos
set nome = 'Java', carga = '40', ano = '2015'
where idcurso = 5
LIMIT 1;
#Assim a alteração limita-se a apenas uma linha. 

#Porque isso é importante? Se fizermos isso...
update cursos
set ano = '2050', carga = '800'
where ano = '2018';

#As 3 últimas linhas da tabela, que possuem o ano 2018 passarão a ter o ano como 2050 e a carga de 800.

#Se fizermos desse jeito...
update cursos
set ano = '2018', carga = '0'
where ano = '2050'
limit 1;
#Vamos alterar a primeira linha com ano 2050

#Para apagar uma linha da tabela nós utilizamos o coomando:
DELETE FROM cursos
WHERE idcurso = '8';

#Podemos apagar mais de uma linha também. É bom utilizar o LIMIT para ter mais segurança.
DELETE FROM cursos
WHERE ano = '2050'
LIMIT 2;

select *  from cursos;

#DANGER - agora, para excluir TODAS as linhas de uma tabela, este é o comando:
#TRUNCATE TABLE cursos;
#Ou
#TRUNCATE cursos;

#---------------------------------------

# DDL :
#     create database
#	  cerate table
#	  alter table
#	  drop table

# DML :
#     insert into
#	  UPDATE
#	  DELETE
#	  TRUNCATE

#Os 3 novos comandos que vimos são classificados como DML - Data Manipulation Language pois eles manipulam os dados, não na estrutura das tabelas.


