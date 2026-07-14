-- ==========================================
-- Pet Adoption System
-- Sample Data
-- ==========================================

USE PetAdoptionSystem;

-- ==========================================
-- Insert into Pets
-- ==========================================

INSERT INTO Pets (PetName, Species, Breed, Age, Gender, Color, Vaccinated, AdoptionStatus)
VALUES
('Bruno', 'Dog', 'Labrador', 3, 'Male', 'Brown', TRUE, 'Available'),
('Bella', 'Dog', 'Beagle', 2, 'Female', 'White', TRUE, 'Available'),
('Kitty', 'Cat', 'Persian', 1, 'Female', 'White', TRUE, 'Available'),
('Tom', 'Cat', 'Siamese', 4, 'Male', 'Grey', FALSE, 'Available'),
('Max', 'Dog', 'German Shepherd', 5, 'Male', 'Black', TRUE, 'Adopted');

-- ==========================================
-- Insert into Customers
-- ==========================================

INSERT INTO Customers
(FirstName, LastName, Email, Phone, Gender, Address, City, State, Pincode)
VALUES
('Rahul', 'Sharma', 'rahul@gmail.com', '9876543210', 'Male', 'Model Town', 'Jalandhar', 'Punjab', '144001'),
('Priya', 'Verma', 'priya@gmail.com', '9876543211', 'Female', 'Civil Lines', 'Ludhiana', 'Punjab', '141001'),
('Aman', 'Singh', 'aman@gmail.com', '9876543212', 'Male', 'Sector 22', 'Chandigarh', 'Chandigarh', '160022'),
('Neha', 'Gupta', 'neha@gmail.com', '9876543213', 'Female', 'Raj Nagar', 'Delhi', 'Delhi', '110001'),
('Rohit', 'Kapoor', 'rohit@gmail.com', '9876543214', 'Male', 'Green Park', 'Amritsar', 'Punjab', '143001');

-- ==========================================
-- Insert into Employees
-- ==========================================

INSERT INTO Employees
(FirstName, LastName, Email, Phone, Designation, Salary, HireDate, Shift)
VALUES
('Ankit', 'Mehra', 'ankit@petshelter.com', '9000000001', 'Manager', 50000, '2023-01-10', 'Morning'),
('Simran', 'Kaur', 'simran@petshelter.com', '9000000002', 'Veterinarian', 60000, '2022-08-15', 'Morning'),
('Raj', 'Malhotra', 'raj@petshelter.com', '9000000003', 'Caretaker', 30000, '2024-02-01', 'Evening');

-- ==========================================
-- Insert into Adoptions
-- ==========================================

INSERT INTO Adoptions
(PetID, CustomerID, EmployeeID, AdoptionDate, AdoptionFee, Status)
VALUES
(5, 1, 1, '2025-01-15', 5000.00, 'Approved'),
(2, 2, 2, '2025-02-10', 4500.00, 'Approved'),
(1, 3, 3, '2025-03-05', 6000.00, 'Pending'),
(3, 4, 1, '2025-03-20', 3500.00, 'Approved'),
(4, 5, 2, '2025-04-01', 4000.00, 'Rejected');

-- ==========================================
-- Insert into Payments
-- ==========================================

INSERT INTO Payments
(AdoptionID, PaymentDate, Amount, PaymentMethod, PaymentStatus)
VALUES
(1, '2025-01-15', 5000.00, 'UPI', 'Completed'),
(2, '2025-02-10', 4500.00, 'Card', 'Completed'),
(3, '2025-03-05', 6000.00, 'Cash', 'Pending'),
(4, '2025-03-20', 3500.00, 'Net Banking', 'Completed'),
(5, '2025-04-01', 4000.00, 'UPI', 'Failed');