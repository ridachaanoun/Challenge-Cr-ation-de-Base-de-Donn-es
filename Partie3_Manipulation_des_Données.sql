-- Afficher tous les clients depuis la table Customer
SELECT * FROM Customer;

-- Lister toutes les ventes avec leurs montants totaux (SaleQuantity * SaleUnitPrice) par ordre décroissant.
SELECT 
    SaleID, 
    CustomerID, 
    InventoryID, 
    EmployeeID, 
    SaleDate, 
    SaleQuantity, 
    SaleUnitPrice, 
    (SaleQuantity * SaleUnitPrice) AS TotalAmount
FROM Sale
ORDER BY TotalAmount DESC;

-- Afficher tous les employés ayant réalisé au moins une vente, ainsi que le montant total des ventes pour chacun.
SELECT 
    E.EmployeeID, 
    E.EmployeeFirstName, 
    E.EmployeeLastName, 
    SUM(S.SaleQuantity * S.SaleUnitPrice) AS TotalSalesAmount
FROM Employee E
JOIN Sale S ON E.EmployeeID = S.EmployeeID
GROUP BY E.EmployeeID, E.EmployeeFirstName, E.EmployeeLastName;
