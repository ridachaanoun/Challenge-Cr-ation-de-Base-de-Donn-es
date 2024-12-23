-- Ajoutez une nouvelle colonne CustomerEmail à la table Customer
ALTER TABLE Customer ADD CustomerEmail VARCHAR(200);


-- Mettez à jour la colonne CustomerEmail pour l’un des clients.
UPDATE Customer
SET CustomerEmail = 'risdq@example.com'
WHERE CustomerID = 1;


-- Supprimez un enregistrement client dont la ville (CustomerCity) est "New York".


DELETE FROM Customer
WHERE CustomerCity = 'New York';        