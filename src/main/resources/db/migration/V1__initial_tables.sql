CREATE TABLE IF NOT EXISTS DOCTOR
(
    ID         INT(11) PRIMARY KEY AUTO_INCREMENT,
    FIRST_NAME VARCHAR(255) NOT NULL,
    LAST_NAME  VARCHAR(255) NOT NULL,
    EMAIL      VARCHAR(255) NOT NULL
) ENGINE = INNODB
  CHARACTER SET utf8
  COLLATE utf8_unicode_ci;

CREATE TABLE IF NOT EXISTS PATIENT
(
    ID            INT(11) PRIMARY KEY AUTO_INCREMENT,
    DOCTOR_ID     INT(11)      NOT NULL,
    FIRST_NAME    VARCHAR(255) NOT NULL,
    LAST_NAME     VARCHAR(255) NOT NULL,
    EMAIL         VARCHAR(255) NOT NULL,
    WEIGHT        FLOAT        NOT NULL,
    HEIGHT        FLOAT        NOT NULL,
    DATE_OF_BIRTH DATE         NOT NULL,
    CREATED_ON    DATETIME     NOT NULL,
    TEST_DATE     DATE         NULL,
    FOREIGN KEY DOCTOR_FK (DOCTOR_ID) REFERENCES DOCTOR (ID),
    INDEX DOCTOR_IDX (DOCTOR_ID)
) ENGINE = INNODB
  CHARACTER SET utf8
  COLLATE utf8_unicode_ci;
