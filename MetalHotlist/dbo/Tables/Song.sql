CREATE TABLE [dbo].[Song] (
    [SongId] INT IDENTITY (1, 1) NOT NULL,
    [BandId] INT NULL,
    [Cost]   INT NULL,
    FOREIGN KEY ([BandId]) REFERENCES [dbo].[Band] ([BandId])
);


GO
CREATE CLUSTERED COLUMNSTORE INDEX [max_Bass]
    ON [dbo].[Song];

