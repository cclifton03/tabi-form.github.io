USE [Tabi]
GO
/****** Object:  StoredProcedure [dbo].[Venues_Insert]    Script Date: 4/25/2024 5:19:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- ==================================
--	Author: CJ Clifton
--	Create date: 04/04/2024
--	Description: Used to insert(Add) data into the Venues table
--	Code Reviewer: Blake R

--	Modified by: N/A
--	Modified date: N/A
--	Code Reviewer: N/A
--	Note: N/A
-- ===================================

CREATE proc [dbo].[Venues_Insert]
				@Name nvarchar(255)
				,@Description nvarchar(4000)
				,@LocationId int
				,@VenueTypeId int
				,@FileId int
				,@Url  nvarchar(255)
				,@CreatedBy int
				,@ModifiedBy int
				,@Id int OUTPUT

as

/*
		Declare @Id int = 0;

		Declare @Name nvarchar(255) = 'Reliant Stadiumaasdfadf'
				,@Description nvarchar(4000) = 'Long description goes here'
				,@LocationId int = 1
				,@VenueTypeId int = 3
				,@FileId int = 32
				,@Url  nvarchar(255) = 'https://www.mlb.com/yankees/ballpark'
				,@CreatedBy int = 47
				,@ModifiedBy int = 47

		Execute dbo.Venues_Insert
				@Name
				,@Description
				,@LocationId
				,@VenueTypeId
				,@FileId
				,@Url
				,@CreatedBy
				,@ModifiedBy
				,@Id

		Select *
		From dbo.Venues
*/

BEGIN


	INSERT INTO [dbo].[Venues]
           ([Name]
           ,[Description]
           ,[LocationId]
           ,[VenueTypeId]
           ,[FileId]
           ,[Url]
           ,[Createdby]
           ,[ModifiedBy])

	 VALUES
           (@Name
           ,@Description
           ,@LocationId
           ,@VenueTypeId
           ,@FileId
           ,@Url
           ,@CreatedBy
           ,@ModifiedBy)

	Set @Id = SCOPE_IDENTITY()
END
GO
