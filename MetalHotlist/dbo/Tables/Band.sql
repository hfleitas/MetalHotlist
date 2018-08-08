CREATE TABLE [dbo].[Band] (
    [BandId] INT           IDENTITY (1, 1) NOT NULL,
    [Band]   NVARCHAR (50) NULL,
    [Album]  NVARCHAR (50) NULL,
    PRIMARY KEY CLUSTERED ([BandId] ASC)
);

