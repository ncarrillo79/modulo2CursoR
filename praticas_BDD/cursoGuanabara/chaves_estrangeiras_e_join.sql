describe gafanhotos;

alter table gafanhotos
add column cursopreferido int;


alter table gafanhotos
add foreign key (cursopreferido)
references cursos(idcurso);

describe gafanhotos;

select * from gafanhotos;

select * from cursos;

update gafanhotos set cursopreferido='6' where id='1';
select * from gafanhotos;

-- delete from cursos where idcurso='6'; inconsistencia de integridade

delete from cursos where idcurso='28';
-- en caso anterios si lo apagou porque ningêm estaba preferindo esse curso

select * from gafanhotos;