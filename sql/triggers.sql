USE PetAdoptionSystem;

-- ==========================================
-- Trigger 1:
-- Automatically mark pet as adopted
-- ==========================================

DELIMITER $$

CREATE TRIGGER UpdatePetStatus
AFTER INSERT ON Adoptions
FOR EACH ROW
BEGIN
    UPDATE Pets
    SET AdoptionStatus='Adopted'
    WHERE PetID=NEW.PetID;
END $$

DELIMITER ;


-- ==========================================
-- Trigger 2:
-- Prevent negative payment amount
-- ==========================================

DELIMITER $$

CREATE TRIGGER CheckPaymentAmount
BEFORE INSERT ON Payments
FOR EACH ROW
BEGIN
    IF NEW.Amount <= 0 THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT='Payment Amount must be greater than zero';
    END IF;
END $$

DELIMITER ;