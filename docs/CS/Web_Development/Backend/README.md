Backend
Npm

Golang
包
Go get
接口
type Logger interface{
    Log(message string)
}
MySQL
基础语法
- SELECT 提取数据
- UPDATE 更新数据
- DELETE 删除数据
- INSERT INTO 插入数据
- CREATE DATABASE 创建数据库
- ALTER DATABASE 修改数据库
- CREATE TABLE 创建表
- ALTER TABLE 修改表
- DROP TABLE　删除表
- CREATE INDEX 创建索引
- DROP INDEX 删除索引
- GROUP BY
- HAVING
- CASE
关键字
- Order by asc|desc 排序（默认升序）
- AS 创建别名
运算符
- IS NULL
- IS NOT NULL
- LIKE 通配符% _
- IN
- BETWEEN
- NOT BETWEEN
- UNION UNION ALL
- EXISTS
- ANY
- ALL
函数
- MAX() 
- MIN()
- AVG()
- SUM()
- COUNT()
- IFNULL()
- COALESCE()
Join
- INNER JOIN 
- LEFT JOIN
- RIGHT JOIN
- CROSS JOIN
注释
--单行注释
/*多行
注释*/
SELECT * FROM Customers
LIMIT 3 OFFSET 3;
SELECT DISTINCT;

SELECT * FROM Cutomers WHERE Country = 'Mexico'
INSERT INTO table_name(column1,column2)
VALUES (value1,value2);
UPDATE Customers
SET PostalCode = 00000
WHERE Country = 'Mexico';

SELECT Orders.OrderID,
Customers.CustomerName,Orders.OrderDate
From Orders
INNER JOIN Customers ON Orders.CustomerID=Customers.CustomerID;
Trpc
放弃了console.log和fmt.log，试一试日志框架