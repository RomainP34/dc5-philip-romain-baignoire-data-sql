/*Trouver le nombre d'entités associées à chaque intermédiaire*/

SELECT intermediary.name AS "Intermediary", COUNT(assoc_inter_entity.entity) AS "Nombre_entité"
FROM assoc_inter_entity
JOIN intermediary ON intermediary.id = assoc_inter_entity.inter
GROUP BY intermediary.name