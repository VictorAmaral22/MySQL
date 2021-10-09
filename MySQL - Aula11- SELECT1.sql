#SELECT é o comando mais famoso do SQL
SELECT * FROM cursos;

#Desse jeito, por default ele ordena as linhas de acordo com a chave primaria. Mas nós podemos utilizar o comando ORDER BY...
SELECT * FROM cursos
ORDER BY nome;
#E utilizando o parâmetro DESC podemos exibir a linhas no sentido decrescente. Se não colocarmos nada, ou usarmos o parâmetro ASC ela é exibida no
#sentido ascendente
SELECT * FROM cursos
ORDER BY nome desc;

SELECT * FROM cursos
ORDER BY nome asc;
#DESC como comando é describe / DESC como parâmetro é descendant

#Podemos filtrar o que o select vai exibir...
SELECT nome, carga, ano FROM cursos
order by nome;

#A ordem em que colocamos os filtros afetam a exibição tbm
SELECT ano, nome, carga FROM cursos
order by ano;
#Podemos ordenar por outras colunas tbm
SELECT ano, nome, carga FROM cursos
order by ano, nome;

#Podemos também filtrar por linhas...
SELECT * FROM cursos
WHERE ano = '2016'
order by nome;
 
#Podemos também filtrar ainda mais...
SELECT nome, descricao, carga FROM cursos
WHERE ano = '2016'
order by nome;

#Podemos usar operadores relacionais( >, <, >=, <=, =, != e <> ), como por exemplo:
select nome, descricao from cursos
where ano <= '2015'
order by nome;
#Nesse caso as aspas são opcionais
select nome, descricao, ano from cursos
where ano <= 2015
order by ano, nome;

#Outro operador relacional é o BETWEEN AND
select nome, ano from cursos
where ano BETWEEN 2014 AND 2016
order by ano desc, nome asc;

#Outro operador relacional é o IN
select nome, ano from cursos
where ano IN (2014, 2016)
order by ano;

#Agora utiizando o operador AND
select nome, carga, totaulas from cursos
where carga > 35 and totaulas < 30;

#Assim os dois parâmetros 'carga > 35' 'totaulas < 30' devem ser verdadeiros para aparecerem na query

#Agora utilizando OR
select nome, carga, totaulas from cursos
where carga > 35 OR totaulas < 30;

#Assim, se um dos dois parâmetros 'carga > 35' 'totaulas < 30' forem verdadeiros, ele aparecerá na query

#-------------------------------------------

#Sobre a classificação do comando SELECT, alguns autores consideram ele um DML, porém para outros ele inauguraria uma nova categoria, a DQL -
# - Data Query Language (Linguagem de questionamento de dados)

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
#	  (select)

# DQL :
#     SELECT