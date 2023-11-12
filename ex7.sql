/*Lister les entités et leurs pays d'origine*/

SELECT entity.name,
       country.country
FROM entity
INNER JOIN address ON entity.id_address = address.id_address
INNER JOIN country ON address.countries = country.code
WHERE address.address IS NOT NULL
  AND address.address != ''
  AND country.code IS NOT NULL
  AND country.code != ''