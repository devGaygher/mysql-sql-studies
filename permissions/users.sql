-- acesso de qualquer lugar
CREATE USER alice IDENTIFIED BY '0000';

-- acesso apenas da maquina local (restricao de filtro)
CREATE USER rafael@localhost IDENTIFIED BY '2706';

-- acesso em qualquer maquina do dominio @guraiguer.com (restricao de filtro)
CREATE USER Juliana@guraiguer.com IDENTIFIED BY '1102';

-- remover usuario
DROP USER alice;

-- trocar senha
SET PASSWORD FOR Juliana@guraiguer.com = '1010';

-- adicionar os privilegios
-- dar admin
GRANT ALL
ON sakila.*
TO Juliana@guraiguer.com;

-- adicionar especificos
GRANT SELECT, INSERT, UPDATE, DELETE
ON sakila.*
TO rafael@localhost;

-- revogar privilegios
REVOKE UPDATE
ON sakila.*
FROM  rafael@localhost;

SELECT * FROM mysql.user;
SHOW GRANTS FOR rafael@localhost;
