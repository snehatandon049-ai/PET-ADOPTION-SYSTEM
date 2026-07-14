CREATE DATABASE PetAdoptionSystem;

USE PetAdoptionSystem;

-- ==========================================
-- Table 1: Pets
-- ==========================================

CREATE TABLE Pets (
    PetID INT AUTO_INCREMENT PRIMARY KEY,
    PetName VARCHAR(50) NOT NULL,
    Species VARCHAR(30) NOT NULL,
    Breed VARCHAR(50),
    Age INT,
    Gender ENUM('Male','Female'),
    Color VARCHAR(30),
    Vaccinated BOOLEAN,
    AdoptionStatus ENUM('Available','Adopted') DEFAULT 'Available'
);

-- ==========================================
-- Table 2: Customers
-- ==========================================

CREATE TABLE Customers (
    CustomerID INT AUTO_INCREMENT PRIMARY KEY,
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50),
    Email VARCHAR(100) UNIQUE NOT NULL,
    Phone VARCHAR(15) UNIQUE NOT NULL,
    Gender ENUM('Male','Female','Other'),
    Address VARCHAR(255),
    City VARCHAR(50),
    State VARCHAR(50),
    Pincode VARCHAR(10),
    RegistrationDate DATE DEFAULT (CURRENT_DATE)
);

-- ==========================================
-- Table 3: Employees
-- ==========================================

CREATE TABLE Employees (
    EmployeeID INT AUTO_INCREMENT PRIMARY KEY,
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50),
    Email VARCHAR(100) UNIQUE NOT NULL,
    Phone VARCHAR(15) UNIQUE NOT NULL,
    Designation VARCHAR(50),
    Salary DECIMAL(10,2),
    HireDate DATE,
    Shift ENUM('Morning','Evening')
);

-- ==========================================
-- Table 4: Adoptions
-- ==========================================

CREATE TABLE Adoptions (
    AdoptionID INT AUTO_INCREMENT PRIMARY KEY,
    PetID INT NOT NULL,
    CustomerID INT NOT NULL,
    EmployeeID INT NOT NULL,
    AdoptionDate DATE NOT NULL,
    AdoptionFee DECIMAL(10,2),
    Status ENUM('Pending','Approved','Rejected') DEFAULT 'Pending',

    FOREIGN KEY (PetID) REFERENCES Pets(PetID),
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID),
    FOREIGN KEY (EmployeeID) REFERENCES Employees(EmployeeID)
);

-- ==========================================
-- Table 5: Payments
-- ==========================================

CREATE TABLE Payments (
    PaymentID INT AUTO_INCREMENT PRIMARY KEY,
    AdoptionID INT NOT NULL,
    PaymentDate DATE NOT NULL,
    Amount DECIMAL(10,2) NOT NULL,
    PaymentMethod ENUM('Cash','Card','UPI','Net Banking'),
    PaymentStatus ENUM('Pending','Completed','Failed') DEFAULT 'Pending',

    FOREIGN KEY (AdoptionID) REFERENCES Adoptions(AdoptionID)
);