SELECT S.supplierName, I.itemID, I.description, I.stocklevel
FROM suppliers S, items I, supplieritems SI
WHERE I.description = "tent"
AND I.itemID = SI.itemID
AND SI.supplierID = S.supplierID
