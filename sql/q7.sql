/*
Lists the order ID, customer credentials (name, town state) and the date the order was placed for orders that have not been fulfilled
*/

SELECT LI.orderID, (LI.quantity - LI.despatched) AS itemsRemaining, CONCAT(C.firstname, " ", C.familyname) as customerName, C.town, C.state, O.date
FROM lineitems LI, customers C, orders O
WHERE LI.despatched != LI.quantity
AND LI.orderID = O.orderID
AND O.custID = C.custID
ORDER BY itemsRemaining DESC
