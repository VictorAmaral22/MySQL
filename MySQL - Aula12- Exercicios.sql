#	EXERCÍCIOS

#1 - Uma lista com o nome de todas as gafanhotas:
select nome from gafanhotos where sexo = 'F' order by nome;

#2 - Uma lista com os dados de todos que nasceram entre 2000-1-1 e 2015-12-31 :
select * from gafanhotos where nascimento between '2000-01-01' and '2015-12-31' order by nascimento, nome;

#3 - Uma lista com todos os homens que são programadores:
select * from gafanhotos where profissao = 'Programador' and sexo = 'M' order by nome;

#4 - Uma lista com os dados de todas as mulheres que nasceram no Brasil e que o nome começa com J:
select * from gafanhotos where sexo = 'F' and nacionalidade = 'Brasil' and nome like 'J%';

#5 - Uma lista com o nome e nacionalidade de todos os homens que têm silva no nome, não nasceram no Brasil e pesam menos de 100kg:
select nome, nacionalidade from gafanhotos where sexo = 'M' and nome like '%silva%' and nacionalidade != 'Brasil' and peso < '100';

#6 - Qual é a maior altura entre os gafanhotos homens do Brasil?
select max(altura) from gafanhotos where sexo = 'M' and nacionalidade = 'Brasil';

# 7 - Qual é a média de peso de todos os gafanhotos cadastrados?
select avg(peso) from gafanhotos;

# 8 - Qual é o menor peso entre as mulheres que nasceram fora do Brasil entre 1990-01-1 e 2000-12-31 ?
select min(peso) from gafanhotos where sexo = 'F' and nacionalidade != 'Brasil' and nascimento between '1990-01-1' and '2000-12-31';

# 9 - Quantas mulheres tem mais de 1.90 de altura?
select count(altura) from gafanhotos where sexo = 'F' and altura > '1.90';