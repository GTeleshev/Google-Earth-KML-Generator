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

/***/


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
/****** Object:  END View [dbo].[Case_AddressCoA]  ******/




USE [master]
GO
/****** Object:  Login [RefKmlDBUser]    Script Date: 07/06/2012 15:46:04 ******/
If Exists (select loginname from master.dbo.syslogins 
    where name = 'RefKmlDBUser' and dbname = 'master')
DROP LOGIN [RefKmlDBUser]
GO

CREATE LOGIN RefKmlDBUser WITH PASSWORD = 'refkml@1234'


USE [PproGresInstanceName]
GO

If Exists (select * from sys.sysusers where name='RefKmlDBUser')
DROP USER [RefKmlDBUser]
GO
USE [PproGresInstanceName]
CREATE USER RefKmlDBUser FOR LOGIN RefKmlDBUser;
GRANT VIEW DEFINITION ON schema::dbo TO RefKmlDBUser
EXEC sp_addrolemember N'db_datareader', N'RefKmlDBUser'

GO

--USE proGresLebM1;
--GO
--CREATE USER RefKmlDBUser FOR LOGIN RefKmlDBUser;
--GRANT VIEW DEFINITION ON schema::dbo TO RefKmlDBUser
--EXEC sp_addrolemember N'db_datareader', N'RefKmlDBUser'
--GO

--USE proGresLebM2;
--GO
--CREATE USER RefKmlDBUser FOR LOGIN RefKmlDBUser;
--GRANT VIEW DEFINITION ON schema::dbo TO RefKmlDBUser
--EXEC sp_addrolemember N'db_datareader', N'RefKmlDBUser'
--GO


USE [RefKML]
GO
If Exists (select * from sys.sysusers where name='RefKmlDBUser')
DROP user [RefKmlDBUser]
GO
CREATE USER [RefKmlDBUser] FOR LOGIN [RefKmlDBUser]
GO
USE [RefKML]
GO
EXEC sp_addrolemember N'db_owner', N'RefKmlDBUser'
GO


