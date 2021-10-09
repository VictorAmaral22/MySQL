#Algumas coisas do SELECT pode acabar variando a sintaxe entre outros SGBS como o Oracle, PostGres e tals. Esse são os do MySQL Workbench

#Operador LIKE - usado para procurar coisas parecidas 
SELECT * FROM cursos
WHERE nome LIKE 'P%';

#O LIKE é case sensitive, ou seja, não importa se a letra esteja minúscula ou maiúscula, ele vai contar igualmente.
SELECT * FROM cursos
WHERE nome LIKE 'p%'; 

#O ' % ' é utilizado como um coringa, para substituir nenhum ou alguns caracteres.
select descricao from cursos
where descricao like '%A%';

#Podemos utilizar o NOT LIKE para procura os que não tem semelhanças
select * from cursos
where nome NOT LIKE '%A%';

#Note que 'A's acentuados tbm contam...
update cursos
set nome = 'POO'
where idcurso = '9';
select * from cursos
where nome LIKE '%A%';

#Podemos usar o ' _ ' tbm, que serve para indicar que deve existir um caractere neste lugar
select * from cursos 
where nome like 'ph%p_';

#--------------------

#DISTINCT - é usado para pegar um exemplo de cada coisa que vc pedir, por exemplo
#Se fizermos assim teremos a nacionalidade de todos
select nacionalidade from gafanhotos;
#Mas assim teremos em quais países tem gafanhotos
select distinct nacionalidade from gafanhotos
order by nacionalidade;

#--------------------FUNÇÕES DE AGREGAÇÃO

#COUNT - usado para fazer uma contagem
select count(*) from cursos;
#Assim sabemos quantos cursos temos cadastrados...

select count(*) from cursos where carga > 40;
#Assim sabemos quantos cursos tem a carga de mais de 40 hrs...

#Podemos usar o nome de um campo para fazer a contagem tbm
select count(nome) from cursos;

#--

#MAX - te dá o maior número de algo
select MAX(carga) from cursos;

select MAX(totaulas) from cursos where ano = '2016';

#MIN - te dá o menor número de algo
select nome, MIN(carga) from cursos where ano = 2016;
#Porém, tinha outro curso com a mesma carga, mas o MAX e MIN mostram somente 1.

#DIM - te dá o somatório de algo
select SUM(totaulas) from cursos where ano = 2016;

#AVG - te dá a média de algo
select AVG(totaulas) from cursos where ano = 2016;

