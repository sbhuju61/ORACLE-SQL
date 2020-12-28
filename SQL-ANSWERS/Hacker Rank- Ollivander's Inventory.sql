WITH T1 as 
(
   SELECT
      Wands.id,
      Wands_Property.age,
      Wands.coins_needed,
      Wands.power,
      ROW_NUMBER() OVER (PARTITION BY Wands.Code, Wands.Power 
                         ORDER BY coins_needed) rnum 
   FROM Wands 
   INNER JOIN Wands_Property 
         ON Wands.Code = Wands_Property.Code 
   WHERE Wands_Property.is_evil = 0 
)
SELECT
   T1.id,
   T1.age,
   T1.coins_needed,
   T1.power 
FROM T1 
WHERE T1.rnum = 1 
ORDER BY POWER DESC, AGE DESC;
