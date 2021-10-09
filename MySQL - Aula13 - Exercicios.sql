#	EXERÍCIOS

#	1 - Fazer uma lista com as profissões dos gafanhotos e suas respectivas quantitativas:
select profissao, count(*) from gafanhotos
group by profissao
order by count(*);

#	2 - Quantos homens e quantas mulheres nasceram após 1/jan/2005?
select sexo, count(*) from gafanhotos
where nascimento > '2005-01-01'
group by sexo;

#	3 - Faça uma lista com os gafanhotos que nasceram fora do Brasil, mostrando o país de origem e a quantidade de pessoas nascidas lá. Só nos interessam os países com
#	mais de 3 gafanhotos nascidos lá.
select nacionalidade, count(*) from gafanhotos
where nacionalidade not like 'Brasil'
group by nacionalidade
having count(nacionalidade) > 3
order by count(*);

#	4 - Uma lista agrupada pela altura dos gafanhotos, mostrando quantas pessoas pesam mais de 100kg e que estão acima da média de altura de todos os cadastrados:
select altura, peso, count(*) from gafanhotos
where peso > 100
group by altura
having altura > (select avg(altura) from gafanhotos)
order by altura;
#	ou
select altura, peso, count(*) from gafanhotos
where peso > 100 and altura > (select avg(altura) from gafanhotos)
group by altura
order by altura;
