SELECT *
FROM inhabitant

SELECT *
FROM inhabitant
WHERE state = 'friendly'

SELECT *
FROM inhabitant
WHERE state = 'friendly'
AND job = 'weaponsmith'

SELECT *
FROM inhabitant
WHERE state = 'friendly'
AND job
LIKE '%smith'

SELECT personid
FROM inhabitant
WHERE name = 'Stranger'

SELECT gold
FROM inhabitant
WHERE name = 'Stranger'

SELECT *
FROM item
WHERE owner
IS NULL

UPDATE item
SET owner = 20
WHERE owner
IS NULL

SELECT *
FROM item
WHERE owner = 20

SELECT *
FROM inhabitant
WHERE state = 'friendly'
AND (job = 'dealer'
OR job = 'merchant')

UPDATE item
SET owner = 15
WHERE item.item = 'teapot'
OR item.item = 'ring'

UPDATE inhabitant
SET name = 'John'
WHERE personid = 20

SELECT *
FROM inhabitant
WHERE job = 'baker'
ORDER BY gold
DESC

SELECT *
FROM inhabitant
WHERE job = 'pilot'

SELECT inhabitant.name
FROM village, inhabitant
WHERE village.chief = inhabitant.personid
AND village.name = 'Onionville'

SELECT COUNT(*)
FROM inhabitant
WHERE gender = 'f'
AND villageid = 3

SELECT name
FROM inhabitant
WHERE gender = 'f'
AND villageid = 3

SELECT SUM (inhabitant.gold)
FROM inhabitant
WHERE  job = 'baker'
OR job = 'dealer'
OR job = 'merchant'

SELECT state, AVG(inhabitant.gold)
FROM inhabitant
GROUP BY state

DELETE FROM inhabitant 
WHERE name = 'Dirty Diane'

UPDATE inhabitant 
SET state = 'friendly' 
WHERE job = 'pilot'