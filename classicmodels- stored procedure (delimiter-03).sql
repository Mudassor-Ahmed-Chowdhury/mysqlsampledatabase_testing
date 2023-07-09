delimiter //
create procedure SelectAllCustomersByCityAndPostalCode(IN mycity varchar(50), IN pcode varchar(15))
begin
SELECT * from customers where city = mycity and postalCode=pcode;
end//
delimiter ;
call SelectAllCustomersByCityAndPostalCode('singapore', '079903');