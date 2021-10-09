#A linguagem SQL é separada por categorias de comandos, como DDL, DML, DQL, etc...
#Os comandos utilizados na aula anterior, CREATE table, CREATE database fazem parte da categoria DDL - Data Definition Language

#Agora vamos incluir dados dentro da tabela criada antes:
USE cadastro;
INSERT INTO pessoas
(nome, nascimento, sexo, peso, altura, nacionalidade)
VALUES 
('Godofredo', '1984-01-02', 'M', '78.5', '1.83', 'Brasil');

#Não é porque os dados estão entre aspas que eles são strings. Sempre oq estiver entre aspas são dados, oq não estiver são constrains.
#Não é preciso informar o valor do id visto que nas constrains dos campos existe o auto_increment.

SELECT * FROM pessoas;

#Assim nós selecionamos tudo da tabela pessoas.
#Agora vamos inserir mais uma pessoa
INSERT INTO pessoas
(nome, nascimento, sexo, peso, altura, nacionalidade)
VALUES 
('Maria', '1999-12-30', 'F', '55.2', '1.65', 'Portugal');

#Podemos colocar o id e a nacionalidade de formas diferentes tbm:
INSERT INTO pessoas
(id, nome, nascimento, sexo, peso, altura, nacionalidade)
VALUES 
(DEFAULT, 'Creuza', '1920-12-30', 'F', '50.2', '1.65', DEFAULT);

#Se a ordem dos campos é a mesma da qual nós inserimos os valores, não é necessário informar previamente
INSERT INTO pessoas VALUES 
(DEFAULT, 'Adallgiza', '1930-11-2', 'F', '63.2', '1.75', 'Irlanda');

#Podemos também adicionar mais de uma pessoa ao mesmo tempo...
INSERT INTO pessoas values
(DEFAULT, 'Cláudio', '1975-4-22', 'M', '99.0', '2.15', 'Brasil'),
(DEFAULT, 'Pedro', '1999-12-3', 'M', '87', '2', DEFAULT),
(DEFAULT, 'Janaína', '1987-11-12', 'F', '75.4', '1.66', 'EUA');


#O comando INSERT INTO faz parte da cassificação DML - Data Manipulation Language, estes inserem dados, manipulam os dados no banco.


