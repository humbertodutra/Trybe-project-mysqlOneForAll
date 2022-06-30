SELECT 
    C.cancoes AS nome, COUNT(H.cancoes_id) AS reproducoes
FROM
    SpotifyClone.cancoes C
        INNER JOIN
    SpotifyClone.historico_reproducoes AS H ON C.cancoes_id = H.cancoes_id
        INNER JOIN
    SpotifyClone.usuario AS U ON U.usuario_id = H.usuario_id
WHERE
    U.plano_id = 1 OR U.plano_id = 3
GROUP BY nome
ORDER BY nome ASC