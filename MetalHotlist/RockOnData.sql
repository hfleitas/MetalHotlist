/*
Post-Deployment Script Template							
--------------------------------------------------------------------------------------
 This file contains SQL statements that will be appended to the build script.		
 Use SQLCMD syntax to include a file in the post-deployment script.			
 Example:      :r .\myfile.sql								
 Use SQLCMD syntax to reference a variable in the post-deployment script.		
 Example:      :setvar TableName MyTable							
               SELECT * FROM [$(TableName)]					
--------------------------------------------------------------------------------------
*/
merge into RockOn as Target 
using (values 
	(1),  
	(2), 
	(3), 
	(4), 
	(5), 
	(6), 
	(7), 
	(8), 
	(9),
	(10),
	(11)
) 
as Source (id) 
on Target.id = Source.id 

-- update matched rows, update other columns that need static values.
when matched then 
update set id = Source.id 

-- insert new rows 
when not matched by Target then
insert (id) 
values (id) 

-- delete rows that are in the target but not the source 
when not matched by Source then 
delete;
