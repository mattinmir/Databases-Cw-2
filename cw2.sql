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

-- Returns all mothers with the genders of each of their children
SELECT gender AS child_gender, mother
FROM person
WHERE mother IS NOT NULL
ORDER BY mother

-- Returns all genders in the table
SELECT DISTINCT gender
FROM person;

-- Returns cross of all genders with all known mothers
SELECT gender AS all_genders, mother
FROM (SELECT DISTINCT mother FROM person) AS mothers CROSS JOIN (SELECT DISTINCT gender FROM person) AS genders 
WHERE mother IS NOT NULL 
ORDER BY mother


-- Q6 returns (name,father,mother)

;
