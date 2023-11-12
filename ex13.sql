/*Lister les intermédiaires et le nombre d'entités et d'officiers associés*/

SELECT 
  intermediary.name AS intermédiaire, 
  COUNT(assoc_inter_entity.entity) AS "nb_entité", 
  COUNT(assoc_inter_offi.officer) AS "nb_officiers" 
FROM 
  intermediary 
  JOIN assoc_inter_entity ON intermediary.id = assoc_inter_entity.inter 
  JOIN assoc_inter_offi ON intermediary.id = assoc_inter_offi.inter 
GROUP BY 
  intermediary.name;