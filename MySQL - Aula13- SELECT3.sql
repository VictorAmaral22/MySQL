#No SQL podemos distinguir as informações com o DISTINCT, para por exemplo saber quais cargas horárias temos nos cursos
select distinct carga from cursos
order by carga;

#Assim o distinct pega a primeira ocorrência de cada carga e ignora as outras aparições. Mas podemos agrupar essas ocorrências também com o comando GROUP BY
select carga, count(*) from cursos
GROUP BY carga order by carga;

select carga, count(*) from cursos where totaulas = 30
group by carga;

#Podemos também limitar os agrupamentos
select carga, count(*) from cursos
group by carga
having count(nome) > 3;
#Ou seja, ele vai mostrar a carga horária e a quantidade dos cursos com ela agrupados se estes agrupados forem mais de 3.

select ano, count(*) from cursos
group by ano
having count(ano) >=5
order by count(*) desc;
#IMPORTANTE - dentro do having nós não podemos defiinir uma condição que não seja com o agrupamento definido.

/*
select ano, count(*) from cursos
group by ano
having count(carga) >=5
order by count(*) desc
*/

#Tu pode utilizar o where para isso
select ano, count(*) from cursos
where totaulas > 30
group by ano
having ano > 2013
order by count(*) desc;

#Agora vamos aumentar a complexidade dessa poha.
#Com o comando avg() nós podemos ver a média de alguns campos selecionados
select avg(carga) from cursos;

#Nós podemos mostrar na tela a carga e as ocorrências dela de cursos que foram feitos após um determinado ano, agrupados pela sua carga, sendo ela maior que
#a média dos cursos. 
select carga, count(*) from cursos
where ano > 2015
group by carga
having carga > (select avg(carga) from cursos);
#Tudo isso com um select dentro de outro wtffffffff







