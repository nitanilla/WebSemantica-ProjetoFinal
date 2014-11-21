--todos as producoes de tipo LIVRO do programa de informatica ate o ano 2012
--tipo idproducao 3,4 or 2
select * 
from col_producao as p
join col_producao_detalhamento as pd 
on (pd.idproducao = p.sequencial and pd.anobase = p.anobase and pd.idprograma = p.idprograma)
where p.idprograma='31005012004P9' and p.idtipoproducao = '3'

--10848 / 16 = 678
select count(*) 
from col_producao as p
where p.idprograma='31005012004P9'
and p.idtipoproducao = '3'

-- ao mudar idtipoproducao a 3 tem resultados, it seems 3 was for livro ate 2012
select * 
from  col_producao_detalhamento as pd 
where pd.idprograma='31005012004P9'
and idtipoproducao = '3'
