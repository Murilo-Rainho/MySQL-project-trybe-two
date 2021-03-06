SELECT c.ContactName `Nome de contato`,
s.ShipperName `Empresa que fez o envio`,
o.OrderDate `Data do pedido`
FROM w3schools.orders o
LEFT JOIN w3schools.shippers s ON o.ShipperID = s.ShipperID
LEFT JOIN w3schools.customers c ON o.CustomerID = c.CustomerID
WHERE s.ShipperID IN (1, 2)
ORDER BY c.ContactName, s.ShipperName, o.OrderDate;
