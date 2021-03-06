-- 6. Write a query which lists all the expensive products.
-- All product is expensive which price is higher than the average.
-- ProductName
-- UnitPrice
-- It should be sorted by UnitPrice.

SELECT 
    ProductName, UnitPrice
FROM
    Products
WHERE
    UnitPrice >= (SELECT 
            AVG(UnitPrice)
        FROM
            Products)
ORDER BY UnitPrice;
