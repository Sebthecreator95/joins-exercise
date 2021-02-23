SELECT * FROM owners o 
FULL OUTER JOIN  vehicles v 
ON v.owner_id = o.id 


SELECT first_name, last_name, 
  COUNT(owner_id) AS vehicle_amount FROM owners o 
  JOIN vehicles v on o.id=v.owner_id 
  GROUP BY (first_name, last_name) 
ORDER BY (first_name, last_name);


SELECT 
  first_name, last_name, 
  ROUND(AVG(price)) AS average_price, 
  COUNT(owner_id) AS vehicle_amount
FROM owners o 
JOIN vehicles v on o.id=v.owner_id 
GROUP BY 
  (first_name, last_name) 
HAVING 
  vehicle_amount > 1 AND average_price > 10000 
ORDER BY first_name DESC;