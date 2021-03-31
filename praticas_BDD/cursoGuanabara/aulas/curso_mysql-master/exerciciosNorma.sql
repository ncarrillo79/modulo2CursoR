select*from gafanhotos;

select*from cursos

order by nome;

select nome,carga from cursos
-- order by nome;
order by nome;

select * from cursos
where ano='2016'
order by nome;

select nome,descricao from cursos
where ano<='2015'
order by nome;

select nome,descricao,ano from cursos
where ano<='2015'
order by ano, nome;

select nome,descricao,ano from cursos
where ano!='2016'
-- where ano <>'2016' es lo mismo do que !=
order by ano, nome asc;

select nome,ano from cursos
where ano between '2014' and '2016'
order by ano desc, nome;

select nome,descricao,ano from cursos
where ano in( '2014','2016')
order by ano;

select nome,carga,totaulas from cursos 
where carga > 35 and totaulas<30;

select nome,carga,totaulas from cursos 
where carga > 35 or totaulas<30;

select * from cursos
where nome like'P%';

select * from cursos
where nome like'%a';

select * from cursos
where nome like'%a%';

select * from cursos
where nome not like'%a%';

-- update cursos set nome='páOO' 
-- where idcurso='9';

select * from cursos
where nome like 'PH%P';

select * from cursos
where nome like 'PH%P%';

select * from cursos
where nome like 'PH%P_';

select * from cursos
where nome like 'P__t%';

select * from gafanhotos
where nome like '%silva%';

select * from gafanhotos
where nome like '%_silva%';

select * from gafanhotos
where nome like '%silva';

select * from gafanhotos
where nome like 'silva%';

select * from gafanhotos;

select nacionalidade from gafanhotos;

select distinct nacionalidade from gafanhotos
order by nacionalidade desc;

select count(*) from cursos;

select count(*) from cursos
where carga >40;

select * from cursos
where carga >40;

select * from cursos order by carga;
select max(carga) from cursos order by carga;

select max(totaulas) from cursos where ano='2016';

select min(totaulas) from cursos where ano='2016';

select sum(totaulas) from cursos;

select sum(totaulas) from cursos where ano='2016';

select avg(totaulas) from cursos where ano='2016';










