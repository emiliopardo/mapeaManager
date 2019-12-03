-- SET SQL_SAFE_UPDATES=0;
-- UPDATE host for mapea_core
UPDATE `mapea_core` SET configuration = REPLACE(configuration,'10.240.1.134:8080','localhost:8080');
UPDATE `mapea_core` SET javascript = REPLACE(javascript,'10.240.1.134:8080','localhost:8080');
UPDATE `mapea_core` SET style = REPLACE(style,'10.240.1.134:8080','localhost:8080');
-- UPDATE host for mapea_plugin
UPDATE `mapea_plugin` SET javascript = REPLACE(javascript,'10.240.1.134:8080','localhost:8080');
UPDATE `mapea_plugin` SET style = REPLACE(style,'10.240.1.134:8080','localhost:8080');
-- SET SQL_SAFE_UPDATES=1;