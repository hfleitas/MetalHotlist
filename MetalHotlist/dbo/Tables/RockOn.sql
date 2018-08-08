CREATE TABLE [dbo].[RockOn] (
    [id] INT NULL
);


GO
CREATE CLUSTERED COLUMNSTORE INDEX [cidx_Loud]
    ON [dbo].[RockOn];

