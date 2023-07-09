delimiter $$
create procedure SelectAllCustomersByCity(IN mycity varchar(50))
begin
 Select * from customers where city=mycity;
end $$

delimiter ;
call SelectAllCustomersByCity('Singapore');