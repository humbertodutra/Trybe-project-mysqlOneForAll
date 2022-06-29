SELECT 
    A.artista AS artista,
    Al.album AS album,
    COUNT(S.usuario_id) AS seguidores
FROM
    SpotifyClone.artista A
        INNER JOIN
    SpotifyClone.album Al ON Al.artista_id = A.artista_id
        INNER JOIN
    SpotifyClone.seguindo_artistas S ON S.artista_id = A.artista_id
GROUP BY artista , album
ORDER BY seguidores DESC , artista , album
