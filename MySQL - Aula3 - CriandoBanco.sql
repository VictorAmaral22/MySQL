#Um banco de dados é uma coleção de coisas, como por exemplo de gêneros jogos. Cada gênero seria uma tabela e os jogos, os campos da tabela.

#Para criar um banco de dados, utilizamos o comando:
CREATE database cadastro;
# ; sempre indica o fim de um comando

#Para criar uma tabela o comando é bem parecido: 
CREATE table Pessoas;
#Cada table tem os seus parâmetros que podem ser definidos na criação dela:
CREATE table Pessoas(
nome,
idade,
sexo,
peso,
alura,
nacionalidade
);
#Cada um desses parâmetros deve se encaixar em algum tipo primitivo que definem como os dados serão armazenados no disco.
#----------------------------------------------------------------------------------
#TIPOS PRIMITIVOS
#Numérico:
#         Inteiro: TinyInt, SmallInt, Int, MediumInt, BigInt
#         Real: Decimal, Float, Double, Real
#         Lógico: Bit, Boolean
#Data/Tempo: Date, DateTime, TimeStamp, Time, Year
#         Date dá uma data
#         DateTime e TimeStamp dá datas horas e mais informações
#         Time é somente hora
#         Year é somente anos
#Literal:
#         Caractere: Char(ocupa exatamente o espaço informado), VarChar(mesmo se o espaço solicidado for maior que o enviado, só será armazenado o enviado)
#         Texto: TinyText, Text, MediumText, LongText
#		  (é para guardar uma descrição)	
#         Binário: TinyBlob, Blob, MediumBlob, LongBlob
#         (serve para guarar qualquer coisa em binário)
#         Coleções: Enum, Set
#         (serve para dar opções que podem ser escolhidas, ou uma ou outra)
#Espacial: Geometry, Point, Plygon, MultiPolygon
#          (servem para guardar informações de volumétricos)
#----------------------------------------------------------------------------------

#Com isso em mente vamos recriar a tabela pessoas:
CREATE table Pessoas(
nome varchar(30),
idade tinyint(3),
sexo char(1),
peso float,
alura float,
nacionalidade varchar(20)
);

#Para adicionar essa table no banco 'cadastro', usamos o código:
use cadastro;
CREATE table Pessoas(
nome varchar(30),
idade tinyint(3),
sexo char(1),
peso float,
alura float,
nacionalidade varchar(20)
);

#Para verificar a estrutura interna de uma tabela utilizamos o comando:
describe pessoas;

#---------------------------------------------------------


