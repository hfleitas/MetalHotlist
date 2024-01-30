# MetalHotlist
Database Source Control - A music sample.

Usually when I demo this, I edit the definition of the procs by changing a data type to deploy.

The database project in this repo was created using Visual Studio. The project target is set to SQL Server 2019 but can be configured for Azure SQL DB, among other options of SQL in Azure. This sample repo includes an example of source control for data (ie. master data, settings, lookup table, etc). In this repo, source control for data is being applied in 2 ways. First, by using a post-deployment script, this setting can be observed in the project file MetalHotlist.sqlproj (line #). Second, by the contents & logic used in the post-deployment script itself. In this example, I use the TSQL merge statement, but other methods can be used depending on your needs. ie. truncate/insert with identity set to on, powershell [copy-dbadbtabledata](http://docs.dbatools.io/Copy-DbaDbTableData), etc. 


## Additional Resources
- http://aka.ms/azuredbemulator
