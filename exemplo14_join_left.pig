lista_data = LOAD '/user/maria_dev/u.data' AS (usuarioID: int, filmeID: int, classificacao: int, data: int);

lista_item = LOAD '/user/maria_dev/u.item' USING PigStorage('|') AS (filmeID: int, filmeTitulo: chararray, dataLancamento: chararray, videoLancamento: chararray, link: chararray);

left_outer_self_join = JOIN lista_data BY filmeID LEFT OUTER, lista_item BY filmeID;

DUMP left_outer_self_join;
