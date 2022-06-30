SELECT C.cancoes AS nome_musica, 
REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(C.cancoes,
                        'Circus',
                        'Pull Request'),
                    'Silly',
                    'Nice'),
                'Inner Fire',
                'Project'),
            'Her Own',
            'Trybe'),
        'Streets',
        'Code Review') AS novo_nome FROM
SpotifyClone.cancoes AS C
WHERE C.cancoes  LIKE '%Street%'
   OR C.cancoes LIKE '%Silly%'
   OR C.cancoes LIKE '%Circus%'
   OR C.cancoes LIKE '%Inner%'
   OR C.cancoes LIKE '%Own%'
   ORDER BY C.cancoes ASC