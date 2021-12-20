---Insert Script for Manheim Rochester 
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
          ,'Manheim Rochester'
		  ,'20 Cairn St'
		  ,'Location tables'
		  ,getdate()
		  ,suser_name()
		  ,getdate()
		  ,suser_name()
		  ,0
		  ,NULL
		  ,'MROC'
		  ,'MANHEIM ROCHESTER'
		  ,'NY');

GO

SET IDENTITY_INSERT [ODS].[dbo].[ManheimLocationAddresses] OFF

