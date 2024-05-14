USE [Tabi]
GO
/****** Object:  StoredProcedure [dbo].[Venues_Update]    Script Date: 4/25/2024 5:19:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- ==================================
--	Author: CJ Clifton
--	Create date: 04/04/2024
--	Description: Used to update data in a specific row using the Id 
--	Code Reviewer: Blake R

--	Modified by: N/A
--	Modified date: N/A
--	Code Reviewer: N/A
--	Note: N/A
-- ===================================

CREATE proc [dbo].[Venues_Update]
				@Name nvarchar(255)
				,@Description nvarchar(4000)
				,@LocationId int
				,@VenueTypeId int
				,@FileId int
				,@Url  nvarchar(255)
				,@ModifiedBy int
				,@Id int

as

/* TEST CODE ----------------
			Select *
			From dbo.Venues

			Declare 
				@Name nvarchar(255) = 'PostMan45454545'
				,@Description nvarchar(4000) = 'UpdatedInSQL'
				,@LocationId int = 1
				,@VenueTypeId int = 2
				,@FileId int = 32
				,@Url  nvarchar(255) = 'www.updatedurl'
				,@ModifiedBy int = 1
				,@Id int = 3

			Execute dbo.Venues_Update
				@Name
				,@Description
				,@LocationId
				,@VenueTypeId
				,@FileId
				,@Url
				,@ModifiedBy
				,@Id

			Select *
			From dbo.Venues
*/

BEGIN

				UPDATE [dbo].[Venues]
				   SET [Name] = @Name
					  ,[Description] = @Description
					  ,[LocationId] = @LocationId
					  ,[VenueTypeId] = @VenueTypeId
					  ,[FileId] = @FileId
					  ,[Url] = @Url
					  ,[ModifiedBy] = @ModifiedBy
					  ,[DateModified] = GETUTCDATE()
				 WHERE @Id = Id


END
GO
