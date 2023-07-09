use classicmodels;
show tables;
select * from customers;
SELECT count(*) AS NumberOfColumns From Information_schema.columns WHERE table_name = 'customers';
SELECT column_name FROM Information_schema.columns WHERE table_name = 'customers';
SELECT column_name, data_type  FROM Information_schema.columns WHERE table_name = 'customers';
SELECT column_name , column_type FROM Information_schema.columns WHERE table_name = 'customers';
SELECT column_name, is_nullable FROM Information_schema.columns WHERE table_name = 'customers';
SELECT column_name, column_key FROM Information_schema.columns WHERE table_name = 'customers';









