DECLARE 
   @Id int,
   @Name nvarchar(60)
  
DECLARE s1 CURSOR FOR 
	              SELECT Id, [Name] FROM tblEmployee; 
	OPEN s1; 
	FETCH Next from s1 INTO @ID,@Name
		While(@@FETCH_STATUS =0)
		BEGIN
			print 'Id=' +Cast(@Id As Nvarchar(10) )+( 'Name='+@Name)
			FETCH NEXT FROM s1 into @Id,@Name
		END 
	CLOSE s1