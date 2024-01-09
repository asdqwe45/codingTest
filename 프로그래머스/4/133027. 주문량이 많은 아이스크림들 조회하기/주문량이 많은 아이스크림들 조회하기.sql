-- 코드를 입력하세요
SELECT T1.FLAVOR
FROM (SELECT FLAVOR, SUM(TOTAL_ORDER) AS SUM_ORDER FROM FIRST_HALF GROUP BY FLAVOR) AS T1
INNER JOIN (SELECT FLAVOR, SUM(TOTAL_ORDER) AS SUM_ORDER FROM JULY GROUP BY FLAVOR) AS T2
ON T1.FLAVOR = T2.FLAVOR
ORDER BY T1.SUM_ORDER+T2.SUM_ORDER DESC
LIMIT 3
# SELECT * FROM FIRST_HALF
# SELECT * FROM JULY