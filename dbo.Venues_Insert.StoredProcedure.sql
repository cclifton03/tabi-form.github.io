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

/* Test Code -----------------------------------------------------
		Declare @Id int = 0;

		Declare @Name nvarchar(255) = 'Reliant Stadium'
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
