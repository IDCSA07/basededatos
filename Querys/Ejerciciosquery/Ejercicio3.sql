USE kardex;

SELECT malumno.nom_alu, dkardex.cal_dkd
FROM malumno
INNER JOIN ekardex ON malumno.bol_alu = ekardex.bol_alu
INNER JOIN dkardex ON ekardex.id_ekd = dkardex.id_ekd
WHERE dkardex.cal_dkd IS NULL;