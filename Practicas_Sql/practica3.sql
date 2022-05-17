-- SUM
SELECT 2 + 4;    -- addition
SELECT 5 - 3;    -- subtraction
SELECT 5 * 5;    -- multiplication

-- DIVISION
SELECT 22 / 11;   -- integer division
SELECT 34 % 9;   -- modulo division
SELECT 15.4 / 2; -- decimal division
SELECT CAST(11 AS numeric(3,1)) / 3;

-- EXPONENTS
ELECT 2 ^ 2;         -- exponentiation
SELECT |/ 10;         -- square root (operator)
SELECT sqrt(9);      -- square root (function)
SELECT ||/ 81;        -- cube root
SELECT factorial(5);  -- factorial (function)
SELECT 9 !;           -- factorial (operator; PostgreSQL 13 and earlier only)

-- PERCENTILE
CREATE TABLE percentile_test (
    numbers integer
);

INSERT INTO percentile_test (numbers) VALUES
    (1), (2), (3), (4), (5), (6);

SELECT
    percentile_cont(.5)
    WITHIN GROUP (ORDER BY numbers),
    percentile_disc(.5)
    WITHIN GROUP (ORDER BY numbers)
FROM percentile_test;

