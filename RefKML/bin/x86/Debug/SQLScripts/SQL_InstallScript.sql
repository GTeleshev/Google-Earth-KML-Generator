GO
USE [master]
GO
/****** Object:  Database [DWH]    Script Date: 11/03/2011 11:51:16 ******/
IF EXISTS(SELECT name FROM sys.databases
     WHERE name = 'REFKML')
Begin
ALTER DATABASE [REFKML] SET  SINGLE_USER WITH ROLLBACK IMMEDIATE
DROP DATABASE [REFKML]
End

GO

USE [master]
GO

/****** Object:  Database [RefKML]    Script Date: 06/04/2012 12:55:22 ******/
CREATE DATABASE [RefKML] ON  PRIMARY 
( NAME = N'RefKML', FILENAME = N'D:\MSSQL\Data\RefKML.mdf' , SIZE = 2048KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'RefKML_log', FILENAME = N'D:\MSSQL\Data\RefKML_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO


IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [RefKML].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO

ALTER DATABASE [RefKML] SET ANSI_NULL_DEFAULT OFF 
GO

ALTER DATABASE [RefKML] SET ANSI_NULLS OFF 
GO

ALTER DATABASE [RefKML] SET ANSI_PADDING OFF 
GO

ALTER DATABASE [RefKML] SET ANSI_WARNINGS OFF 
GO

ALTER DATABASE [RefKML] SET ARITHABORT OFF 
GO

ALTER DATABASE [RefKML] SET AUTO_CLOSE OFF 
GO

ALTER DATABASE [RefKML] SET AUTO_CREATE_STATISTICS ON 
GO

ALTER DATABASE [RefKML] SET AUTO_SHRINK OFF 
GO

ALTER DATABASE [RefKML] SET AUTO_UPDATE_STATISTICS ON 
GO

ALTER DATABASE [RefKML] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO

ALTER DATABASE [RefKML] SET CURSOR_DEFAULT  GLOBAL 
GO

ALTER DATABASE [RefKML] SET CONCAT_NULL_YIELDS_NULL OFF 
GO

ALTER DATABASE [RefKML] SET NUMERIC_ROUNDABORT OFF 
GO

ALTER DATABASE [RefKML] SET QUOTED_IDENTIFIER OFF 
GO

ALTER DATABASE [RefKML] SET RECURSIVE_TRIGGERS OFF 
GO

ALTER DATABASE [RefKML] SET  DISABLE_BROKER 
GO

ALTER DATABASE [RefKML] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO

ALTER DATABASE [RefKML] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO

ALTER DATABASE [RefKML] SET TRUSTWORTHY OFF 
GO

ALTER DATABASE [RefKML] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO

ALTER DATABASE [RefKML] SET PARAMETERIZATION SIMPLE 
GO

ALTER DATABASE [RefKML] SET READ_COMMITTED_SNAPSHOT OFF 
GO

ALTER DATABASE [RefKML] SET  READ_WRITE 
GO

ALTER DATABASE [RefKML] SET RECOVERY SIMPLE 
GO

ALTER DATABASE [RefKML] SET  MULTI_USER 
GO

ALTER DATABASE [RefKML] SET PAGE_VERIFY CHECKSUM  
GO

ALTER DATABASE [RefKML] SET DB_CHAINING OFF 
GO

--Create View Case_AddressCoA
USE [PproGresInstanceName]
Go


IF EXISTS (SELECT TABLE_NAME FROM INFORMATION_SCHEMA.VIEWS WHERE TABLE_NAME='Case_AddressCoA') DROP view [Case_AddressCoA]

USE [PproGresInstanceName]
GO

/****** Object:  View [dbo].[Case_AddressCoA]    Script Date: 04/04/2012 17:36:40 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[Case_AddressCoA]
AS
SELECT     dbo.vIndividual.ProcessingGroupNumber, dbo.vdataAddressCOA.SiteIDOwner, dbo.vdataAddressCOA.AddressComments, 
                      dbo.vdataAddressCOA.AddressEmail, dbo.vdataAddressCOA.AddressPhone, dbo.vdataAddressCOA.LocationLevel6, 
                      dbo.vdataAddressCOA.LocationLevel5ID, dbo.vdataAddressCOA.LocationLevel4ID, dbo.vdataAddressCOA.LocationLevel3ID, 
                      dbo.vdataAddressCOA.LocationLevel2ID, dbo.vdataAddressCOA.LocationLevel1ID, dbo.vdataAddressCOA.LocationLevel5Description, 
                      dbo.vdataAddressCOA.LocationLevel4Description, dbo.vdataAddressCOA.LocationLevel3Description, 
                      dbo.vdataAddressCOA.LocationLevel2Description, dbo.vdataAddressCOA.LocationLevel1Description, dbo.vdataAddressCOA.AddressPostal, 
                      dbo.vdataAddressCOA.AddressCountry, dbo.vdataAddressCOA.AddressRegion, dbo.vdataAddressCOA.IamHereNow, 
                      dbo.vdataAddressCOA.ReportLocationCode, dbo.vdataAddressCOA.AddressType
FROM         dbo.vdataAddressCOA INNER JOIN
                      dbo.vIndividual ON dbo.vdataAddressCOA.IndividualGUID = dbo.vIndividual.IndividualGUID
WHERE     (dbo.vIndividual.RelationshipToPrincipalRepresentative = N'pa')

GO

EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[26] 4[20] 2[35] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "vdataAddressCOA"
            Begin Extent = 
               Top = 1
               Left = 344
               Bottom = 260
               Right = 612
            End
            DisplayFlags = 280
            TopColumn = 8
         End
         Begin Table = "vIndividual"
            Begin Extent = 
               Top = 10
               Left = 6
               Bottom = 322
               Right = 280
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 2295
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Case_AddressCoA'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Case_AddressCoA'
GO





USE [RefKML]
GO
/****** Object:  View [dbo].[dataviewConfigLocationLevel12_]    Script Date: 06/04/2012 12:54:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[dataviewConfigLocationLevel12_]
AS
SELECT     LocationLevel12ID, SiteID, LocationLevel1ID, LocationLevel2ID, LocationLevel2Description, LocationLevel2Active, UserIDCreate, CreateDate, 
                      UserIDUpdate, UpdateDate, SiteIDCreate, SiteIDUpdate, SiteIDOwner, OwnerDate, SiteIDReplicate
FROM         PproGresInstanceName.dbo.dataviewConfigLocationLevel12_
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "dataviewConfigLocationLevel12__1"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 121
               Right = 243
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'dataviewConfigLocationLevel12_'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'dataviewConfigLocationLevel12_'
GO
/****** Object:  View [dbo].[dataviewConfigLocationLevel1_]    Script Date: 06/04/2012 12:54:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[dataviewConfigLocationLevel1_]
AS
SELECT     LocationLevel1ID, SiteID, LocationLevel1Description, LocationLevel1Active, CountryCode, UserIDCreate, CreateDate, UserIDUpdate, UpdateDate, 
                      SiteIDCreate, SiteIDUpdate, SiteIDOwner, OwnerDate, SiteIDReplicate
FROM         PproGresInstanceName.dbo.dataviewConfigLocationLevel1_
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "dataviewConfigLocationLevel1_ (proGres.dbo)"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 121
               Right = 243
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'dataviewConfigLocationLevel1_'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'dataviewConfigLocationLevel1_'
GO


/****** Object:  View [dbo].[AllVIndividual]    Script Date: 06/04/2012 12:54:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[AllVIndividual]
AS
SELECT     ProcessingGroupTypeCode, ProcessingGroupNumber, ProcessingGroupLegacyID, CurrentRationCardNumber, ProcessingGroupFormNumber, 
                      ProcessingGroupFileNumber, ProcessingGroupSize, ProcessingGroupStatusCode, ProcessGroupStatusDate, ProcessingGroupRegistrationDate, 
                      IndividualSequenceNumber, PrincipalRepresentative, RelationshipToPrincipalRepresentative, RelationshipText, FamilyName, GivenName, 
                      ConcatenatedName, DateofBirth, DateofBirthEstimate, RegistrationDate, BirthCountryCode, BirthCityTownVillage, OriginCountryCode, NationalityCode, 
                      ArrivalDate, ArrivalDateEstimate, SexCode, IndividualAge, IndividualAgeCohortCode, ReligionCode, EthnicityText, OccupationText, MarriageStatusCode,
                       EducationLevelCode, NationalityCode2nd, Deceased, DeceasedDate, WillingToReturnCode, DepartureReasonCode, DepartureDate, 
                      DeRegistrationDate, DeRegistrationReasonCode, RefugeeStatusCode, RefugeeStatusDate, RefugeeStatusCategoryCode, RefugeeStatusCategoryDate, 
                      RefugeeStatusLegalBasisCode, RefugeeStatusLegalBasisDate, ProcessStatusCode, ProcessStatusDate, ProcessStatusReasonCode, 
                      ProcessStatusReasonDate, ProcessingGroupGUID, IndividualGUID, IndividualID, IndividualIDLegacy, SPNeeds, HasSPNeed, HasPhoto, HasAddress, 
                      HasIDDocument, ProcessingGroupComments, IndividualComments, LastEventID, EventShortName, LastEventEffectiveDate, pgUserIDCreate, 
                      pgCreateDate, pgUserIDUpdate, pgUpdateDate, UserIDCreate, CreateDate, UserIDUpdate, UpdateDate, SiteIDOwner, SiteIDCreate, SiteIDOwnerCreate, 
                      RegRsdOwner, SecondFamilyName, MiddleName, MaidenName, CommonlyUsedName, VerbalName, FledDate, FledDateEstimate, 
                      OccupationCode
FROM         PproGresInstanceName.dbo.Allvindividual
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "Allvindividual (proGres.dbo)"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 121
               Right = 302
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'AllVIndividual'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'AllVIndividual'
GO
/****** Object:  View [dbo].[AllCase_AddressCoA]    Script Date: 06/04/2012 12:54:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[AllCase_AddressCoA]
AS
SELECT     ProcessingGroupNumber, SiteIDOwner, AddressComments, AddressEmail, AddressPhone, LocationLevel6, LocationLevel5ID, LocationLevel4ID, 
                      LocationLevel3ID, LocationLevel2ID, LocationLevel1ID, LocationLevel5Description, LocationLevel4Description, LocationLevel3Description, 
                      LocationLevel2Description, LocationLevel1Description, AddressPostal, AddressCountry, AddressRegion, IamHereNow, ReportLocationCode, 
                      AddressType
FROM         PproGresInstanceName.dbo.AllCase_AddressCoA
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[22] 4[16] 2[15] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "AllCase_AddressCoA (proGres.dbo)"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 121
               Right = 243
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'AllCase_AddressCoA'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'AllCase_AddressCoA'
GO


/****** Object:  Table [dbo].[kml_TConfigLocation]    Script Date: 06/01/2012 14:59:41 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[kml_TConfigLocation](
	[LocationLevelID] [nvarchar](100) NOT NULL,
	[Country] [varchar](7) NOT NULL,
	[LocationLevel1Description] [nvarchar](4000) NULL,
	[LocationLevel2Description] [nvarchar](100) NOT NULL,
	[LocationLevel3Description] [nvarchar](100) NOT NULL,
	[LocationLevel4Description] [nvarchar](100) NOT NULL,
	[Longitude] [float] NULL,
	[Latitude] [float] NULL,
 CONSTRAINT [PK_kml_TConfigLocation] PRIMARY KEY CLUSTERED 
(
	[LocationLevelID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO





/****** Object:  View [dbo].[DataIndividual]    Script Date: 06/04/2012 12:54:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[DataIndividual]
AS
SELECT     IndividualGUID, IndividualID, IndividualIDLegacy, FamilyName, FamilyNamePhoneticID, FamilyNameAlternatePhoneticID, SecondFamilyName, 
                      SecondFamilyNamePhoneticID, SecondFamilyNameAlternatePhoneticID, GivenName, GivenNamePhoneticID, GivenNameAlternatePhoneticID, 
                      MiddleName, MaidenName, ConcatenatedName, ConcatenatedNamePhoneticID, ConcatenatedNameAlternatePhoneticID, CommonlyUsedName, 
                      CommonlyUsedNamePhoneticID, CommonlyUsedNameAlternatePhoneticID, ConcatenatedAlias, VerbalName, VerbalNamePhoneticID, 
                      VerbalNameAlternatePhoneticID, RegistrationDate, DateofBirth, DateofBirthEstimate, BirthCountryCode, BirthCityTownVillage, OriginCountryCode, 
                      Datasharing, FoodAssistanceEligible, FoodAssistanceEligibleAdditionalCriteria, InPolygamousRelationShip, AbleToSign, FledDate, FledDateEstimate, 
                      AsylumCountryCode, ArrivalDate, ArrivalDateEstimate, SexCode, IndividualAge, IndividualAgeCohortCode, NationalityCode, NationalityCode2nd, 
                      Deceased, DeceasedDate, RegistrationDataVerifiedDate, SourceOfRegistrationData, DeRegistrationDate, DeRegistrationReasonCode, 
                      RegistrationStatusCode, RegistrationStatusDate, RSDStatusCode, RSDStatusDate, PartnerRSDStatusCode, PartnerRSDStatusDate, 
                      AssistanceStatusCode, AssistanceStatusDate, ProtectionStatusCode, ProtectionStatusDate, DurableSolutionStatusCode, DurableSolutionStatusDate, 
                      ResettlementStatusCode, ResettlementStatusDate, VolRepStatusCode, VolRepStatusDate, LocalIntegrationStatusCode, LocalIntegrationStatusDate, 
                      MarriageStatusCode, MarriageDate, ReligionCode, EthnicityCode, EducationLevelCode, OccupationCode, DepartureReasonCode, DepartureDate, 
                      DepartureDateEstimated, ProcessStatusCode, ProcessStatusDate, ProcessStatusReasonCode, ProcessStatusReasonDate, RefugeeStatusCode, 
                      RefugeeStatusDate, RefugeeStatusCategoryCode, RefugeeStatusCategoryDate, RefugeeStatusLegalBasisCode, RefugeeStatusLegalBasisDate, 
                      PartnerRefugeeStatusCode, PartnerRefugeeStatusDate, PartnerRefugeeStatusCategoryCode, PartnerRefugeeStatusCategoryDate, 
                      PartnerRefugeeStatusLegalBasisCode, PartnerRefugeeStatusLegalBasisDate, FatherName, FatherBirthDate, FatherNationalityCode, FatherDeceased, 
                      MotherName, MotherBirthDate, MotherNationalityCode, MotherDeceased, SpouseName, SpouseBirthDate, SpouseNationalityCode, SpouseDeceased, 
                      Level1RegistrationGUID, InterviewerPreferenceSexCode, InterviewPreferenceLanguageCode, IndividualComments, SPNeeds, HasSPNeed, HasPhoto, 
                      HasAddress, HasIDDocument, IsAnyGroupPrincipalRepresentative, IsAnyGroupRepresentative, WillingToReturnCode, LastEventID, 
                      LastEventEffectiveDate, LastEventGUID, LastEventIsResult, RegRsdOwner, RegRsdOwnerDate, RegRsdUpdateDate, AstOwner, AstOwnerDate, 
                      AstUpdateDate, ProOwner, ProOwnerDate, ProUpdateDate, IntOwner, IntOwnerDate, IntUpdateDate, RstOwner, RstOwnerDate, RstUpdateDate, 
                      VolOwner, VolOwnerDate, VolUpdateDate, AddOwner, AddOwnerDate, AddUpdateDate, PasOwner, PasOwnerDate, PasUpdateDate, PrgOwner, 
                      PrgOwnerDate, PrgUpdateDate, PrsOwner, PrsOwnerDate, PrsUpdateDate, Ast2Owners, Ast2OwnersDate, TecUpdateDate, Archived, UserIDCreate, 
                      CreateDate, UserIDUpdate, UpdateDate, SiteIDCreate, SiteIDUpdate, SiteIDOwner, OwnerDate, SiteIDReplicate
FROM         PproGresInstanceName.dbo.dataIndividual
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[32] 4[29] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "dataIndividual (proGres.dbo)"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 121
               Right = 316
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'DataIndividual'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'DataIndividual'
GO
/****** Object:  View [dbo].[vIndividual]    Script Date: 06/04/2012 12:54:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vIndividual]
AS
SELECT     ProcessingGroupTypeCode, ProcessingGroupNumber, ProcessingGroupLegacyID, CurrentRationCardNumber, ProcessingGroupFormNumber, 
                      ProcessingGroupFileNumber, ProcessingGroupSize, ProcessingGroupStatusCode, ProcessGroupStatusDate, ProcessingGroupRegistrationDate, 
                      IndividualSequenceNumber, PrincipalRepresentative, RelationshipToPrincipalRepresentative, RelationshipText, FamilyName, GivenName, 
                      ConcatenatedName, DateofBirth, DateofBirthEstimate, RegistrationDate, BirthCountryCode, BirthCityTownVillage, OriginCountryCode, NationalityCode, 
                      ArrivalDate, ArrivalDateEstimate, SexCode, IndividualAge, IndividualAgeCohortCode, ReligionCode, EthnicityText, OccupationText, MarriageStatusCode,
                       EducationLevelCode, NationalityCode2nd, Deceased, DeceasedDate, WillingToReturnCode, DepartureReasonCode, DepartureDate, 
                      DeRegistrationDate, DeRegistrationReasonCode, RefugeeStatusCode, RefugeeStatusDate, RefugeeStatusCategoryCode, RefugeeStatusCategoryDate, 
                      RefugeeStatusLegalBasisCode, RefugeeStatusLegalBasisDate, ProcessStatusCode, ProcessStatusDate, ProcessStatusReasonCode, 
                      ProcessStatusReasonDate, ProcessingGroupGUID, IndividualGUID, IndividualID, IndividualIDLegacy, SPNeeds, HasSPNeed, HasPhoto, HasAddress, 
                      HasIDDocument, ProcessingGroupComments, IndividualComments, LastEventID, EventShortName, LastEventEffectiveDate, pgUserIDCreate, 
                      pgCreateDate, pgUserIDUpdate, pgUpdateDate, UserIDCreate, CreateDate, UserIDUpdate, UpdateDate, SiteIDOwner, SiteIDCreate, SiteIDOwnerCreate, 
                      RegRsdOwner, SecondFamilyName, MiddleName, MaidenName, CommonlyUsedName, VerbalName, FledDate, FledDateEstimate, 
                      OccupationCode
FROM         PproGresInstanceName.dbo.vIndividual
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "vIndividual (proGres.dbo)"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 121
               Right = 302
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vIndividual'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vIndividual'
GO
/****** Object:  View [dbo].[vdataAddressCOA]    Script Date: 06/04/2012 12:54:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vdataAddressCOA]
AS
SELECT     IndividualGUID, AddressType, ReportLocationCode, IamHereNow, AddressRegion, AddressCountry, AddressPostal, LocationLevel1Description, 
                      LocationLevel2Description, LocationLevel3Description, LocationLevel4Description, LocationLevel5Description, LocationLevel1ID, LocationLevel2ID, 
                      LocationLevel3ID, LocationLevel4ID, LocationLevel5ID, LocationLevel6, AddressPhone, AddressEmail, AddressComments, SiteIDOwner
FROM         PproGresInstanceName.dbo.vdataAddressCOA
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "vdataAddressCOA (proGres.dbo)"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 121
               Right = 243
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vdataAddressCOA'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vdataAddressCOA'
GO
/****** Object:  View [dbo].[dataviewConfigLocationLevel1234_]    Script Date: 06/04/2012 12:54:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[dataviewConfigLocationLevel1234_]
AS
SELECT     LocationLevel1234ID, SiteID, LocationLevel1ID, LocationLevel2ID, LocationLevel3ID, LocationLevel4ID, LocationLevel4Description, 
                      LocationLevel4Active, UserIDCreate, CreateDate, UserIDUpdate, UpdateDate, SiteIDCreate, SiteIDUpdate, SiteIDOwner, OwnerDate, 
                      SiteIDReplicate
FROM         PproGresInstanceName.dbo.dataviewConfigLocationLevel1234_
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "dataviewConfigLocationLevel1234_ (proGres.dbo)"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 237
               Right = 497
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'dataviewConfigLocationLevel1234_'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'dataviewConfigLocationLevel1234_'
GO
/****** Object:  View [dbo].[dataviewConfigLocationLevel123_]    Script Date: 06/04/2012 12:54:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[dataviewConfigLocationLevel123_]
AS
SELECT     LocationLevel123ID, SiteID, LocationLevel1ID, LocationLevel2ID, LocationLevel3ID, LocationLevel3Description, LocationLevel3Active, UserIDCreate, 
                      CreateDate, UserIDUpdate, UpdateDate, SiteIDCreate, SiteIDUpdate, SiteIDOwner, OwnerDate, SiteIDReplicate
FROM         PproGresInstanceName.dbo.dataviewConfigLocationLevel123_
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "dataviewConfigLocationLevel123__1"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 121
               Right = 243
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 10
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'dataviewConfigLocationLevel123_'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'dataviewConfigLocationLevel123_'
GO
/****** Object:  View [dbo].[kml_ConfigLocation_All]    Script Date: 06/04/2012 12:54:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[kml_ConfigLocation_All]
AS
SELECT     REPLACE(LocationLevel1ID, '_PK', '') AS LocationLevelID, 'Lebanon' AS Country, REPLACE(LocationLevel1Description, 'LE ', '') 
                      AS LocationLevel1Description, '' AS LocationLevel2Description, '' AS LocationLevel3Description, '' AS LocationLevel4Description
FROM         dbo.dataviewConfigLocationLevel1_
WHERE     (LocationLevel1ID LIKE 'LE%')
union 
SELECT     REPLACE(dbo.dataviewConfigLocationLevel12_.LocationLevel12ID, '_PK', '') AS LocationLevelID, 'Lebanon' AS Country, 
                      REPLACE(dbo.dataviewConfigLocationLevel1_.LocationLevel1Description, 'LE ', '') AS LocationLevel1Description, 
                      dbo.dataviewConfigLocationLevel12_.LocationLevel2Description, '' AS LocationLevel3Description, '' AS asLocationLevel4Description
FROM         dbo.dataviewConfigLocationLevel1_ INNER JOIN
                      dbo.dataviewConfigLocationLevel12_ ON 
                      dbo.dataviewConfigLocationLevel1_.LocationLevel1ID = dbo.dataviewConfigLocationLevel12_.LocationLevel1ID
WHERE     (dbo.dataviewConfigLocationLevel1_.LocationLevel1ID LIKE 'LE%')
union
SELECT     REPLACE(dbo.dataviewConfigLocationLevel123_.LocationLevel123ID, '_PK', '') AS LocationLevelID, 'Lebanon' AS Country, 
                      REPLACE(dbo.dataviewConfigLocationLevel1_.LocationLevel1Description, 'LE ', '') AS LocationLevel1Description, 
                      dbo.dataviewConfigLocationLevel12_.LocationLevel2Description, dbo.dataviewConfigLocationLevel123_.LocationLevel3Description, 
                      '' AS LocationLevel4Description
FROM         dbo.dataviewConfigLocationLevel1_ INNER JOIN
                      dbo.dataviewConfigLocationLevel12_ ON 
                      dbo.dataviewConfigLocationLevel1_.LocationLevel1ID = dbo.dataviewConfigLocationLevel12_.LocationLevel1ID INNER JOIN
                      dbo.dataviewConfigLocationLevel123_ ON 
                      dbo.dataviewConfigLocationLevel1_.LocationLevel1ID = dbo.dataviewConfigLocationLevel123_.LocationLevel1ID AND 
                      dbo.dataviewConfigLocationLevel12_.LocationLevel2ID = dbo.dataviewConfigLocationLevel123_.LocationLevel2ID
WHERE     (dbo.dataviewConfigLocationLevel1_.LocationLevel1ID LIKE 'LE%')
union
SELECT     REPLACE(dbo.dataviewConfigLocationLevel1234_.LocationLevel1234ID, '_PK', '') AS LocationLevelID, 'Lebanon' AS Country, 
                      REPLACE(dbo.dataviewConfigLocationLevel1_.LocationLevel1Description, 'LE ', '') AS LocationLevel1Description, 
                      dbo.dataviewConfigLocationLevel12_.LocationLevel2Description, dbo.dataviewConfigLocationLevel123_.LocationLevel3Description, 
                      dbo.dataviewConfigLocationLevel1234_.LocationLevel4Description
FROM         dbo.dataviewConfigLocationLevel1_ INNER JOIN
                      dbo.dataviewConfigLocationLevel12_ ON 
                      dbo.dataviewConfigLocationLevel1_.LocationLevel1ID = dbo.dataviewConfigLocationLevel12_.LocationLevel1ID INNER JOIN
                      dbo.dataviewConfigLocationLevel123_ ON 
                      dbo.dataviewConfigLocationLevel1_.LocationLevel1ID = dbo.dataviewConfigLocationLevel123_.LocationLevel1ID AND 
                      dbo.dataviewConfigLocationLevel12_.LocationLevel2ID = dbo.dataviewConfigLocationLevel123_.LocationLevel2ID INNER JOIN
                      dbo.dataviewConfigLocationLevel1234_ ON 
                      dbo.dataviewConfigLocationLevel1_.LocationLevel1ID = dbo.dataviewConfigLocationLevel1234_.LocationLevel1ID AND 
                      dbo.dataviewConfigLocationLevel12_.LocationLevel2ID = dbo.dataviewConfigLocationLevel1234_.LocationLevel2ID AND 
                      dbo.dataviewConfigLocationLevel123_.LocationLevel3ID = dbo.dataviewConfigLocationLevel1234_.LocationLevel3ID
WHERE     (dbo.dataviewConfigLocationLevel1_.LocationLevel1ID LIKE 'LE%')
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[20] 4[25] 2[37] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'kml_ConfigLocation_All'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'kml_ConfigLocation_All'
GO
/****** Object:  View [dbo].[v_forKml]    Script Date: 06/04/2012 12:54:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[v_forKml]
AS
SELECT     CASE WHEN dbo.kml_TConfigLocation.LocationLevelID IS NULL THEN '000000' ELSE dbo.kml_TConfigLocation.LocationLevelID END AS Expr1, 
                      CASE WHEN dbo.AllCase_AddressCoA.LocationLevel4Description IS NULL 
                      THEN 'Village Location Not Defined' ELSE dbo.AllCase_AddressCoA.LocationLevel4Description END AS Location, 
                      CASE WHEN dbo.kml_TConfigLocation.Longitude IS NULL THEN '35' ELSE dbo.kml_TConfigLocation.Longitude END AS Longitude, 
                      CASE WHEN dbo.kml_TConfigLocation.Latitude IS NULL THEN '35' ELSE dbo.kml_TConfigLocation.Latitude END AS Latitude, 
                      SUM(CASE WHEN dbo.AllVindividual.RelationshipToPrincipalRepresentative = 'pa' THEN 1 ELSE 0 END) AS Cases, COUNT(dbo.AllVindividual.IndividualID) 
                      AS Persons, SUM(CASE WHEN dbo.AllVindividual.sexcode = 'F' THEN 1 ELSE 0 END) AS Female, 
                      SUM(CASE WHEN dbo.AllVindividual.sexcode = 'M' THEN 1 ELSE 0 END) AS Male, SUM(CASE WHEN dbo.AllVindividual.sexcode = 'F' AND 
                      dbo.AllVindividual.IndividualAge BETWEEN 0 AND 4 THEN 1 ELSE 0 END) AS F0_4, SUM(CASE WHEN dbo.AllVindividual.sexcode = 'F' AND 
                      dbo.AllVindividual.IndividualAge BETWEEN 5 AND 11 THEN 1 ELSE 0 END) AS F5_11, SUM(CASE WHEN dbo.AllVindividual.sexcode = 'F' AND 
                      dbo.AllVindividual.IndividualAge BETWEEN 12 AND 17 THEN 1 ELSE 0 END) AS F12_17, SUM(CASE WHEN dbo.AllVindividual.sexcode = 'F' AND 
                      dbo.AllVindividual.IndividualAge BETWEEN 18 AND 59 THEN 1 ELSE 0 END) AS F18_59, SUM(CASE WHEN dbo.AllVindividual.sexcode = 'F' AND 
                      dbo.AllVindividual.IndividualAge > 59 THEN 1 ELSE 0 END) AS F60_plus, SUM(CASE WHEN dbo.AllVindividual.sexcode = 'M' AND 
                      dbo.AllVindividual.IndividualAge BETWEEN 0 AND 4 THEN 1 ELSE 0 END) AS M0_4, SUM(CASE WHEN dbo.AllVindividual.sexcode = 'M' AND 
                      dbo.AllVindividual.IndividualAge BETWEEN 5 AND 11 THEN 1 ELSE 0 END) AS M5_11, SUM(CASE WHEN dbo.AllVindividual.sexcode = 'M' AND 
                      dbo.AllVindividual.IndividualAge BETWEEN 12 AND 17 THEN 1 ELSE 0 END) AS M12_17, SUM(CASE WHEN dbo.AllVindividual.sexcode = 'M' AND 
                      dbo.AllVindividual.IndividualAge BETWEEN 18 AND 59 THEN 1 ELSE 0 END) AS M18_59, SUM(CASE WHEN dbo.AllVindividual.sexcode = 'M' AND 
                      dbo.AllVindividual.IndividualAge > 59 THEN 1 ELSE 0 END) AS M60_plus, NULL AS Description
FROM         dbo.AllVindividual INNER JOIN
                      dbo.AllCase_AddressCoA ON dbo.AllVindividual.ProcessingGroupNumber = dbo.AllCase_AddressCoA.ProcessingGroupNumber LEFT OUTER JOIN
                      dbo.kml_TConfigLocation ON dbo.AllCase_AddressCoA.LocationLevel4ID = dbo.kml_TConfigLocation.LocationLevelID
WHERE     dbo.AllVindividual.ProcessStatusCode = N'a' 
and dbo.AllVindividual.OriginCountryCode like N'%syr%' 
and dbo.AllVindividual.ReligionCode like N'%%%'

GROUP BY dbo.kml_TConfigLocation.Longitude, dbo.kml_TConfigLocation.Latitude, dbo.AllCase_AddressCoA.LocationLevel4Description, 
                  dbo.kml_TConfigLocation.LocationLevelID
GO
/****** Object:  View [dbo].[Case_AddressCoA]    Script Date: 06/04/2012 12:54:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Case_AddressCoA]
AS
SELECT     dbo.vIndividual.ProcessingGroupNumber, dbo.vdataAddressCOA.SiteIDOwner, dbo.vdataAddressCOA.AddressComments, 
                      dbo.vdataAddressCOA.AddressEmail, dbo.vdataAddressCOA.AddressPhone, dbo.vdataAddressCOA.LocationLevel6, 
                      dbo.vdataAddressCOA.LocationLevel5ID, dbo.vdataAddressCOA.LocationLevel4ID, dbo.vdataAddressCOA.LocationLevel3ID, 
                      dbo.vdataAddressCOA.LocationLevel2ID, dbo.vdataAddressCOA.LocationLevel1ID, dbo.vdataAddressCOA.LocationLevel5Description, 
                      dbo.vdataAddressCOA.LocationLevel4Description, dbo.vdataAddressCOA.LocationLevel3Description, 
                      dbo.vdataAddressCOA.LocationLevel2Description, dbo.vdataAddressCOA.LocationLevel1Description, dbo.vdataAddressCOA.AddressPostal, 
                      dbo.vdataAddressCOA.AddressCountry, dbo.vdataAddressCOA.AddressRegion, dbo.vdataAddressCOA.IamHereNow, 
                      dbo.vdataAddressCOA.ReportLocationCode, dbo.vdataAddressCOA.AddressType
FROM         dbo.vdataAddressCOA INNER JOIN
                      dbo.vIndividual ON dbo.vdataAddressCOA.IndividualGUID = dbo.vIndividual.IndividualGUID
WHERE     (dbo.vIndividual.RelationshipToPrincipalRepresentative = N'pa')
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[26] 4[20] 2[35] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "vdataAddressCOA"
            Begin Extent = 
               Top = 1
               Left = 344
               Bottom = 260
               Right = 612
            End
            DisplayFlags = 280
            TopColumn = 8
         End
         Begin Table = "vIndividual"
            Begin Extent = 
               Top = 10
               Left = 6
               Bottom = 322
               Right = 280
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 2295
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Case_AddressCoA'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Case_AddressCoA'
GO


CREATE LOGIN RefKmlDBUser WITH PASSWORD = 'refkml@1234'
USE [PproGresInstanceName];
GO
CREATE USER RefKmlDBUser FOR LOGIN RefKmlDBUser;
GRANT VIEW DEFINITION ON schema::dbo TO RefKmlDBUser
EXEC sp_addrolemember N'db_datareader', N'RefKmlDBUser'

GO

USE proGresLebM1;
GO
CREATE USER RefKmlDBUser FOR LOGIN RefKmlDBUser;
GRANT VIEW DEFINITION ON schema::dbo TO RefKmlDBUser
EXEC sp_addrolemember N'db_datareader', N'RefKmlDBUser'
GO

USE proGresLebM2;
GO
CREATE USER RefKmlDBUser FOR LOGIN RefKmlDBUser;
GRANT VIEW DEFINITION ON schema::dbo TO RefKmlDBUser
EXEC sp_addrolemember N'db_datareader', N'RefKmlDBUser'
GO


USE [RefKML]
GO
CREATE USER [RefKmlDBUser] FOR LOGIN [RefKmlDBUser]
GO
USE [RefKML]
GO
EXEC sp_addrolemember N'db_owner', N'RefKmlDBUser'
GO


