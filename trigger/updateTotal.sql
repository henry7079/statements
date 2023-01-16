CREATE TRIGGER updateTotal
ON Order_line
FOR UPDATE
AS
    DECLARE @saleOrderId INT = (SELECT SaleOrderId FROM inserted);
    DECLARE @total DECIMAL(16, 2) = (SELECT SUM(Quantity * Amount) FROM Order_line WHERE id = @saleOrderId);

    UPDATE Sale_order SET Total = @total WHERE id = @saleOrderId;
