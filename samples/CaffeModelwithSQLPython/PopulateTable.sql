truncate table [dbo].[PlaceImages]

SELECT TOP (1000) *
  FROM [ImagesDB].[dbo].[PlaceImages]

INSERT INTO [dbo].[PlaceImages]
           (
           [ImagePath]
           ,[ImageRaw]
		   )
	SELECT
        'C:\demo\models\images\new-york-skyline.jpg'
        ,*
	FROM OPENROWSET(BULK N'C:\demo\models\images\new-york-skyline.jpg', SINGLE_BLOB) AS ImageData

INSERT INTO [dbo].[PlaceImages]
           (
           [ImagePath]
           ,[ImageRaw]
		   )
	SELECT
        'C:\demo\models\images\golden-gate-bridge.jpg'
        ,*
	FROM OPENROWSET(BULK N'C:\demo\models\images\golden-gate-bridge.jpg', SINGLE_BLOB) AS ImageData

INSERT INTO [dbo].[PlaceImages]
           (
           [ImagePath]
           ,[ImageRaw]
		   )
	SELECT
        'C:\demo\models\images\microsoft-west-campus.jpg'
        ,*
	FROM OPENROWSET(BULK N'C:\demo\models\images\microsoft-west-campus.jpg', SINGLE_BLOB) AS ImageData

INSERT INTO [dbo].[PlaceImages]
           (
           [ImagePath]
           ,[ImageRaw]
		   )
	SELECT
        'C:\demo\models\images\fall_color.jpg'
        ,*
	FROM OPENROWSET(BULK N'C:\demo\models\images\fall_color.jpg', SINGLE_BLOB) AS ImageData

SELECT TOP 100 *
  FROM [dbo].[PlaceImages]

EXEC dbo.usp_ImagesDB_detect_places;

SELECT TOP 100 *
  FROM [dbo].[PlaceImages]