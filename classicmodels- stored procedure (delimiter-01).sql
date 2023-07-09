SelectAllCustomersdelimiter //
create procedure SelectAllCustomers()
begin
select * from customers;
call classicmodels.SelectAllCustomers();
end//
delimiter ;


delimiter $$
create procedure SelectAllCustomersByCity(IN mycity varchar(50))
begin
 Select * from customers where city=mycity;
end $$
delimiter;