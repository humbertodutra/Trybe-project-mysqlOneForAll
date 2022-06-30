SELECT A.artista AS artista,
B.album AS album
FROM SpotifyClone.artista A 
Inner Join SpotifyClone.album B
ON A.artista_id = B.artista_id
LIMIT 2