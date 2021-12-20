USE [ODS]
GO
SET IDENTITY_INSERT [ODS].[dbo].[ManheimLocationAddresses] ON
Insert into [ODS].[dbo].[ManheimLocationAddresses]
                 	 (ManheimAddressesId
					 ,LocationName
				 ,LocationAddress
				 ,DataSource
				 ,CreatedDatetime
				 ,CreatedBy
				 ,ModifiedDatetime
				 ,ModifiedBy
				 ,Retired
				 ,RetiredDatetime
				 ,AuctionCode
				 ,AuctionName
				 ,AuctionStateCode
) values((Select max([VerticalId])+1 from [ODS].[dm].[vertical])
		,'Manheim Iowa'
		  ,'723 SW 8th Street'
		  ,'Location tables'
		  ,getdate()
		  ,suser_name()
		  ,getdate()
		  ,suser_name()
		  ,0
		  ,NULL
		  ,'IOWA'
		  ,'MANHEIM IOWA'
		  ,'IA');

GO

SET IDENTITY_INSERT [ODS].[dbo].[ManheimLocationAddresses] OFF