-- SQLite

-- Updates e Deletes

-- Altera o campo email do cliente com nome Carolina
UPDATE CUSTOMERS SET EMAIL = 'carolina@campuscode.com.br' WHERE ID = 9;

-- Altera a data de nascimento do cliente com nome Josefa
UPDATE CUSTOMERS SET BIRTH_DATE = '1986-06-19' WHERE ID = 4;

-- Altera o ano do automóvel com nome Fiat Cronhos
UPDATE CARS SET YEAR = 2019 WHERE ID = 4;

-- Altera o nome da coluna 'PHONE' da tabela 'EMPLOYEES'
ALTER TABLE EMPLOYEES RENAME PHONE TO PHONE_NUMBER;

-- Exclui o automóvel com nome Hyundai HB20 1.6
DELETE FROM CARS WHERE NAME = 'Hyundai HB20 1.6';
