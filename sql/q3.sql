SELECT LI.itemID, S.supplierName
FROM lineitems LI, suppliers S, supplieritems SI
WHERE LI.orderID = 119
AND LI.itemID = SI.itemID
AND SI.supplierID = S.supplierID
ORDER BY S.supplierName
