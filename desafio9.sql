SELECT CONCAT(e.FirstName, ' ', e.LastName) `Nome completo`,
COUNT(*) `Total de pedidos`
FROM w3schools.orders o
INNER JOIN w3schools.employees e ON e.EmployeeID = o.EmployeeID
GROUP BY `Nome completo`
ORDER BY `Total de pedidos`;
