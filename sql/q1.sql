SELECT date AS date_of_orders_placed_by_Mr_Gray
FROM orders
WHERE custID = (
    SELECT custID
    FROM customers
    WHERE familyname = "Gray"
    )
