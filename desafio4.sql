SELECT 
    U.usuario AS usuario,
    IF(YEAR(MAX(h.data_reproducao)) >= 2021,
        'Usuário ativo',
        'Usuário inativo') condicao_usuario
FROM
    SpotifyClone.usuario U
        INNER JOIN
    SpotifyClone.historico_reproducoes h ON h.usuario_id = U.usuario_id
GROUP BY U.usuario
ORDER BY U.usuario
