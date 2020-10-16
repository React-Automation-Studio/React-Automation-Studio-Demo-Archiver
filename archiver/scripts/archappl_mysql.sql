
-- CREATE TABLE PVTypeInfo (
-- 	pvName VARCHAR(255) NOT NULL PRIMARY KEY,
-- 	typeInfoJSON MEDIUMTEXT NOT NULL,
-- 	last_modified TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
-- ) ENGINE=InnoDB;

CREATE TABLE PVAliases (
	pvName VARCHAR(255) NOT NULL PRIMARY KEY,
	realName VARCHAR(256) NOT NULL,
	last_modified TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB;

CREATE TABLE ArchivePVRequests (
	pvName VARCHAR(255) NOT NULL PRIMARY KEY,
	userParams MEDIUMTEXT NOT NULL,
	last_modified TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB;

CREATE TABLE ExternalDataServers (
	serverid VARCHAR(255) NOT NULL PRIMARY KEY,
	serverinfo MEDIUMTEXT NOT NULL,
	last_modified TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB;

SET NAMES utf8;
SET time_zone = '+00:00';
SET foreign_key_checks = 0;
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

SET NAMES utf8mb4;

DROP TABLE IF EXISTS `PVTypeInfo`;
CREATE TABLE `PVTypeInfo` (
  `pvName` varchar(255) NOT NULL,
  `typeInfoJSON` mediumtext NOT NULL,
  `last_modified` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`pvName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO `PVTypeInfo` (`pvName`, `typeInfoJSON`, `last_modified`) VALUES
('testIOC:amplitude',	'{\"hostName\":\"localhost\",\"paused\":\"false\",\"creationTime\":\"2020-09-09T07:12:02.255Z\",\"lowerAlarmLimit\":\"2000.0\",\"precision\":\"0.0\",\"lowerCtrlLimit\":\"0.0\",\"units\":\"V\",\"computedBytesPerEvent\":\"21\",\"computedEventRate\":\"0.016666668\",\"usePVAccess\":\"false\",\"computedStorageRate\":\"0.35\",\"modificationTime\":\"2020-09-09T07:12:02.255Z\",\"upperDisplayLimit\":\"10000.0\",\"upperWarningLimit\":\"6000.0\",\"DBRType\":\"DBR_SCALAR_DOUBLE\",\"dataStores\":[\"pb:\\/\\/localhost?name=STS&rootFolder=${ARCHAPPL_SHORT_TERM_FOLDER}&partitionGranularity=PARTITION_HOUR&consolidateOnShutdown=true\",\"pb:\\/\\/localhost?name=MTS&rootFolder=${ARCHAPPL_MEDIUM_TERM_FOLDER}&partitionGranularity=PARTITION_DAY&hold=2&gather=1\",\"pb:\\/\\/localhost?name=LTS&rootFolder=${ARCHAPPL_LONG_TERM_FOLDER}&partitionGranularity=PARTITION_YEAR\"],\"upperAlarmLimit\":\"8000.0\",\"userSpecifiedEventRate\":\"0.0\",\"policyName\":\"Default\",\"useDBEProperties\":\"false\",\"hasReducedDataSet\":\"false\",\"lowerWarningLimit\":\"4000.0\",\"chunkKey\":\"testIOC\\/amplitude:\",\"applianceIdentity\":\"appliance0\",\"scalar\":\"true\",\"pvName\":\"testIOC:amplitude\",\"upperCtrlLimit\":\"10000.0\",\"lowerDisplayLimit\":\"0.0\",\"samplingPeriod\":\"1.0\",\"elementCount\":\"1\",\"samplingMethod\":\"MONITOR\",\"archiveFields\":[\"DRVH\",\"HIHI\",\"HIGH\",\"DRVL\",\"LOW\",\"LOLO\",\"LOPR\",\"HOPR\"],\"extraFields\":{\"ADEL\":\"0.0\",\"MDEL\":\"0.0\",\"SCAN\":\"Passive\",\"NAME\":\"testIOC:amplitude\",\"RTYP\":\"ao\"}}',	'2020-09-10 05:48:40'),
('testIOC:BO1',	'{\"paused\":\"false\",\"creationTime\":\"2020-08-25T10:12:26.617Z\",\"lowerAlarmLimit\":\"0.0\",\"precision\":\"0.0\",\"lowerCtrlLimit\":\"0.0\",\"computedBytesPerEvent\":\"12\",\"computedEventRate\":\"0.25\",\"usePVAccess\":\"false\",\"computedStorageRate\":\"3.2\",\"modificationTime\":\"2020-09-03T14:25:24.257Z\",\"upperDisplayLimit\":\"0.0\",\"upperWarningLimit\":\"0.0\",\"DBRType\":\"DBR_SCALAR_ENUM\",\"dataStores\":[\"pb:\\/\\/localhost?name=STS&rootFolder=${ARCHAPPL_SHORT_TERM_FOLDER}&partitionGranularity=PARTITION_HOUR&consolidateOnShutdown=true\",\"pb:\\/\\/localhost?name=MTS&rootFolder=${ARCHAPPL_MEDIUM_TERM_FOLDER}&partitionGranularity=PARTITION_DAY&hold=2&gather=1\",\"pb:\\/\\/localhost?name=LTS&rootFolder=${ARCHAPPL_LONG_TERM_FOLDER}&partitionGranularity=PARTITION_YEAR\"],\"upperAlarmLimit\":\"0.0\",\"userSpecifiedEventRate\":\"0.0\",\"policyName\":\"Default\",\"useDBEProperties\":\"false\",\"hasReducedDataSet\":\"false\",\"lowerWarningLimit\":\"0.0\",\"chunkKey\":\"testIOC\\/BO1:\",\"applianceIdentity\":\"appliance0\",\"scalar\":\"true\",\"pvName\":\"testIOC:BO1\",\"upperCtrlLimit\":\"0.0\",\"lowerDisplayLimit\":\"0.0\",\"samplingPeriod\":\"1.0\",\"elementCount\":\"1\",\"samplingMethod\":\"SCAN\",\"archiveFields\":[],\"extraFields\":{\"SCAN\":\"Passive\",\"NAME\":\"testIOC:BO1\",\"RTYP\":\"bo\"}}',	'2020-09-03 14:25:24'),
('testIOC:BO2',	'{\"paused\":\"false\",\"creationTime\":\"2020-09-03T14:25:44.159Z\",\"lowerAlarmLimit\":\"0.0\",\"precision\":\"0.0\",\"lowerCtrlLimit\":\"0.0\",\"computedBytesPerEvent\":\"14\",\"computedEventRate\":\"0.016666668\",\"usePVAccess\":\"false\",\"computedStorageRate\":\"0.23333333\",\"modificationTime\":\"2020-09-03T14:25:44.159Z\",\"upperDisplayLimit\":\"0.0\",\"upperWarningLimit\":\"0.0\",\"DBRType\":\"DBR_SCALAR_ENUM\",\"dataStores\":[\"pb:\\/\\/localhost?name=STS&rootFolder=${ARCHAPPL_SHORT_TERM_FOLDER}&partitionGranularity=PARTITION_HOUR&consolidateOnShutdown=true\",\"pb:\\/\\/localhost?name=MTS&rootFolder=${ARCHAPPL_MEDIUM_TERM_FOLDER}&partitionGranularity=PARTITION_DAY&hold=2&gather=1\",\"pb:\\/\\/localhost?name=LTS&rootFolder=${ARCHAPPL_LONG_TERM_FOLDER}&partitionGranularity=PARTITION_YEAR\"],\"upperAlarmLimit\":\"0.0\",\"userSpecifiedEventRate\":\"0.0\",\"policyName\":\"Default\",\"useDBEProperties\":\"false\",\"hasReducedDataSet\":\"false\",\"lowerWarningLimit\":\"0.0\",\"chunkKey\":\"testIOC\\/BO2:\",\"applianceIdentity\":\"appliance0\",\"scalar\":\"true\",\"pvName\":\"testIOC:BO2\",\"upperCtrlLimit\":\"0.0\",\"lowerDisplayLimit\":\"0.0\",\"samplingPeriod\":\"1.0\",\"elementCount\":\"1\",\"samplingMethod\":\"MONITOR\",\"archiveFields\":[],\"extraFields\":{\"SCAN\":\"Passive\",\"NAME\":\"testIOC:BO2\",\"RTYP\":\"bo\"}}',	'2020-09-04 05:54:49');
