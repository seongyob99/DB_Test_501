-- 실습 15-1 

CREATE USER ORCLSTUDY 
IDENTIFIED BY ORACLE; 

 

-- 실습 15-2 

CREATE USER ORCLSTUDY 
IDENTIFIED BY ORACLE; 

 

-- 실습 15-3 

GRANT CREATE SESSION TO ORCLSTUDY; 

 

-- 실습 15-4 

ALTER USER ORCLSTUDY 

IDENTIFIED BY ORCL; 

 

-- 실습 15-5 

DROP USER ORCLSTUDY; 

 

-- 실습 15-6 

DROP USER ORCLSTUDY CASCADE; 

 

-- 실습 15-7 

CREATE USER ORCLSTUDY 

IDENTIFIED BY ORACLE; 

 

-- 실습 15-8 

GRANT RESOURCE, CREATE SESSION, CREATE TABLE TO ORCLSTUDY; 

 

-- 실습 15-9 

CONN SCOTT/tiger 

 

CREATE TABLE TEMP( 

   COL1 VARCHAR(20), 

   COL2 VARCHAR(20) 

); 

 

GRANT SELECT ON TEMP TO ORCLSTUDY; 

 

GRANT INSERT ON TEMP TO ORCLSTUDY; 

 

-- 실습 15-10 

GRANT SELECT, INSERT ON TEMP 

   TO ORCLSTUDY; 

 

-- 실습 15-11 

CONN ORCLSTUDY/ORACLE 

 

SELECT * FROM SCOTT.TEMP; 

 

INSERT INTO SCOTT.TEMP VALUES('TEXT', 'FROM ORCLSTUDY'); 

 

SELECT * FROM SCOTT.TEMP; 

 

-- 실습 15-12 

CONN SCOTT/tiger 

 

REVOKE SELECT, INSERT ON TEMP FROM ORCLSTUDY; 

 

-- 실습 15-13 

CONN ORCLSTUDY/ORACLE 

 

SELECT * FROM SCOTT.TEMP; 

 

-- 실습 15-14 

CONN SYSTEM/oracle 

 

CREATE ROLE ROLESTUDY; 

 

GRANT CONNECT, RESOURCE, CREATE VIEW, CREATE SYNONYM 

   TO ROLESTUDY; 

 

-- 실습 15-15 

GRANT ROLESTUDY TO ORCLSTUDY; 

 

-- 실습 15-16 

CONN ORCLSTUDY/ORACLE 

 

SELECT * FROM USER_SYS_PRIVS; 

 SELECT * FROM USER_ROLE_PRIVS; 