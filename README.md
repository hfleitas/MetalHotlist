# MetalHotlist
## Database Source Control - A music sample.

Usually when I demo this, I edit the definition of the procs by changing a data type to deploy.


## Description

The database project in this repo was created using Visual Studio. The project target is set to SQL Server 2019 but can be configured for Azure SQL DB, among other options of SQL in Azure. This sample repo includes an example of source control for data (ie. master data, settings, lookup table, etc). 

In this repo, source control for data is being applied in 2 ways. First, by using a post-deployment script, this setting can be observed in the project file [MetalHotlist.sqlproj](/MetalHotlist/MetalHotlist.sqlproj#L79-L80) (lines 79-80). Second, by the contents & logic used in the post-deployment script itself. In this example, I use the T-SQL [merge](https://learn.microsoft.com/sql/t-sql/statements/merge-transact-sql) statement to process the values in the _Target_ table wether they exist, have been changed or are missing in comparison to the _Source_ table in the script itself. However, other methods can be used depending on your needs. ie. truncate/insert with identity set to on, powershell [copy-dbadbtabledata](http://docs.dbatools.io/Copy-DbaDbTableData), etc. 

Generally, I don't recommend trying to manage data of many lookup tables using this method or for tables with more than few houndred rows. But, for a few settings or config tables with less than 100s of rows each this could be used. 


## Additional Resources
- http://aka.ms/azuredbemulator
