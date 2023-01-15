CREATE PROCEDURE sp_date
    @saleId int
AS
BEGIN
    DECLARE @date int = (SELECT date FROM Sale_oder WHERE id = saleId);

    PRINT(@date);
END
GO