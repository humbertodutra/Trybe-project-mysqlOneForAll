SELECT 
    MIN(P.valor_plano) AS faturamento_minimo,
    MAX(P.valor_plano) AS faturamento_maximo,
    ROUND(AVG(P.valor_plano), 2) AS faturamento_medio,
    SUM(P.valor_plano) AS faturamento_total
FROM
    SpotifyClone.plano AS P
        INNER JOIN
    SpotifyClone.usuario AS U ON U.plano_id = P.plano_id