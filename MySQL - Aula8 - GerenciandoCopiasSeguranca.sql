#Como exportar uma cópia de segurança do BD

use cadastro;
select * from cursos;
select * from gafanhotos;
desc cursos;
desc gafanhotos;

#alter table gafanhotos drop column codigo;

#Para criar um DUMP (backup do banco de dados, temos que fazer o seguinte:
#Vá em 'Server' > 'Data Export' > Selecione o Banco desejado > Selecione a opção 'Dump Structure and Data'
#NÃO ESQUEÇA DE ATIVAR O 'ICLUDE CREATE SCHEMA' assim ele já cria o banco.

#Agora vamos apagar o nosso banco da existência...
drop database cadastro;

#Para importar um DUMP, temos que fazer o seguinte:
#Vá em 'Server' > 'Data Import' > Selecione o arquivo > Selecione a opção 'Dump Structure and Data'

