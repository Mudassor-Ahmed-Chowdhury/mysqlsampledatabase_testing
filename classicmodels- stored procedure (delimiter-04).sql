delimiter //
create procedure get_order_by_cust(
IN cust_no INT,
Out shipped INT,
Out cancelled INT,
Out resolved INT,
Out disputed INT )
begin
-- shipped
SELECT count(*) INTO shipped FROM orders WHERE customernumber= cust_no AND STATUS= 'shipped'; 
-- cancelled
SELECT count(*) INTO cancelled FROM orders WHERE customernumber= cust_no AND STATUS= 'cancelled'; 
-- resolved
SELECT count(*) INTO resolved FROM orders WHERE customernumber= cust_no AND STATUS= 'resolved'; 
-- disputed
SELECT count(*) INTO disputed FROM orders WHERE customernumber= cust_no AND STATUS= 'disputed';
end //
delimiter ; 

call get_order_by_cust(121, @shipped, @cancelled, @resolved, @disputed);
SELECT @shipped, @cancelled, @resolved, @disputed;