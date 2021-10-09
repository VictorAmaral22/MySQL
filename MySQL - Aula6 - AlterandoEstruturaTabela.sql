#Podemos visualizar a tabela com suas colunas e definições utilizando o comando:
DESCRIBE pessoas;
#Ou
DESC pessoas;

#Para alterar uma tablea, nós utilizamos o comando:
ALTER table pessoas
ADD column profissao varchar(10);

SELECT * FROM pessoas;
#Com o comando add adicionamos colunas. Elas sempre aparecem no fim se não especificarmos a sua posição. Como já adicionamos ela, vamos removê-la primeiro e dps adicioná-la no lugar certo:
#Para excluir uma coluna utilizamos o comando:
ALTER table pessoas
DROP column profissao;

#Agora vamos escolher uma nova posição para a coluna:
ALTER table pessoas
ADD column profissao varchar(10) AFTER nome;

#Se quiser que a coluna seja a primeira
ALTER table pessoas
ADD codigo int FIRST;
#Podemos omitir a palavra column tbm

#Para modificar as definições de uma coluna utilizamos
alter table pessoas
modify column profissao varchar(20);
#Com o comando MODIFY podemos redefinir os tipos primitivos e as constrains, só não podemos renomear o campo.

alter table pessoas
modify column profissao varchar(20) default '';
#Porém, para setar a constrain NOT NULL teriamos que criar a coluna do zero pois dá uma incoerência de dados
alter table pessoas
drop column profissao;
alter table pessoas
add column profissao varchar(20) not null default '' after nome;

desc pessoas;

#Mas e se quisermos renomear a coluna, usamos o comando change
alter table pessoas
change column profissao prof varchar(20) default '' not null;
#Quando utilizamos o change devemos botar o nome antigo da coluna, o novo, os tipos primitivos e as constrains de novo.

#Se quisermos renomear o nome da tabela inteira utilizamos o comando:
alter table pessoas
RENAME TO gafanhotos;

#Agora vamos adicionar mais uma tabela
create table IF NOT EXISTS cursos(
nome varchar(30) not null UNIQUE,
descricao text,
carga int UNSIGNED,
totaulas int UNSIGNED,
ano year default '2016'
)default charset = utf8;

#IF NOT EXISTS ou seja, se a tabela cursos não existe, ele vai criá-la. 
#Se criarmos uma tabela com o mesmo nome de outra que já existe, essa nova vai assumir o lugar da anterior, excluindo ela.

#UNIQUE significa que não pode ter outro igual, mas isso não faz desse campo uma primary key, é apenas pra definir que não poder repetir

#UNSIGNED é o seguinte. Utilizamos ele em campos que usam valores inteiros, o tamanho do int é de -2147483648 até 2147483647. 
#Ao usar o UNSIGNED, dizemos que não vamos utilizar valores negativos, fazendo com que o tamanho do int seja de 0 até 4294967295.

alter table cursos
add column idcurso int first;

#Para configurar a coluna idcurso como a primary key
alter table cursos
add PRIMARY KEY(idcurso);

desc cursos;

#Podemos apagar uma tabela desse jeito:
DROP TABLE if exists teste;
#o if exists não é obrigatório

#Os comandos ALTER TABLE e DROP TABLE se encaixam na classificação DDL do SQL. 
#Isso porque ele mexem na estrutura da tabela, os dados terem sido alterados são uma consequência disso.

# DDL :
#     create database,
#     create table,
#     alter table,
#     drop table,

# DML :
#     INSERT INTO


