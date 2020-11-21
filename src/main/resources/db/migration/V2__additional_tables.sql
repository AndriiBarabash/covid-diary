CREATE TABLE IF NOT EXISTS TOKEN (
    UUID CHAR(36) NOT NULL PRIMARY KEY,
    TYPE ENUM('QUESTIONNAIRE') NOT NULL DEFAULT 'QUESTIONNAIRE',
    STATUS TINYINT NOT NULL,
    PATIENT_ID INT(11) NULL,
    INDEX PATIENT_IDX (PATIENT_ID)
) ENGINE=INNODB;

CREATE TABLE IF NOT EXISTS QUESTIONNAIRE (
    ID INT(11) PRIMARY KEY AUTO_INCREMENT,
    TOKEN_UUID CHAR(36) NOT NULL,
    SUBMITTED_ON DATETIME NOT NULL,
    HIGH_TEMPERATURE TINYINT NOT NULL,
    BREATH_SHORTNESS TINYINT NOT NULL,
    DRY_COUGH TINYINT NOT NULL,
    FOREIGN KEY TOKEN_FK (TOKEN_UUID) REFERENCES TOKEN (UUID),
    INDEX TOKEN_IDX (TOKEN_UUID)
) ENGINE=INNODB;