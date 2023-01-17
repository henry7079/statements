SELECT FORMAT(Date, 'MM/dd') MonthDay,
CONCAT('$', Total) AS Total,
FLOOR(UnitPrice) AS UnitPrice
FROM Sale_order so
INNER JOIN Order_line ol ON so.Id = ol.SaleOrderId;