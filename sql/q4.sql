SELECT description AS item, COUNT(description) AS types
FROM items
GROUP BY description
HAVING COUNT(description) > 1
ORDER BY item
