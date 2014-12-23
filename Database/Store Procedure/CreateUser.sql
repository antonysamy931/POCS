CREATE PROCEDURE [DBO].[CreateUser]
(
	@firstName VARCHAR(50),
	@lastName VARCHAR(50),
	@userName VARCHAR(50),
	@password VARCHAR(MAX),
	@email VARCHAR(100),
	@createdBy int,
	@roleId int
)
AS
BEGIN
	DECLARE @USERID INT
	
	INSERT INTO [User] VALUES (@firstName,@lastName,@userName,
	@password,@email,1,@createdBy,GETDATE(),@createdBy,GETDATE(),1)
	
	SET @USERID = (SELECT SCOPE_IDENTITY())
	
	INSERT INTO [UserRole] VALUES (@USERID,@roleId,@createdBy,GETDATE(),@createdBy,GETDATE(),1)
END