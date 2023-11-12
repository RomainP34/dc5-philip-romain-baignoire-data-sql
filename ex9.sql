/*Lister les entités et leurs sources*/

SELECT  name, source.source
FROM entity
INNER JOIN source 
ON entity.source = source.id