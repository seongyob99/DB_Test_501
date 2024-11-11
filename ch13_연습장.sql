-- 실습 13-1 

SELECT * FROM DICT; 

 

-- 실습 13-2 

SELECT * FROM DICTIONARY; 

 

-- 실습 13-3 

SELECT TABLE_NAME 

  FROM USER_TABLES; 

 

-- 실습 13-4 

SELECT OWNER, TABLE_NAME 

  FROM ALL_TABLES; 

 

-- 실습 13-5 

SELECT * FROM DBA_TABLES; 

 

-- 실습 13-6 

SELECT * FROM DBA_TABLES; 

 

-- 실습 13-7 

SELECT * 

  FROM DBA_USERS 

 WHERE USERNAME = 'SCOTT'; 

 

-- 실습 13-8 

SELECT * 

  FROM USER_INDEXES; 

 

-- 실습 13-9 

SELECT * 

  FROM USER_IND_COLUMNS; 

 

-- 실습 13-10 

CREATE INDEX IDX_EMP_SAL 

    ON EMP(SAL); 

 

-- 실습 13-11 

SELECT * FROM USER_IND_COLUMNS; 

 

-- 실습 13-12 

DROP INDEX IDX_EMP_SAL; 

 

-- 실습 13-13 

SELECT * FROM USER_IND_COLUMNS; 

 

-- 실습 13-14 

--SQLPLUS SYSTEM/oracle 

 

GRANT CREATE VIEW TO SCOTT; 

 

-- 실습 13-15 

CREATE VIEW VW_EMP20 

    AS (SELECT EMPNO, ENAME, JOB, DEPTNO 

          FROM EMP 

         WHERE DEPTNO = 20); 

 

-- 실습 13-16 

SELECT * 

  FROM USER_VIEWS; 

 

-- 실습 13-17 

SELECT VIEW_NAME, TEXT_LENGTH, TEXT 

  FROM USER_VIEWS; 

 

-- 실습 13-18 

SELECT * 

  FROM VW_EMP20; 

 

-- 실습 13-19 

DROP VIEW VW_EMP20; 

 

-- 실습 13-20 

SELECT ROWNUM, E.* 

  FROM EMP E; 

 

-- 실습 13-21 

SELECT ROWNUM, E.* 

  FROM EMP E 

ORDER BY SAL DESC; 

 

-- 실습 13-22 

SELECT ROWNUM, E.* 

  FROM (SELECT * 

          FROM EMP E 

        ORDER BY SAL DESC) E; 

 

-- 실습 13-23 

WITH E AS (SELECT * FROM EMP ORDER BY SAL DESC) 

SELECT ROWNUM, E.* 

  FROM E; 

 

-- 실습 13-24 

SELECT ROWNUM, E.* 

  FROM (SELECT * 

          FROM EMP E 

        ORDER BY SAL DESC) E 

 WHERE ROWNUM <= 3; 

 

-- 실습 13-25 

WITH E AS (SELECT * FROM EMP ORDER BY SAL DESC) 

SELECT ROWNUM, E.* 

  FROM E 

 WHERE ROWNUM <= 3; 

 

-- 실습 13-26 

CREATE TABLE DEPT_SEQUENCE 

    AS SELECT * 

         FROM DEPT 

        WHERE 1 <> 1; 

 

-- 실습 13-27 

CREATE SEQUENCE SEQ_DEPT_SEQUENCE 

   INCREMENT BY 10 

   START WITH 10 

   MAXVALUE 90 

   MINVALUE 0 

   NOCYCLE 

   CACHE 2; 

 

-- 실습 13-28 

SELECT * 

  FROM USER_SEQUENCES; 

 

-- 실습 13-29 

INSERT INTO DEPT_SEQUENCE (DEPTNO, DNAME, LOC) 

VALUES (SEQ_DEPT_SEQUENCE.NEXTVAL, 'DATABASE', 'SEOUL'); 

 

SELECT * FROM DEPT_SEQUENCE ORDER BY DEPTNO; 

 

-- 실습 13-30 

SELECT SEQ_DEPT_SEQUENCE.CURRVAL 

  FROM DUAL; 

 

-- 실습 13-31 

INSERT INTO DEPT_SEQUENCE (DEPTNO, DNAME, LOC) 

VALUES (SEQ_DEPT_SEQUENCE.NEXTVAL, 'DATABASE', 'SEOUL'); 

 

SELECT * FROM DEPT_SEQUENCE ORDER BY DEPTNO; 

 

-- 실습 13-32 

ALTER SEQUENCE SEQ_DEPT_SEQUENCE 

   INCREMENT BY 3 

   MAXVALUE 99 

   CYCLE; 

 

-- 실습 13-33 

SELECT * 

  FROM USER_SEQUENCES; 

 

-- 실습 13-34 

INSERT INTO DEPT_SEQUENCE (DEPTNO, DNAME, LOC) 

VALUES (SEQ_DEPT_SEQUENCE.NEXTVAL, 'DATABASE', 'SEOUL'); 

 

SELECT * FROM DEPT_SEQUENCE ORDER BY DEPTNO; 

 

-- 실습 13-35 

INSERT INTO DEPT_SEQUENCE (DEPTNO, DNAME, LOC) 

VALUES (SEQ_DEPT_SEQUENCE.NEXTVAL, 'DATABASE', 'SEOUL'); 

 

SELECT * FROM DEPT_SEQUENCE ORDER BY DEPTNO; 

 

-- 실습 13-36 

DROP SEQUENCE SEQ_DEPT_SEQUENCE; 

 

SELECT * FROM USER_SEQUENCES; 

 

-- 실습 13-37 

SQLPLUS SYSTEM/oracle 

 

GRANT CREATE SYNONYM TO SCOTT; 

 

GRANT CREATE PUBLIC SYNONYM TO SCOTT; 

 

-- 실습 13-38 

CREATE SYNONYM E 

   FOR EMP; 

 

-- 실습 13-39 

SELECT * FROM E; 

 

-- 실습 13-40 

DROP SYNONYM E; 