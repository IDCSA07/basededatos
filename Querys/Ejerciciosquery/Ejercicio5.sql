USE kardex;

SELECT mdocente.*, COUNT(distinct mmapacurricular.id_mc) AS 'Total_materias'
FROM mdocente
INNER JOIN dkardex ON mdocente.num_doc = dkardex.num_doc
INNER JOIN mmapacurricular ON dkardex.id_mc = mmapacurricular.id_mc
GROUP BY mdocente.num_doc, mdocente.nom_doc, mdocente.appat_doc, mdocente.apmat_doc
HAVING Total_materias BETWEEN 2 and 3;