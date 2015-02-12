-- Q1 returns (name,dod)

SELECT pb.name, pa.dod
FROM person AS pa JOIN person AS pb ON pa.name = pb.mother AND pa.dod IS NOT NULL;

-- Q2 returns (name,born\_in)

SELECT pa.name, pa.born_in
FROM person AS pa JOIN person AS pb ON pb.name = pa.mother AND pa.born_in = pb.born_in
ORDER BY pa.name;

-- Q3 returns (name)

; 

-- Q4 returns (name)

;

-- Q5 returns (name)

;

-- Q6 returns (name,father,mother)

;
