alter procedure Pro_task

@fruit_name   varchar(20),
@price        int

AS
BEGIN


--create table fruit_table(id          int          primary key identity(1,1),
                  --      fruit_name   varchar(20), 
                    --    price        int); 
	  

	  
	  insert into fruit_table 
	  (fruit_name, price)
	  values(@fruit_name,@price) 
	  
	  end


	  exec pro_task @fruit_name= 'Apple' , @price= 20
	  


	  select * from fruit_table
	  
select concat([price], ',',[price]) as pp  from fruit_table
group by price




(
select fruit_name  ,price 
from fruit_table
)d

pivot
(
  max(price)
  for fruit_name in fruit_name,price)
) piv;