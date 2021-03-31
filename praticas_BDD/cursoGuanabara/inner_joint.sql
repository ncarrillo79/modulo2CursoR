select * from gafanhotos;

select  nome, cursopreferido from gafanhotos;


select * from cursos;
select nome, ano from cursos;

-- vamos a juntar(joint) as dois select

select g.nome, c.nome, c.ano
from gafanhotos as g inner join cursos as c
on c.idcurso=g.cursopreferido
order by g.nome;

select g.nome, g.cursopreferido, c.nome, c.ano
from gafanhotos as g left join cursos as c
on c.idcurso=g.cursopreferido;

select g.nome, c.nome, c.ano
from gafanhotos as g right  join cursos as c
on c.idcurso=g.cursopreferido;

