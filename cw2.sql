-- Q1 returns (name,dod)

SELECT pb.name, pa.dod
FROM person AS pa JOIN person AS pb ON pa.name = pb.mother AND pa.dod IS NOT NULL;

-- Q2 returns (name,born\_in)

SELECT pa.name, pa.born_in
FROM person AS pa JOIN person AS pb ON pb.name = pa.mother AND pa.born_in = pb.born_in

ORDER BY pa.name;

-- Q3 returns (name)

SELECT father AS name
FROM person
UNION
SELECT mother AS name
FROM person

ORDER BY name; 

-- Q4 returns (name)

SELECT name
FROM person
WHERE gender='M'
EXCEPT
SELECT father 
FROM person

ORDER BY name;

-- Q5 returns (name)

SELECT mother AS name
FROM
(
	SELECT mother, COUNT(mother) AS count -- Returns number of genders of children each mother has
	FROM 
	(
		SELECT DISTINCT gender AS child_gender, mother -- Returns mothers with each gender of child they have
		FROM person
		WHERE mother IS NOT NULL
	) AS dist_mogen
	WHERE mother IS NOT NULL
	GROUP BY mother
) AS dist_mogen_count

WHERE count = 	( -- Pick out mothers who have the same number of genders of children as the number of genders in the table
			SELECT COUNT(*) -- Returns number of genders that exist in the table
			FROM 
			(
				SELECT DISTINCT gender -- Returns a column of each gender that exists in the table
				FROM person
			) AS genders
		) 
;



-- Q6 returns (name,father,mother)

;
