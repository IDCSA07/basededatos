USE kardex;

SELECT mdocente.* , COUNT(*) AS 'Reprobados'
FROM mdocente
INNER JOIN dkardex ON mdocente.num_doc = dkardex.num_doc
WHERE dkardex.cal_dkd < 6
GROUP BY mdocente.num_doc, mdocente.nom_doc, mdocente.appat_doc, mdocente.apmat_doc
ORDER BY COUNT(*) DESC;