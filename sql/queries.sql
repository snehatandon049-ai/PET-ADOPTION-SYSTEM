-- ==========================================
-- Pet Adoption System
-- SQL Queries
-- ==========================================

USE PetAdoptionSystem;

-- ==========================================
-- 1. Display all pets
-- ==========================================
SELECT * FROM Pets;

-- ==========================================
-- 2. Display all customers
-- ==========================================
SELECT * FROM Customers;

-- ==========================================
-- 3. Display all employees
-- ==========================================
SELECT * FROM Employees;

-- ==========================================
-- 4. Display all adoptions
-- ==========================================
SELECT * FROM Adoptions;

-- ==========================================
-- 5. Display all payments
-- ==========================================
SELECT * FROM Payments;

-- ==========================================
-- 6. Show all available pets
-- ==========================================
SELECT *
FROM Pets
WHERE AdoptionStatus='Available';

-- ==========================================
-- 7. Show all adopted pets
-- ==========================================
SELECT *
FROM Pets
WHERE AdoptionStatus='Adopted';

-- ==========================================
-- 8. Pets older than 3 years
-- ==========================================
SELECT *
FROM Pets
WHERE Age > 3;

-- ==========================================
-- 9. Sort pets by age
-- ==========================================
SELECT *
FROM Pets
ORDER BY Age;

-- ==========================================
-- 10. Female customers
-- ==========================================
SELECT *
FROM Customers
WHERE Gender='Female';

-- ==========================================
-- 11. Employees earning more than 40000
-- ==========================================
SELECT *
FROM Employees
WHERE Salary > 40000;

-- ==========================================
-- 12. Total number of pets
-- ==========================================
SELECT COUNT(*) AS TotalPets
FROM Pets;

-- ==========================================
-- 13. Customer and adopted pet details
-- ==========================================
SELECT
A.AdoptionID,
C.FirstName,
C.LastName,
P.PetName,
A.AdoptionDate
FROM Adoptions A
JOIN Customers C
ON A.CustomerID=C.CustomerID
JOIN Pets P
ON A.PetID=P.PetID;

-- ==========================================
-- 14. Employee handling each adoption
-- ==========================================
SELECT
E.FirstName,
E.LastName,
P.PetName,
A.Status
FROM Employees E
JOIN Adoptions A
ON E.EmployeeID=A.EmployeeID
JOIN Pets P
ON A.PetID=P.PetID;

-- ==========================================
-- 15. Payment details with customer names
-- ==========================================
SELECT
C.FirstName,
C.LastName,
P.Amount,
P.PaymentMethod,
P.PaymentStatus
FROM Payments P
JOIN Adoptions A
ON P.AdoptionID=A.AdoptionID
JOIN Customers C
ON A.CustomerID=C.CustomerID;

-- ==========================================
-- 16. Total adoptions
-- ==========================================
SELECT COUNT(*) AS TotalAdoptions
FROM Adoptions;

-- ==========================================
-- 17. Average adoption fee
-- ==========================================
SELECT AVG(AdoptionFee) AS AverageFee
FROM Adoptions;

-- ==========================================
-- 18. Highest payment
-- ==========================================
SELECT MAX(Amount) AS HighestPayment
FROM Payments;

-- ==========================================
-- 19. Total completed revenue
-- ==========================================
SELECT SUM(Amount) AS TotalRevenue
FROM Payments
WHERE PaymentStatus='Completed';

-- ==========================================
-- 20. Customers from Punjab
-- ==========================================
SELECT *
FROM Customers
WHERE State='Punjab';