/*Trouver les entités qui ont été actives pendant plus de 10 ans (en supposant que "lifetime" est en années)*/

SELECT entity.name, entity.lifetime
FROM entity
WHERE lifetime > 10