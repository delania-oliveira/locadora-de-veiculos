-- SQLite

-- Consultas

-- Exibe somente o name, lastname e email dos clientes que moram em SP
SELECT NAME, LASTNAME, EMAIL FROM CUSTOMERS WHERE STATE = 'SP';

-- Exibe somente os automóveis que estão liberados
SELECT * FROM CARS WHERE STATUS = 'Liberado';

-- Exibe somentes os automóveis do ano 2016
SELECT * FROM CARS WHERE YEAR = '2016';

-- Exibe todos os funcionários e seus respectivos cargos
SELECT NAME, POSITION_ID, POSITIONS.DESCRIPTION FROM EMPLOYEES
INNER JOIN POSITIONS ON POSITIONS.ID = EMPLOYEES.POSITION_ID;

-- Exibe somente os funcionários que realizaram 2 ou mais locações
SELECT ID, NAME, LOCATIONS_COUNT FROM EMPLOYEES
INNER JOIN (
    SELECT EMPLOYEE_ID, COUNT(*) as LOCATIONS_COUNT 
    FROM LOCATIONS
    GROUP BY EMPLOYEE_ID
    HAVING LOCATIONS_COUNT >= 2
) AS withMoreThanTwoLocations ON EMPLOYEES.ID = withMoreThanTwoLocations.EMPLOYEE_ID;

-- Exibe somente os clientes que realizaram 2 ou mais locações
SELECT ID, NAME, LOCATIONS_COUNT FROM CUSTOMERS
INNER JOIN (
    SELECT CUSTOMER_ID, COUNT(*) as LOCATIONS_COUNT
    FROM LOCATIONS
    GROUP BY CUSTOMER_ID
    HAVING LOCATIONS_COUNT >= 2
) AS withMoreThanTwoLocations ON CUSTOMERS.ID = withMoreThanTwoLocations.CUSTOMER_ID;