/*Trouver tous les officiers et intermédiaires qui ont une association*/

SELECT officer.name AS "Officer",
       assoc_inter_offi.assoc_type,
       intermediary.name AS "Intermediary"
FROM officer
INNER JOIN intermediary ON assoc_inter_offi.inter = intermediary.id
INNER JOIN assoc_inter_offi ON officer.id = assoc_inter_offi.officer