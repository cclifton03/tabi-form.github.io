CREATE TABLE [dbo].[Venues](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](255) NOT NULL,
	[Description] [nvarchar](4000) NOT NULL,
	[LocationId] [int] NOT NULL,
	[VenueTypeId] [int] NOT NULL,
	[FileId] [int] NOT NULL,
	[Url] [nvarchar](255) NOT NULL,
	[Createdby] [int] NOT NULL,
	[ModifiedBy] [int] NOT NULL,
	[DateCreated] [datetime2](7) NOT NULL,
	[DateModified] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_Venues] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Venues] ADD  CONSTRAINT [DF_Venues_DateCreated]  DEFAULT (getutcdate()) FOR [DateCreated]
GO
ALTER TABLE [dbo].[Venues] ADD  CONSTRAINT [DF_Venues_DateModified]  DEFAULT (getutcdate()) FOR [DateModified]
GO
ALTER TABLE [dbo].[Venues]  WITH CHECK ADD  CONSTRAINT [FK_Venues_Files] FOREIGN KEY([FileId])
REFERENCES [dbo].[Files] ([Id])
GO
ALTER TABLE [dbo].[Venues] CHECK CONSTRAINT [FK_Venues_Files]
GO
ALTER TABLE [dbo].[Venues]  WITH CHECK ADD  CONSTRAINT [FK_Venues_Locations] FOREIGN KEY([LocationId])
REFERENCES [dbo].[Locations] ([Id])
GO
ALTER TABLE [dbo].[Venues] CHECK CONSTRAINT [FK_Venues_Locations]
GO
ALTER TABLE [dbo].[Venues]  WITH CHECK ADD  CONSTRAINT [FK_Venues_Users] FOREIGN KEY([ModifiedBy])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[Venues] CHECK CONSTRAINT [FK_Venues_Users]
GO
ALTER TABLE [dbo].[Venues]  WITH CHECK ADD  CONSTRAINT [FK_Venues_Users1] FOREIGN KEY([Createdby])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[Venues] CHECK CONSTRAINT [FK_Venues_Users1]
GO
ALTER TABLE [dbo].[Venues]  WITH CHECK ADD  CONSTRAINT [FK_Venues_VenueTypes] FOREIGN KEY([VenueTypeId])
REFERENCES [dbo].[VenueTypes] ([Id])
GO
ALTER TABLE [dbo].[Venues] CHECK CONSTRAINT [FK_Venues_VenueTypes]
GO
