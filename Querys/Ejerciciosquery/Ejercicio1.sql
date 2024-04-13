USE kardex;

SELECT malumno.nom_alu, dkardex.cal_dkd, munidaddeaprendizaje.nom_ua
FROM malumno
INNER JOIN ekardex ON malumno.bol_alu = ekardex.bol_alu
INNER JOIN dkardex ON ekardex.id_ekd = dkardex.id_ekd
INNER JOIN mmapacurricular ON dkardex.id_mc = mmapacurricular.id_mc
INNER JOIN munidaddeaprendizaje ON mmapacurricular.cla_ua = munidaddeaprendizaje.cla_ua
WHERE (munidaddeaprendizaje.nom_ua LIKE 'F%' OR munidaddeaprendizaje.nom_ua LIKE 'C%') AND dkardex.cal_dkd < 6;