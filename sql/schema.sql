CREATE SCHEMA IF NOT EXISTS cleandata;
USE cleandata;

DROP TABLE IF EXISTS format;
CREATE TABLE format (
  format_id          VARCHAR(5) NOT NULL,
  name               VARCHAR(100) NOT NULL,
  url                VARCHAR(100) NOT NULL,
  PRIMARY KEY(format_id)
) ENGINE=InnoDB;

DROP TABLE IF EXISTS license;
CREATE TABLE license (
  license_id         VARCHAR(5) NOT NULL,
  name               VARCHAR(100) NOT NULL,
  url                VARCHAR(100) NOT NULL,
  PRIMARY KEY(license_id)
) ENGINE=InnoDB;

DROP TABLE IF EXISTS organization;
CREATE TABLE organization(
  organization_id    INT UNSIGNED NOT NULL AUTO_INCREMENT,
  name               VARCHAR(100) NOT NULL,
  url                VARCHAR(100) NOT NULL,
  summary            VARCHAR(500) NULL,
  created            DATETIME NOT NULL,
  PRIMARY KEY(organization_id)
) ENGINE=InnoDB;

