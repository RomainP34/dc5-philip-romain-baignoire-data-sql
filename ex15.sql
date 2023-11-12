/*Trouver les entités et officiers associés qui ont une relation avant une certaine date*/

SELECT officer.name AS "Officer",
       assoc_officer_entity.start_date,
       entity.name AS "Entity"
FROM officer
INNER JOIN entity ON assoc_officer_entity.entity = entity.id
INNER JOIN assoc_officer_entity ON officer.id = assoc_officer_entity.officer
WHERE assoc_officer_entity.start_date < "2010-01-01"