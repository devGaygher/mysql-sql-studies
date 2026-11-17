-- =========================
-- subqueries
-- =========================

USE sakila;

-- SELECT *
-- FROM payment
-- WHERE amount > (
	-- SELECT AVG(amount)
	-- FROM payment
    --  )


-- SELECT *
-- FROM payment
-- WHERE amount = (
	-- SELECT max(amount)
	-- FROM payment
	-- WHERE customer_id = 1
    -- );

-- quem fez mais de 35 compras?
-- SELECT *
-- FROM customer
-- WHERE customer_id IN (    
	-- SELECT customer_id
	-- FROM payment
	-- GROUP BY customer_id
	-- HAVING COUNT(*) > 35
    -- );
    
-- SELECT *
-- FROM customer
-- WHERE customer_id = ANY (    
	-- SELECT customer_id
	-- FROM payment
	-- GROUP BY customer_id
	-- HAVING COUNT(*) > 35
    -- );

-- criacao de uma view
-- CREATE OR REPLACE VIEW vendas_por_cliente AS
-- SELECT
	-- cus.customer_id,
    -- cus.first_name,
   -- cus.last_name,
   -- pay.amount
-- FROM customer cus
-- JOIN payment pay
	-- ON cus.customer_id = pay.customer_id
-- ORDER BY pay.amount ASC;

-- ===================================
-- funcoes de strings
-- ===================================
-- trim: remove espacos/caracteres
-- SELECT TRIM('Carros ');
-- SELECT RTRIM('Carros ');
-- SELECT LTRIM('Carros ');
-- SELECT TRIM(BOTH 'a' FROM 'aaaaCarrosaaa');
-- LEADING: inicio, TRAILING: final, BOTH: ambos os lados

-- locate: localiza caracteres na string
-- SELECT LOCATE('C', 'Carros');

-- lcase ou ucase: transforma para miuscula ou minuscula
-- SELECT ucase('Carros');

-- length: conta o numero de caracteres
-- SELECT length('Carros');

-- repeat: repete a string
-- SELECT repeat('Carros', 4);

-- left ou rigth: mostra n letras iniciais ou finais
-- SELECT right('Carros', 2)