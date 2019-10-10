SELECT orderId, itemID, (quantity - despatched) AS itemsRemaining
FROM lineitems
WHERE despatched != quantity
ORDER BY itemsRemaining DESC
