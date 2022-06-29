SELECT 
    A.cancoes AS cancao, COUNT(H.cancoes_id) AS reproducoes
FROM
    SpotifyClone.cancoes AS A
        INNER JOIN
    SpotifyClone.historico_reproducoes AS H
WHERE
    A.cancoes_id = H.cancoes_id
GROUP BY A.cancoes
ORDER BY reproducoes DESC , A.cancoes ASC
LIMIT 2;