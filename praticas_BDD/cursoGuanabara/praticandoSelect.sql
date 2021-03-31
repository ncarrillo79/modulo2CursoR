select  totaulas, count(*) from cursos
group by totaulas
order by totaulas;

select * from cursos where totaulas=12;
select * from cursos where totaulas>20;

select * from cursos where totaulas=30;
select carga, totaulas from cursos where totaulas=30
group by carga;

select * from cursos where totaulas=30;
select carga, count(nome) from cursos where totaulas=30
group by carga;

select * from cursos where totaulas=30;

select ano, count(*) from cursos
group by ano
having count(ano) >=5
order by count(*) desc;

select ano, count(*) from cursos
where totaulas >30
group by ano
having ano >2013
order by count(*) desc;

select carga, count(*) from cursos
where ano>2015
group by carga;

select carga, count(*) from cursos
where ano>2015
group by carga
having carga > (select avg(carga) from cursos);

select avg(carga) from cursos;

select * from gafanhotos;

-- exercícios
/* 1-uma lista com as profissoes dos gafanhatos e seus respectivos quantitativos. */
select profissao, count(*) from gafanhotos
group by profissao desc;


-- "2- quantos gafanhotos homens e quantas mulheres nasceram após  01?jan?2005?"

select sexo,count(*) from gafanhotos
where nascimento>'2005-01001'
group by sexo;

/* 3-Lista com gafanhotos que nasceram fora do BRASIL, mostrando o país de origem
e o total de pessoas nascidas lá. Só nos interessam os países que tiveram mais de 3
gafanhotos com essa nacionalidade. */

select nacionalidade,count(*)from gafanhotos 
where nacionalidade <> 'brasil'
group by nacionalidade
having count(nacionalidade ) >'3';

/* 4-uma lista agrupada pela altura dos gafanhotos ,mostrando quantas pessoas 
pesam mais de 100kg e que estao acima da media da altura de todos os gafanhotoso.*/

select altura,count(*) from gafanhotos
where peso>'100'
group by altura
having altura >(select avg(altura)from gafanhotos);