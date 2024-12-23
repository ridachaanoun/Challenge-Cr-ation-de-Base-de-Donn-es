-- Écrivez une requête pour afficher toutes les ventes réalisées au cours des 30 derniers jours.
SELECT *
FROM Sale
WHERE SaleDate >= CURDATE() - INTERVAL 30 DAY;


-- Affichez tous les clients ayant acheté plus de 5 articles en une seule vente.
SELECT C.CustomerFirstName, C.CustomerLastName, S.SaleQuantity
FROM Customer C
JOIN Sale S ON C.CustomerID = S.CustomerID
WHERE S.SaleQuantity > 5;


-- Calculez le revenu total des ventes, regroupé par InventoryName.
SELECT 
    I.InventoryName, 
    SUM(S.SaleQuantity * S.SaleUnitPrice) AS TotalRevenue
FROM Inventory I
JOIN Sale S ON I.InventoryID = S.InventoryID
GROUP BY I.InventoryName;
