SELECT u.usuario AS usuario,
COUNT(h.cancoes_id) AS qtde_musicas_ouvidas,
ROUND(SUM(m.duracao_segundos)/60, 2) AS total_minutos FROM SpotifyClone.usuario u
INNER JOIN SpotifyClone.historico_reproducoes h
ON h.usuario_id = u.usuario_id
INNER JOIN SpotifyClone.cancoes m
ON m.cancoes_id = h.cancoes_id
group by u.usuario
order by usuario;

