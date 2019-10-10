SELECT CONCAT( C.firstname, " ", C.familyname ) AS customerName, I.description AS itemDesciption
FROM customers C, items I, orders O, lineitems LI
WHERE LI.despatched != LI.quantity
AND LI.orderID = O.orderID
AND LI.itemID = I.itemID
AND O.custID = C.custID
ORDER BY customerName
