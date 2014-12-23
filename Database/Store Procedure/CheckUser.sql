
CREATE PROCEDURE [dbo].[CheckUser]
(
	@username varchar(50),
	@password varchar(MAX)
)
AS
BEGIN

	SELECT U.ID FROM [User] AS U
	WHERE U.Username=@username 
	AND [Password]=@password 
	AND U.RecordStatus=1

END