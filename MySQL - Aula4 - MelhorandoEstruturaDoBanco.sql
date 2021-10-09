#Para excluir um banco de dados utilizamos o comando:
drop database cadastro;

#Como em alguns idiomas as palavras conté acentos, temos que definir a acentuação dos dados no banco, e fazemos isso assim:

create database cadastro
default character set utf8
default collate utf8_general_ci;

#Lembrando que o nome do banco e o utf8 devem sempre ser minúsculos
#O comando collate tbm serve para a formatação dos caracteres
#Estes parâmetros DEFAULT que definimos são chamados de constrains

#Agora podemos definir a table Pessoas com mais precisão:
CREATE TABLE pessoas(
nome varchar(30) NOT NULL,
nascimento date,
sexo enum('M','F'),
peso decimal(5,2),
altura decimal(3,2),
nacionalidade varchar(20) DEFAULT 'Brasil'
)DEFAULT CHARSET = utf8;

#NOT NULL é outra constrain, serve para definir que um campo não pode ser nulo
#No decimal(x,y) o x indica quantos caracteres terá ao todo e o y quantos terão após a vírgula
#Em DEFAULT 'Brasil', este comando serve para definir que se não for informada a nacionalidade da pessoa, por padrão ela será 'Brasil'
#Note que podemos definir uma formatação específica para cada table usando comando DEFAULT CHARSET = xxx
#Podemos nomear os campos como nome, sexo, etc utilizando  `crases` para colocar acentos nos campos, mas não é o ideal

#Porém, não podemos cadastrar a mesma pessoa duas vezes e assim utilizamos a PRIMARY KEY, seria algo como o CPF onde só existe um para cada pessoa
CREATE TABLE pessoas(
id int not null auto_increment,
nome varchar(30) NOT NULL,
nascimento date,
sexo enum('M','F'),
peso decimal(5,2),
altura decimal(3,2),
nacionalidade varchar(20) DEFAULT 'Brasil',
primary key (id)
)DEFAULT CHARSET = utf8;

#O comando auto_increment serve como o c++ em JS

drop table pessoas;