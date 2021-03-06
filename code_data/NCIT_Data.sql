USE [master]
GO
/****** Object:  Database [NCIT]    Script Date: 7/25/2018 12:18:41 PM ******/
CREATE DATABASE [NCIT]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'NCIT', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\NCIT.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'NCIT_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\NCIT_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [NCIT] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [NCIT].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [NCIT] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [NCIT] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [NCIT] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [NCIT] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [NCIT] SET ARITHABORT OFF 
GO
ALTER DATABASE [NCIT] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [NCIT] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [NCIT] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [NCIT] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [NCIT] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [NCIT] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [NCIT] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [NCIT] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [NCIT] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [NCIT] SET  DISABLE_BROKER 
GO
ALTER DATABASE [NCIT] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [NCIT] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [NCIT] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [NCIT] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [NCIT] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [NCIT] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [NCIT] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [NCIT] SET RECOVERY FULL 
GO
ALTER DATABASE [NCIT] SET  MULTI_USER 
GO
ALTER DATABASE [NCIT] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [NCIT] SET DB_CHAINING OFF 
GO
ALTER DATABASE [NCIT] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [NCIT] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [NCIT] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'NCIT', N'ON'
GO
USE [NCIT]
GO
/****** Object:  Table [dbo].[NCI_Trials]    Script Date: 7/25/2018 12:18:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[NCI_Trials](
	[nci_id] [varchar](50) NOT NULL,
	[nct_id] [varchar](50) NULL,
	[id] [varchar](50) NULL,
	[inclusion_indicaInclusionor] [varchar](100) NULL,
	[description] [varchar](1000) NULL,
 CONSTRAINT [PK_NCI_Trials] PRIMARY KEY CLUSTERED 
(
	[nci_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[NCIT_Details]    Script Date: 7/25/2018 12:18:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[NCIT_Details](
	[NCI_ID] [varchar](50) NULL,
	[Text] [varchar](1000) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[NCITInfo]    Script Date: 7/25/2018 12:18:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[NCITInfo](
	[NCIT#] [varchar](max) NOT NULL,
	[ID#] [int] NOT NULL,
	[IncExclusion] [char](10) NOT NULL,
	[Criteria] [varchar](max) NOT NULL,
	[Operator] [varchar](max) NOT NULL,
	[Value] [varchar](max) NOT NULL,
	[Units] [int] NOT NULL,
	[Percentage] [int] NOT NULL,
	[Volume] [int] NOT NULL,
	[Parent#] [int] NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[NCI_Trials] ([nci_id], [nct_id], [id], [inclusion_indicaInclusionor], [description]) VALUES (N'NCI-2009-00336', N'NCT00392327', N'', N'Inclusion', N'"Platelets >= 100,000/uL (untransfused)"')
INSERT [dbo].[NCI_Trials] ([nci_id], [nct_id], [id], [inclusion_indicaInclusionor], [description]) VALUES (N'NCI-2009-00470', N'NCT00632853', N'', N'N/A', N'')
INSERT [dbo].[NCI_Trials] ([nci_id], [nct_id], [id], [inclusion_indicaInclusionor], [description]) VALUES (N'NCI-2009-00595', N'NCT00719303', N'', N'N/A', N'')
INSERT [dbo].[NCI_Trials] ([nci_id], [nct_id], [id], [inclusion_indicaInclusionor], [description]) VALUES (N'NCI-2009-00603', N'NCT00492778', N'', N'Inclusion', N'"Platelets >= 100,000/mm^3"')
INSERT [dbo].[NCI_Trials] ([nci_id], [nct_id], [id], [inclusion_indicaInclusionor], [description]) VALUES (N'NCI-2009-00817', N'NCT00001337', N'', N'Inclusion', N'"Platelets > 100,000 unless impairment is due to lymphoma or immune-mediated mechanism caused by lymphoma"')
INSERT [dbo].[NCI_Trials] ([nci_id], [nct_id], [id], [inclusion_indicaInclusionor], [description]) VALUES (N'NCI-2009-01057', N'NCT00576654', N'', N'Inclusion', N'"Platelets (PLT) >= 100,000/mcL"')
INSERT [dbo].[NCI_Trials] ([nci_id], [nct_id], [id], [inclusion_indicaInclusionor], [description]) VALUES (N'NCI-2011-00312', N'NCT01012817', N'', N'Inclusion', N'"Platelets >= 100,000/mcL"')
INSERT [dbo].[NCI_Trials] ([nci_id], [nct_id], [id], [inclusion_indicaInclusionor], [description]) VALUES (N'NCI-2011-00878', N'NCT00956007', N'', N'N/A', N'')
INSERT [dbo].[NCI_Trials] ([nci_id], [nct_id], [id], [inclusion_indicaInclusionor], [description]) VALUES (N'NCI-2011-01915', N'NCT00887146', N'', N'N/A', N'')
INSERT [dbo].[NCI_Trials] ([nci_id], [nct_id], [id], [inclusion_indicaInclusionor], [description]) VALUES (N'NCI-2011-01972', N'NCT00983697', N'', N'N/A', N'')
INSERT [dbo].[NCI_Trials] ([nci_id], [nct_id], [id], [inclusion_indicaInclusionor], [description]) VALUES (N'NCI-2011-01973', N'NCT00980954', N'', N'Inclusion', N'"Platelets >= 100,000 cells/mm^3"')
INSERT [dbo].[NCI_Trials] ([nci_id], [nct_id], [id], [inclusion_indicaInclusionor], [description]) VALUES (N'NCI-2011-01974', N'NCT00981656', N'', N'Inclusion', N'"Platelets >= 100,000 cells/mm^3"')
INSERT [dbo].[NCI_Trials] ([nci_id], [nct_id], [id], [inclusion_indicaInclusionor], [description]) VALUES (N'NCI-2011-01975', N'NCT00980460', N'', N'N/A', N'')
INSERT [dbo].[NCI_Trials] ([nci_id], [nct_id], [id], [inclusion_indicaInclusionor], [description]) VALUES (N'NCI-2011-01987', N'NCT01013649', N'', N'Inclusion', N'"Platelets >= 100,000/mm^3"')
INSERT [dbo].[NCI_Trials] ([nci_id], [nct_id], [id], [inclusion_indicaInclusionor], [description]) VALUES (N'NCI-2011-01992', N'NCT02085408', N'', N'N/A', N'')
INSERT [dbo].[NCI_Trials] ([nci_id], [nct_id], [id], [inclusion_indicaInclusionor], [description]) VALUES (N'NCI-2011-02000', N'NCT01042522', N'', N'N/A', N'')
INSERT [dbo].[NCI_Trials] ([nci_id], [nct_id], [id], [inclusion_indicaInclusionor], [description]) VALUES (N'NCI-2011-02029', N'NCT01096368', N'', N'N/A', N'')
INSERT [dbo].[NCI_Trials] ([nci_id], [nct_id], [id], [inclusion_indicaInclusionor], [description]) VALUES (N'NCI-2011-02034', N'NCT01118026', N'', N'N/A', N'')
INSERT [dbo].[NCI_Trials] ([nci_id], [nct_id], [id], [inclusion_indicaInclusionor], [description]) VALUES (N'NCI-2011-02037', N'NCT01101451', N'', N'Inclusion', N'"Platelets â‰¥ 100,000/mcl"')
INSERT [dbo].[NCI_Trials] ([nci_id], [nct_id], [id], [inclusion_indicaInclusionor], [description]) VALUES (N'NCI-2011-02073', N'NCT02589938', N'', N'N/A', N'')
INSERT [dbo].[NCI_Trials] ([nci_id], [nct_id], [id], [inclusion_indicaInclusionor], [description]) VALUES (N'NCI-2011-02500', N'NCT01366144', N'', N'Inclusion', N'"Platelets >= 100,000/mcL"')
INSERT [dbo].[NCI_Trials] ([nci_id], [nct_id], [id], [inclusion_indicaInclusionor], [description]) VALUES (N'NCI-2011-02515', N'NCT01051635', N'', N'N/A', N'')
INSERT [dbo].[NCI_Trials] ([nci_id], [nct_id], [id], [inclusion_indicaInclusionor], [description]) VALUES (N'NCI-2011-02539', N'NCT01226940', N'', N'Inclusion', N'"Platelets >= 100,000/mcL"')
INSERT [dbo].[NCI_Trials] ([nci_id], [nct_id], [id], [inclusion_indicaInclusionor], [description]) VALUES (N'NCI-2011-02592', N'NCT01386385', N'', N'Inclusion', N'" Platelets >= 100,000/mcl"')
INSERT [dbo].[NCI_Trials] ([nci_id], [nct_id], [id], [inclusion_indicaInclusionor], [description]) VALUES (N'NCI-2011-02594', N'NCT01381718', N'', N'N/A', N'')
INSERT [dbo].[NCI_Trials] ([nci_id], [nct_id], [id], [inclusion_indicaInclusionor], [description]) VALUES (N'NCI-2011-02599', N'NCT01190930', N'', N'N/A', N'')
INSERT [dbo].[NCI_Trials] ([nci_id], [nct_id], [id], [inclusion_indicaInclusionor], [description]) VALUES (N'NCI-2011-02611', N'NCT01231906', N'', N'N/A', N'')
INSERT [dbo].[NCI_Trials] ([nci_id], [nct_id], [id], [inclusion_indicaInclusionor], [description]) VALUES (N'NCI-2011-02623', N'NCT01272037', N'', N'N/A', N'')
INSERT [dbo].[NCI_Trials] ([nci_id], [nct_id], [id], [inclusion_indicaInclusionor], [description]) VALUES (N'NCI-2011-02660', N'NCT01275664', N'', N'N/A', N'')
INSERT [dbo].[NCI_Trials] ([nci_id], [nct_id], [id], [inclusion_indicaInclusionor], [description]) VALUES (N'NCI-2011-02673', N'NCT01359592', N'', N'N/A', N'')
INSERT [dbo].[NCI_Trials] ([nci_id], [nct_id], [id], [inclusion_indicaInclusionor], [description]) VALUES (N'NCI-2011-02674', N'NCT01368588', N'', N'Inclusion', N'"Platelets >= 100,000/mmÂ³"')
INSERT [dbo].[NCI_Trials] ([nci_id], [nct_id], [id], [inclusion_indicaInclusionor], [description]) VALUES (N'NCI-2011-03458', N'NCT01434316', N'', N'Inclusion', N'"Platelets >= 100,000/mm^3"')
INSERT [dbo].[NCI_Trials] ([nci_id], [nct_id], [id], [inclusion_indicaInclusionor], [description]) VALUES (N'NCI-2011-03797', N'NCT02883049', N'', N'N/A', N'')
INSERT [dbo].[NCI_Trials] ([nci_id], [nct_id], [id], [inclusion_indicaInclusionor], [description]) VALUES (N'NCI-2012-00095', N'NCT01497444', N'', N'N/A', N'')
INSERT [dbo].[NCI_Trials] ([nci_id], [nct_id], [id], [inclusion_indicaInclusionor], [description]) VALUES (N'NCI-2012-00105', N'NCT01503632', N'', N'N/A', N'')
INSERT [dbo].[NCI_Trials] ([nci_id], [nct_id], [id], [inclusion_indicaInclusionor], [description]) VALUES (N'NCI-2012-00112', N'NCT01503086', N'', N'N/A', N'')
INSERT [dbo].[NCI_Trials] ([nci_id], [nct_id], [id], [inclusion_indicaInclusionor], [description]) VALUES (N'NCI-2012-00234', N'NCT01515787', N'', N'N/A', N'')
INSERT [dbo].[NCI_Trials] ([nci_id], [nct_id], [id], [inclusion_indicaInclusionor], [description]) VALUES (N'NCI-2012-00680', N'NCT01333046', N'', N'N/A', N'')
INSERT [dbo].[NCI_Trials] ([nci_id], [nct_id], [id], [inclusion_indicaInclusionor], [description]) VALUES (N'NCI-2012-00707', N'NCT01556243', N'', N'N/A', N'')
INSERT [dbo].[NCI_Trials] ([nci_id], [nct_id], [id], [inclusion_indicaInclusionor], [description]) VALUES (N'NCI-2012-00719', N'NCT01573442', N'', N'N/A', N'')
INSERT [dbo].[NCI_Trials] ([nci_id], [nct_id], [id], [inclusion_indicaInclusionor], [description]) VALUES (N'NCI-2012-00860', N'NCT01587352', N'', N'Inclusion', N'"Platelets >= 100,000/mcL"')
INSERT [dbo].[NCI_Trials] ([nci_id], [nct_id], [id], [inclusion_indicaInclusionor], [description]) VALUES (N'NCI-2012-00864', N'NCT01585805', N'', N'Inclusion', N'"Platelets >= 100,000/mcL"')
INSERT [dbo].[NCI_Trials] ([nci_id], [nct_id], [id], [inclusion_indicaInclusionor], [description]) VALUES (N'NCI-2012-01040', N'NCT01638533', N'', N'Inclusion', N'Platelets >= 100 x 10^9/L (or platelet count >= 30 Ã— 10^9 cells/L in patients with lymphoma or CLL if bone marrow disease involvement is documented)')
INSERT [dbo].[NCI_Trials] ([nci_id], [nct_id], [id], [inclusion_indicaInclusionor], [description]) VALUES (N'NCI-2012-01695', N'NCT01775475', N'', N'Inclusion', N'"Platelets >= 100,000 cells/uL (75 x 10^9 L);"')
INSERT [dbo].[NCI_Trials] ([nci_id], [nct_id], [id], [inclusion_indicaInclusionor], [description]) VALUES (N'NCI-2012-01712', N'NCT01695941', N'', N'Inclusion', N'"Platelets >= 75,000/mcL or >= 50,000/mcL with documented bone marrow involvement"')
INSERT [dbo].[NCI_Trials] ([nci_id], [nct_id], [id], [inclusion_indicaInclusionor], [description]) VALUES (N'NCI-2012-01964', N'NCT01595061', N'', N'Inclusion', N'"Platelets >= 100,000/mcl"')
INSERT [dbo].[NCI_Trials] ([nci_id], [nct_id], [id], [inclusion_indicaInclusionor], [description]) VALUES (N'NCI-2012-01967', N'NCT01602666', N'', N'N/A', N'')
INSERT [dbo].[NCI_Trials] ([nci_id], [nct_id], [id], [inclusion_indicaInclusionor], [description]) VALUES (N'NCI-2012-01977', N'NCT01622868', N'', N'Inclusion', N'"Platelets >= 70,000 cells/mm^3"')
INSERT [dbo].[NCI_Trials] ([nci_id], [nct_id], [id], [inclusion_indicaInclusionor], [description]) VALUES (N'NCI-2012-01990', N'NCT01649089', N'', N'N/A', N'')
INSERT [dbo].[NCI_Trials] ([nci_id], [nct_id], [id], [inclusion_indicaInclusionor], [description]) VALUES (N'NCI-2012-01995', N'NCT01674140', N'', N'Inclusion', N'"Platelet count >= 100,000/mL"')
INSERT [dbo].[NCI_Trials] ([nci_id], [nct_id], [id], [inclusion_indicaInclusionor], [description]) VALUES (N'NCI-2012-01998', N'NCT01668719', N'', N'Inclusion', N'"Platelet count >= 70,000 cells/mm^3 for patients who have bone marrow plasmacytosis < 50%; or >= 50,000 cells/mm^3 for patients who have bone marrow plasmacytosis of >= 50%"')
INSERT [dbo].[NCI_Trials] ([nci_id], [nct_id], [id], [inclusion_indicaInclusionor], [description]) VALUES (N'NCI-2012-02009', N'NCT01711541', N'', N'Inclusion', N'"Platelets >= 100,000/mm^3"')
INSERT [dbo].[NCI_Trials] ([nci_id], [nct_id], [id], [inclusion_indicaInclusionor], [description]) VALUES (N'NCI-2012-02011', N'NCT01711554', N'', N'N/A', N'')
INSERT [dbo].[NCI_Trials] ([nci_id], [nct_id], [id], [inclusion_indicaInclusionor], [description]) VALUES (N'NCI-2012-02020', N'NCT01781468', N'', N'N/A', N'')
INSERT [dbo].[NCI_Trials] ([nci_id], [nct_id], [id], [inclusion_indicaInclusionor], [description]) VALUES (N'NCI-2012-02045', N'NCT01805076', N'', N'N/A', N'')
INSERT [dbo].[NCI_Trials] ([nci_id], [nct_id], [id], [inclusion_indicaInclusionor], [description]) VALUES (N'NCI-2012-02057', N'NCT01730937', N'', N'Inclusion', N'"Platelets >= 70,000 cells/mm^3"')
INSERT [dbo].[NCI_Trials] ([nci_id], [nct_id], [id], [inclusion_indicaInclusionor], [description]) VALUES (N'NCI-2012-02067', N'NCT01349881', N'', N'Inclusion', N'"Platelets >= 100,000/mcL"')
INSERT [dbo].[NCI_Trials] ([nci_id], [nct_id], [id], [inclusion_indicaInclusionor], [description]) VALUES (N'NCI-2012-02078', N'NCT01789684', N'', N'N/A', N'')
INSERT [dbo].[NCI_Trials] ([nci_id], [nct_id], [id], [inclusion_indicaInclusionor], [description]) VALUES (N'NCI-2012-02608', N'NCT01863550', N'', N'N/A', N'')
INSERT [dbo].[NCI_Trials] ([nci_id], [nct_id], [id], [inclusion_indicaInclusionor], [description]) VALUES (N'NCI-2012-02767', N'NCT01749397', N'', N'Inclusion', N'"Platelets (PLT) >= 100,000/mm^3"')
INSERT [dbo].[NCI_Trials] ([nci_id], [nct_id], [id], [inclusion_indicaInclusionor], [description]) VALUES (N'NCI-2012-02869', N'NCT01806129', N'', N'N/A', N'')
INSERT [dbo].[NCI_Trials] ([nci_id], [nct_id], [id], [inclusion_indicaInclusionor], [description]) VALUES (N'NCI-2012-02875', N'NCT01586403', N'', N'N/A', N'')
INSERT [dbo].[NCI_Trials] ([nci_id], [nct_id], [id], [inclusion_indicaInclusionor], [description]) VALUES (N'NCI-2012-03124', N'NCT01755195', N'', N'Inclusion', N'"Platelets >= 100,000/mcL"')
INSERT [dbo].[NCI_Trials] ([nci_id], [nct_id], [id], [inclusion_indicaInclusionor], [description]) VALUES (N'NCI-2012-03125', N'NCT01767194', N'', N'N/A', N'')
INSERT [dbo].[NCI_Trials] ([nci_id], [nct_id], [id], [inclusion_indicaInclusionor], [description]) VALUES (N'NCI-2012-03173', N'NCT01089101', N'', N'Inclusion', N'"Platelets >= 100,000/L (unsupported)"')
INSERT [dbo].[NCI_Trials] ([nci_id], [nct_id], [id], [inclusion_indicaInclusionor], [description]) VALUES (N'NCI-2012-03198', N'NCT01872975', N'', N'N/A', N'')
INSERT [dbo].[NCI_Trials] ([nci_id], [nct_id], [id], [inclusion_indicaInclusionor], [description]) VALUES (N'NCI-2013-00046', N'NCT01771107', N'', N'Inclusion', N'"Platelets >= 75,000/uL unless related to bone marrow involvement by HIV-cHL"')
INSERT [dbo].[NCI_Trials] ([nci_id], [nct_id], [id], [inclusion_indicaInclusionor], [description]) VALUES (N'NCI-2013-00370', N'NCT01220583', N'', N'Inclusion', N'"Platelets >= 100,000 cells/mm^3"')
INSERT [dbo].[NCI_Trials] ([nci_id], [nct_id], [id], [inclusion_indicaInclusionor], [description]) VALUES (N'NCI-2013-00426', N'NCT01824836', N'', N'N/A', N'')
INSERT [dbo].[NCI_Trials] ([nci_id], [nct_id], [id], [inclusion_indicaInclusionor], [description]) VALUES (N'NCI-2013-00500', N'NCT01810913', N'', N'Inclusion', N'"Platelets >= 100,000 cells/mm^3"')
INSERT [dbo].[NCI_Trials] ([nci_id], [nct_id], [id], [inclusion_indicaInclusionor], [description]) VALUES (N'NCI-2013-00595', N'NCT01817075', N'', N'N/A', N'')
INSERT [dbo].[NCI_Trials] ([nci_id], [nct_id], [id], [inclusion_indicaInclusionor], [description]) VALUES (N'NCI-2013-00716', N'NCT00978250', N'', N'Inclusion', N'"Platelets >= 100,000/mcL"')
INSERT [dbo].[NCI_Trials] ([nci_id], [nct_id], [id], [inclusion_indicaInclusionor], [description]) VALUES (N'NCI-2013-00737', N'NCT01822496', N'', N'Inclusion', N'"Platelets >= 100,000 cells/mm^3"')
INSERT [dbo].[NCI_Trials] ([nci_id], [nct_id], [id], [inclusion_indicaInclusionor], [description]) VALUES (N'NCI-2013-00739', N'NCT01822509', N'', N'N/A', N'')
INSERT [dbo].[NCI_Trials] ([nci_id], [nct_id], [id], [inclusion_indicaInclusionor], [description]) VALUES (N'NCI-2013-00740', N'NCT01822522', N'', N'Inclusion', N'"Platelets >= 100,000/mcL"')
INSERT [dbo].[NCI_Trials] ([nci_id], [nct_id], [id], [inclusion_indicaInclusionor], [description]) VALUES (N'NCI-2013-00805', N'NCT01244737', N'', N'N/A', N'')
INSERT [dbo].[NCI_Trials] ([nci_id], [nct_id], [id], [inclusion_indicaInclusionor], [description]) VALUES (N'NCI-2013-00826', N'NCT01841723', N'', N'N/A', N'')
INSERT [dbo].[NCI_Trials] ([nci_id], [nct_id], [id], [inclusion_indicaInclusionor], [description]) VALUES (N'NCI-2013-00858', N'NCT01849146', N'', N'Inclusion', N'"Platelets >= 100,000/mcL"')
INSERT [dbo].[NCI_Trials] ([nci_id], [nct_id], [id], [inclusion_indicaInclusionor], [description]) VALUES (N'NCI-2013-00875', N'NCT01901094', N'', N'N/A', N'')
INSERT [dbo].[NCI_Trials] ([nci_id], [nct_id], [id], [inclusion_indicaInclusionor], [description]) VALUES (N'NCI-2013-00877', N'NCT01851369', N'', N'Inclusion', N'"Platelets >= 100,000/mcL"')
INSERT [dbo].[NCI_Trials] ([nci_id], [nct_id], [id], [inclusion_indicaInclusionor], [description]) VALUES (N'NCI-2013-00890', N'NCT01935934', N'', N'Inclusion', N'Platelets >= 100 x 10^9/L')
INSERT [dbo].[NCI_Trials] ([nci_id], [nct_id], [id], [inclusion_indicaInclusionor], [description]) VALUES (N'NCI-2013-00998', N'NCT01881867', N'', N'Inclusion', N'"Platelets >= 100,000/mcL"')
INSERT [dbo].[NCI_Trials] ([nci_id], [nct_id], [id], [inclusion_indicaInclusionor], [description]) VALUES (N'NCI-2013-01132', N'NCT01534598', N'', N'Inclusion', N'"Platelets >= 100,000/mcL"')
INSERT [dbo].[NCI_Trials] ([nci_id], [nct_id], [id], [inclusion_indicaInclusionor], [description]) VALUES (N'NCI-2013-01272', N'NCT01897012', N'', N'Inclusion', N'"Platelets >= 75,000/mcL"')
INSERT [dbo].[NCI_Trials] ([nci_id], [nct_id], [id], [inclusion_indicaInclusionor], [description]) VALUES (N'NCI-2013-01275', N'NCT01896999', N'', N'Inclusion', N'"PHASE I: Platelets >= 75,000/mcL (75 x 10^9/L)"')
INSERT [dbo].[NCI_Trials] ([nci_id], [nct_id], [id], [inclusion_indicaInclusionor], [description]) VALUES (N'NCI-2013-01320', N'NCT01902173', N'', N'Inclusion', N'"Platelets >= 100,000/ul"')
INSERT [dbo].[NCI_Trials] ([nci_id], [nct_id], [id], [inclusion_indicaInclusionor], [description]) VALUES (N'NCI-2013-01340', N'NCT01953588', N'', N'N/A', N'')
INSERT [dbo].[NCI_Trials] ([nci_id], [nct_id], [id], [inclusion_indicaInclusionor], [description]) VALUES (N'NCI-2013-01357', N'NCT01912625', N'', N'Inclusion', N'Platelets >= 100 x 10^9/L')
INSERT [dbo].[NCI_Trials] ([nci_id], [nct_id], [id], [inclusion_indicaInclusionor], [description]) VALUES (N'NCI-2013-01368', N'NCT01925131', N'', N'N/A', N'')
INSERT [dbo].[NCI_Trials] ([nci_id], [nct_id], [id], [inclusion_indicaInclusionor], [description]) VALUES (N'NCI-2013-01452', N'NCT00942877', N'', N'Inclusion', N'"Platelets >= 100,000/mcL"')
INSERT [dbo].[NCI_Trials] ([nci_id], [nct_id], [id], [inclusion_indicaInclusionor], [description]) VALUES (N'NCI-2013-01474', N'NCT01273155', N'', N'Inclusion', N'"Platelets >= 100,000/mcL"')
INSERT [dbo].[NCI_Trials] ([nci_id], [nct_id], [id], [inclusion_indicaInclusionor], [description]) VALUES (N'NCI-2013-01475', N'NCT01273168', N'', N'Inclusion', N'"Platelets >= 100,000/uL"')
INSERT [dbo].[NCI_Trials] ([nci_id], [nct_id], [id], [inclusion_indicaInclusionor], [description]) VALUES (N'NCI-2013-01491', N'NCT01362803', N'', N'Inclusion', N'"Platelets >= 100,000/ul"')
INSERT [dbo].[NCI_Trials] ([nci_id], [nct_id], [id], [inclusion_indicaInclusionor], [description]) VALUES (N'NCI-2013-01496', N'NCT01391962', N'', N'Inclusion', N'"Platelets >= 100,000/mcL"')
INSERT [dbo].[NCI_Trials] ([nci_id], [nct_id], [id], [inclusion_indicaInclusionor], [description]) VALUES (N'NCI-2013-01520', N'NCT01572493', N'', N'Inclusion', N'"Platelets >= 100,000/mm^3"')
INSERT [dbo].[NCI_Trials] ([nci_id], [nct_id], [id], [inclusion_indicaInclusionor], [description]) VALUES (N'NCI-2013-01568', N'NCT01748825', N'', N'Inclusion', N'"Platelets >= 100,000/mcL"')
INSERT [dbo].[NCI_Trials] ([nci_id], [nct_id], [id], [inclusion_indicaInclusionor], [description]) VALUES (N'NCI-2013-01588', N'NCT01827384', N'', N'Inclusion', N'"TUMOR BIOPSY SEQUENCING: Platelets >= 100,000/uL (mcL)"')
INSERT [dbo].[NCI_Trials] ([nci_id], [nct_id], [id], [inclusion_indicaInclusionor], [description]) VALUES (N'NCI-2013-01602', N'NCT01922076', N'', N'N/A', N'')
INSERT [dbo].[NCI_Trials] ([nci_id], [nct_id], [id], [inclusion_indicaInclusionor], [description]) VALUES (N'NCI-2013-01639', N'NCT01964300', N'', N'Inclusion', N'"Platelets >= 100,000/ul (unsupported)"')
INSERT [dbo].[NCI_Trials] ([nci_id], [nct_id], [id], [inclusion_indicaInclusionor], [description]) VALUES (N'NCI-2013-01702', N'NCT02004275', N'', N'N/A', N'')
GO
INSERT [dbo].[NCI_Trials] ([nci_id], [nct_id], [id], [inclusion_indicaInclusionor], [description]) VALUES (N'NCI-2013-01703', N'NCT01940809', N'', N'Inclusion', N'Platelets >= 100 x 10^9/L')
INSERT [dbo].[NCI_Trials] ([nci_id], [nct_id], [id], [inclusion_indicaInclusionor], [description]) VALUES (N'NCI-2013-01748', N'NCT01947023', N'', N'Inclusion', N'"Platelets >= 100 x 10^9/L, within 2 weeks of the first dose of study treatment"')
INSERT [dbo].[NCI_Trials] ([nci_id], [nct_id], [id], [inclusion_indicaInclusionor], [description]) VALUES (N'NCI-2013-01760', N'NCT01988571', N'', N'N/A', N'')
INSERT [dbo].[NCI_Trials] ([nci_id], [nct_id], [id], [inclusion_indicaInclusionor], [description]) VALUES (N'NCI-2013-01850', N'NCT01993810', N'', N'Inclusion', N'"Platelets >= 100,000 cells/mm^3"')
INSERT [dbo].[NCI_Trials] ([nci_id], [nct_id], [id], [inclusion_indicaInclusionor], [description]) VALUES (N'NCI-2013-01904', N'NCT02054741', N'', N'N/A', N'')
INSERT [dbo].[NCI_Trials] ([nci_id], [nct_id], [id], [inclusion_indicaInclusionor], [description]) VALUES (N'NCI-2013-01999', N'NCT01946789', N'', N'Inclusion', N'"Platelets >= 100,000/mcL (without transfusion)"')
INSERT [dbo].[NCI_Trials] ([nci_id], [nct_id], [id], [inclusion_indicaInclusionor], [description]) VALUES (N'NCI-2013-02103', N'NCT01989585', N'', N'Inclusion', N'"Platelets >= 100,000/mcL"')
INSERT [dbo].[NCI_Trials] ([nci_id], [nct_id], [id], [inclusion_indicaInclusionor], [description]) VALUES (N'NCI-2013-02167', N'NCT01979536', N'', N'N/A', N'')
INSERT [dbo].[NCI_Trials] ([nci_id], [nct_id], [id], [inclusion_indicaInclusionor], [description]) VALUES (N'NCI-2013-02229', N'NCT02003222', N'', N'N/A', N'')
INSERT [dbo].[NCI_Trials] ([nci_id], [nct_id], [id], [inclusion_indicaInclusionor], [description]) VALUES (N'NCI-2013-02238', N'NCT01896869', N'', N'Inclusion', N'Platelets >= 90 x 10^3/uL')
INSERT [dbo].[NCI_Trials] ([nci_id], [nct_id], [id], [inclusion_indicaInclusionor], [description]) VALUES (N'NCI-2013-02284', N'NCT02065687', N'', N'Inclusion', N'"Platelets greater than or equal to 100,000/mcl"')
INSERT [dbo].[NCI_Trials] ([nci_id], [nct_id], [id], [inclusion_indicaInclusionor], [description]) VALUES (N'NCI-2013-02288', N'NCT02059499', N'', N'N/A', N'')
INSERT [dbo].[NCI_Trials] ([nci_id], [nct_id], [id], [inclusion_indicaInclusionor], [description]) VALUES (N'NCI-2013-02426', N'NCT02029950', N'', N'N/A', N'')
INSERT [dbo].[NCI_Trials] ([nci_id], [nct_id], [id], [inclusion_indicaInclusionor], [description]) VALUES (N'NCI-2014-00115', N'NCT02015104', N'', N'Inclusion', N'"Platelets >= 50,000/mcL"')
INSERT [dbo].[NCI_Trials] ([nci_id], [nct_id], [id], [inclusion_indicaInclusionor], [description]) VALUES (N'NCI-2014-00416', N'NCT02070549', N'', N'Inclusion', N'Platelets >= 75 x 10^9/L')
INSERT [dbo].[NCI_Trials] ([nci_id], [nct_id], [id], [inclusion_indicaInclusionor], [description]) VALUES (N'NCI-2014-00461', N'NCT02079740', N'', N'Inclusion', N'Platelets >= 100 x 10^9/L')
INSERT [dbo].[NCI_Trials] ([nci_id], [nct_id], [id], [inclusion_indicaInclusionor], [description]) VALUES (N'NCI-2014-00547', N'NCT02095132', N'', N'N/A', N'')
INSERT [dbo].[NCI_Trials] ([nci_id], [nct_id], [id], [inclusion_indicaInclusionor], [description]) VALUES (N'NCI-2014-00615', N'NCT02097225', N'', N'Inclusion', N'"Platelets >= 100,000/mcL"')
INSERT [dbo].[NCI_Trials] ([nci_id], [nct_id], [id], [inclusion_indicaInclusionor], [description]) VALUES (N'NCI-2014-00616', N'NCT02152982', N'', N'Inclusion', N'"Platelets >= 100,000 cells/mm^3 within 14 days prior to study registration"')
INSERT [dbo].[NCI_Trials] ([nci_id], [nct_id], [id], [inclusion_indicaInclusionor], [description]) VALUES (N'NCI-2014-00620', N'NCT02101775', N'', N'Inclusion', N'"Platelets >= 100,000/mcL"')
INSERT [dbo].[NCI_Trials] ([nci_id], [nct_id], [id], [inclusion_indicaInclusionor], [description]) VALUES (N'NCI-2014-00623', N'NCT02143726', N'', N'N/A', N'')
INSERT [dbo].[NCI_Trials] ([nci_id], [nct_id], [id], [inclusion_indicaInclusionor], [description]) VALUES (N'NCI-2014-00627', N'NCT02154490', N'', N'N/A', N'')
INSERT [dbo].[NCI_Trials] ([nci_id], [nct_id], [id], [inclusion_indicaInclusionor], [description]) VALUES (N'NCI-2014-00629', N'NCT02101788', N'', N'N/A', N'')
INSERT [dbo].[NCI_Trials] ([nci_id], [nct_id], [id], [inclusion_indicaInclusionor], [description]) VALUES (N'NCI-2014-00631', N'NCT02101853', N'', N'N/A', N'')
INSERT [dbo].[NCI_Trials] ([nci_id], [nct_id], [id], [inclusion_indicaInclusionor], [description]) VALUES (N'NCI-2014-00634', N'NCT02101905', N'', N'Inclusion', N'"Platelets >= 100,000/mcL"')
INSERT [dbo].[NCI_Trials] ([nci_id], [nct_id], [id], [inclusion_indicaInclusionor], [description]) VALUES (N'NCI-2014-00635', N'NCT02135042', N'', N'Inclusion', N'"Platelets >= 100,000 cells/mm^3"')
INSERT [dbo].[NCI_Trials] ([nci_id], [nct_id], [id], [inclusion_indicaInclusionor], [description]) VALUES (N'NCI-2014-00636', N'NCT02135419', N'', N'Inclusion', N'"Platelets: >= 75,000/mm^3"')
INSERT [dbo].[NCI_Trials] ([nci_id], [nct_id], [id], [inclusion_indicaInclusionor], [description]) VALUES (N'NCI-2014-00640', N'NCT02255461', N'', N'Inclusion', N'"Platelets >= 100,000/mm^3 transfusion independent (no platelet transfusion one week prior to enrollment)"')
INSERT [dbo].[NCI_Trials] ([nci_id], [nct_id], [id], [inclusion_indicaInclusionor], [description]) VALUES (N'NCI-2014-00643', N'NCT02101944', N'', N'N/A', N'')
INSERT [dbo].[NCI_Trials] ([nci_id], [nct_id], [id], [inclusion_indicaInclusionor], [description]) VALUES (N'NCI-2014-00644', N'NCT02032823', N'', N'N/A', N'')
INSERT [dbo].[NCI_Trials] ([nci_id], [nct_id], [id], [inclusion_indicaInclusionor], [description]) VALUES (N'NCI-2014-00677', N'NCT02176967', N'', N'N/A', N'')
INSERT [dbo].[NCI_Trials] ([nci_id], [nct_id], [id], [inclusion_indicaInclusionor], [description]) VALUES (N'NCI-2014-00686', N'NCT02152137', N'', N'N/A', N'')
INSERT [dbo].[NCI_Trials] ([nci_id], [nct_id], [id], [inclusion_indicaInclusionor], [description]) VALUES (N'NCI-2014-00688', N'NCT02379416', N'', N'Inclusion', N'"Platelets >= 100,000/mcL"')
INSERT [dbo].[NCI_Trials] ([nci_id], [nct_id], [id], [inclusion_indicaInclusionor], [description]) VALUES (N'NCI-2014-00702', N'NCT02206334', N'', N'Inclusion', N'"Platelets >= 50,000 /mm^3"')
INSERT [dbo].[NCI_Trials] ([nci_id], [nct_id], [id], [inclusion_indicaInclusionor], [description]) VALUES (N'NCI-2014-00712', N'NCT02112916', N'', N'N/A', N'')
INSERT [dbo].[NCI_Trials] ([nci_id], [nct_id], [id], [inclusion_indicaInclusionor], [description]) VALUES (N'NCI-2014-00746', N'NCT02115282', N'', N'N/A', N'')
INSERT [dbo].[NCI_Trials] ([nci_id], [nct_id], [id], [inclusion_indicaInclusionor], [description]) VALUES (N'NCI-2014-00804', N'NCT02116777', N'', N'N/A', N'')
INSERT [dbo].[NCI_Trials] ([nci_id], [nct_id], [id], [inclusion_indicaInclusionor], [description]) VALUES (N'NCI-2014-00816', N'NCT02211755', N'', N'Inclusion', N'"Platelets >= 100,000/mcL"')
INSERT [dbo].[NCI_Trials] ([nci_id], [nct_id], [id], [inclusion_indicaInclusionor], [description]) VALUES (N'NCI-2014-00849', N'NCT02200042', N'', N'Inclusion', N'"Platelets >= 100,000 cells/mm^3"')
INSERT [dbo].[NCI_Trials] ([nci_id], [nct_id], [id], [inclusion_indicaInclusionor], [description]) VALUES (N'NCI-2014-00850', N'NCT02177695', N'', N'Inclusion', N'"Platelets >= 100,000/mcL"')
INSERT [dbo].[NCI_Trials] ([nci_id], [nct_id], [id], [inclusion_indicaInclusionor], [description]) VALUES (N'NCI-2014-00852', N'NCT02190279', N'', N'N/A', N'')
INSERT [dbo].[NCI_Trials] ([nci_id], [nct_id], [id], [inclusion_indicaInclusionor], [description]) VALUES (N'NCI-2014-00907', N'NCT02133183', N'', N'Inclusion', N'"Platelets >= 100,000/mcL"')
INSERT [dbo].[NCI_Trials] ([nci_id], [nct_id], [id], [inclusion_indicaInclusionor], [description]) VALUES (N'NCI-2014-01028', N'NCT02249949', N'', N'N/A', N'')
INSERT [dbo].[NCI_Trials] ([nci_id], [nct_id], [id], [inclusion_indicaInclusionor], [description]) VALUES (N'NCI-2014-01043', N'NCT02143401', N'', N'Inclusion', N'"Platelets >= 100,000/mm^3"')
INSERT [dbo].[NCI_Trials] ([nci_id], [nct_id], [id], [inclusion_indicaInclusionor], [description]) VALUES (N'NCI-2014-01047', N'NCT02143414', N'', N'Inclusion', N'"Platelets >= 50,000/mcl within 28 days prior to registration"')
INSERT [dbo].[NCI_Trials] ([nci_id], [nct_id], [id], [inclusion_indicaInclusionor], [description]) VALUES (N'NCI-2014-01072', N'NCT02179086', N'', N'Inclusion', N'"Platelets >= 100,000 cells/mm^3"')
INSERT [dbo].[NCI_Trials] ([nci_id], [nct_id], [id], [inclusion_indicaInclusionor], [description]) VALUES (N'NCI-2014-01106', N'NCT02152995', N'', N'Inclusion', N'Platelets >= 100 x 10^9/L')
INSERT [dbo].[NCI_Trials] ([nci_id], [nct_id], [id], [inclusion_indicaInclusionor], [description]) VALUES (N'NCI-2014-01107', N'NCT02159989', N'', N'Inclusion', N'"Platelets >= 100,000/mcL"')
INSERT [dbo].[NCI_Trials] ([nci_id], [nct_id], [id], [inclusion_indicaInclusionor], [description]) VALUES (N'NCI-2014-01118', N'NCT02142803', N'', N'Inclusion', N'"Platelets >= 100,000/uL"')
INSERT [dbo].[NCI_Trials] ([nci_id], [nct_id], [id], [inclusion_indicaInclusionor], [description]) VALUES (N'NCI-2014-01222', N'NCT02304458', N'', N'N/A', N'')
INSERT [dbo].[NCI_Trials] ([nci_id], [nct_id], [id], [inclusion_indicaInclusionor], [description]) VALUES (N'NCI-2014-01223', N'NCT02166463', N'', N'N/A', N'')
INSERT [dbo].[NCI_Trials] ([nci_id], [nct_id], [id], [inclusion_indicaInclusionor], [description]) VALUES (N'NCI-2014-01340', N'NCT02180867', N'', N'N/A', N'')
INSERT [dbo].[NCI_Trials] ([nci_id], [nct_id], [id], [inclusion_indicaInclusionor], [description]) VALUES (N'NCI-2014-01470', N'NCT02196181', N'', N'Inclusion', N'"Platelets >= 100,000/ul"')
INSERT [dbo].[NCI_Trials] ([nci_id], [nct_id], [id], [inclusion_indicaInclusionor], [description]) VALUES (N'NCI-2014-01497', N'NCT02270450', N'', N'N/A', N'')
INSERT [dbo].[NCI_Trials] ([nci_id], [nct_id], [id], [inclusion_indicaInclusionor], [description]) VALUES (N'NCI-2014-01507', N'NCT02201992', N'', N'Inclusion', N'"Platelets >= 30,000/mm^3"')
INSERT [dbo].[NCI_Trials] ([nci_id], [nct_id], [id], [inclusion_indicaInclusionor], [description]) VALUES (N'NCI-2014-01508', N'NCT02193282', N'', N'Inclusion', N'"Platelets >= 100,000/ul"')
INSERT [dbo].[NCI_Trials] ([nci_id], [nct_id], [id], [inclusion_indicaInclusionor], [description]) VALUES (N'NCI-2014-01696', N'NCT02375204', N'', N'N/A', N'')
INSERT [dbo].[NCI_Trials] ([nci_id], [nct_id], [id], [inclusion_indicaInclusionor], [description]) VALUES (N'NCI-2014-01747', N'NCT02224781', N'', N'N/A', N'')
INSERT [dbo].[NCI_Trials] ([nci_id], [nct_id], [id], [inclusion_indicaInclusionor], [description]) VALUES (N'NCI-2014-01754', N'NCT02203526', N'', N'Inclusion', N'"Platelets >= 50,000 cells/mcL (50 x 10^9/L)"')
INSERT [dbo].[NCI_Trials] ([nci_id], [nct_id], [id], [inclusion_indicaInclusionor], [description]) VALUES (N'NCI-2014-01810', N'NCT02364557', N'', N'Inclusion', N'"Platelets >= 50,000 cells/mm^3"')
INSERT [dbo].[NCI_Trials] ([nci_id], [nct_id], [id], [inclusion_indicaInclusionor], [description]) VALUES (N'NCI-2014-01820', N'NCT02445391', N'', N'Inclusion', N'"ELIGIBILITY CRITERIA FOR RANDOMIZATION (STEP 1): Platelets > 100,000 mm^3"')
INSERT [dbo].[NCI_Trials] ([nci_id], [nct_id], [id], [inclusion_indicaInclusionor], [description]) VALUES (N'NCI-2014-01927', N'NCT02243605', N'', N'Inclusion', N'"Platelets >= 100,000/mcL"')
INSERT [dbo].[NCI_Trials] ([nci_id], [nct_id], [id], [inclusion_indicaInclusionor], [description]) VALUES (N'NCI-2014-01984', N'NCT02298959', N'', N'Inclusion', N'"Platelets >= 100,000/mcL"')
INSERT [dbo].[NCI_Trials] ([nci_id], [nct_id], [id], [inclusion_indicaInclusionor], [description]) VALUES (N'NCI-2014-02020', N'NCT02575794', N'', N'Inclusion', N'"Platelets >= 100,000/mcL"')
INSERT [dbo].[NCI_Trials] ([nci_id], [nct_id], [id], [inclusion_indicaInclusionor], [description]) VALUES (N'NCI-2014-02056', N'NCT02437851', N'', N'Inclusion', N'"Platelets: >= 100,000/mm^3"')
INSERT [dbo].[NCI_Trials] ([nci_id], [nct_id], [id], [inclusion_indicaInclusionor], [description]) VALUES (N'NCI-2014-02167', N'NCT02275533', N'', N'Inclusion', N'"Platelets >= 100,000/mcL"')
INSERT [dbo].[NCI_Trials] ([nci_id], [nct_id], [id], [inclusion_indicaInclusionor], [description]) VALUES (N'NCI-2014-02197', N'NCT02281760', N'', N'Inclusion', N'Platelets >= 100 x 10^9/L')
INSERT [dbo].[NCI_Trials] ([nci_id], [nct_id], [id], [inclusion_indicaInclusionor], [description]) VALUES (N'NCI-2014-02266', N'NCT02339740', N'', N'N/A', N'')
INSERT [dbo].[NCI_Trials] ([nci_id], [nct_id], [id], [inclusion_indicaInclusionor], [description]) VALUES (N'NCI-2014-02267', N'NCT02412670', N'', N'Inclusion', N'"Platelets >= 100,000/mm^3"')
INSERT [dbo].[NCI_Trials] ([nci_id], [nct_id], [id], [inclusion_indicaInclusionor], [description]) VALUES (N'NCI-2014-02379', N'NCT02496208', N'', N'Inclusion', N'"Platelets >= 75,000/mcL"')
INSERT [dbo].[NCI_Trials] ([nci_id], [nct_id], [id], [inclusion_indicaInclusionor], [description]) VALUES (N'NCI-2014-02380', N'NCT02306161', N'', N'N/A', N'')
INSERT [dbo].[NCI_Trials] ([nci_id], [nct_id], [id], [inclusion_indicaInclusionor], [description]) VALUES (N'NCI-2014-02403', N'NCT02428192', N'', N'Inclusion', N'"Platelets >= 100,000/mcL"')
INSERT [dbo].[NCI_Trials] ([nci_id], [nct_id], [id], [inclusion_indicaInclusionor], [description]) VALUES (N'NCI-2014-02405', N'NCT02438722', N'', N'Inclusion', N'"Platelets >= 75,000/mcL"')
INSERT [dbo].[NCI_Trials] ([nci_id], [nct_id], [id], [inclusion_indicaInclusionor], [description]) VALUES (N'NCI-2014-02410', N'NCT02323880', N'', N'N/A', N'')
INSERT [dbo].[NCI_Trials] ([nci_id], [nct_id], [id], [inclusion_indicaInclusionor], [description]) VALUES (N'NCI-2014-02413', N'NCT02063828', N'', N'N/A', N'')
INSERT [dbo].[NCI_Trials] ([nci_id], [nct_id], [id], [inclusion_indicaInclusionor], [description]) VALUES (N'NCI-2014-02424', N'NCT02498600', N'', N'Inclusion', N'"Platelets >= 100,000/ul"')
INSERT [dbo].[NCI_Trials] ([nci_id], [nct_id], [id], [inclusion_indicaInclusionor], [description]) VALUES (N'NCI-2014-02474', N'NCT02317874', N'', N'Inclusion', N'"Platelets >= 150,000/mcL"')
INSERT [dbo].[NCI_Trials] ([nci_id], [nct_id], [id], [inclusion_indicaInclusionor], [description]) VALUES (N'NCI-2014-02559', N'NCT01885455', N'', N'N/A', N'')
INSERT [dbo].[NCI_Trials] ([nci_id], [nct_id], [id], [inclusion_indicaInclusionor], [description]) VALUES (N'NCI-2014-02672', N'NCT02337517', N'', N'Inclusion', N'"Platelets >= 50,000/mcL"')
INSERT [dbo].[NCI_Trials] ([nci_id], [nct_id], [id], [inclusion_indicaInclusionor], [description]) VALUES (N'NCI-2014-02674', N'NCT02339571', N'', N'N/A', N'')
INSERT [dbo].[NCI_Trials] ([nci_id], [nct_id], [id], [inclusion_indicaInclusionor], [description]) VALUES (N'NCI-2015-00030', N'NCT02360215', N'', N'N/A', N'')
INSERT [dbo].[NCI_Trials] ([nci_id], [nct_id], [id], [inclusion_indicaInclusionor], [description]) VALUES (N'NCI-2015-00052', N'NCT02799485', N'', N'Inclusion', N'"Platelets >= 100,000/mcL"')
INSERT [dbo].[NCI_Trials] ([nci_id], [nct_id], [id], [inclusion_indicaInclusionor], [description]) VALUES (N'NCI-2015-00054', N'NCT02465060', N'', N'Inclusion', N'"Platelets >= 100,000/mcL NOTE: Patients with documented bone marrow involvement by lymphoma are not required to meet the above hematologic parameters, but must have a platelet count of at least 75,000/mcL and neutrophil count of at least 1,000/mcL"')
INSERT [dbo].[NCI_Trials] ([nci_id], [nct_id], [id], [inclusion_indicaInclusionor], [description]) VALUES (N'NCI-2015-00121', N'NCT03047213', N'', N'Inclusion', N'"Platelets >= 100,000/mcL"')
INSERT [dbo].[NCI_Trials] ([nci_id], [nct_id], [id], [inclusion_indicaInclusionor], [description]) VALUES (N'NCI-2015-00127', N'NCT02535312', N'', N'Inclusion', N'"Platelets >= 100,000/uL"')
INSERT [dbo].[NCI_Trials] ([nci_id], [nct_id], [id], [inclusion_indicaInclusionor], [description]) VALUES (N'NCI-2015-00128', N'NCT02488967', N'', N'N/A', N'')
INSERT [dbo].[NCI_Trials] ([nci_id], [nct_id], [id], [inclusion_indicaInclusionor], [description]) VALUES (N'NCI-2015-00130', N'NCT02359565', N'', N'Inclusion', N'"INCLUSION CRITERIA FOR DIPG (STRATUM A - CURRENTLY CLOSED TO ACCRUAL): Platelets >= 100,000/mm^3 (unsupported, defined as no platelet transfusion within 7 days)"')
INSERT [dbo].[NCI_Trials] ([nci_id], [nct_id], [id], [inclusion_indicaInclusionor], [description]) VALUES (N'NCI-2015-00159', N'NCT02363283', N'', N'Inclusion', N'"Platelets >= 100,000/uL"')
INSERT [dbo].[NCI_Trials] ([nci_id], [nct_id], [id], [inclusion_indicaInclusionor], [description]) VALUES (N'NCI-2015-00257', N'NCT02381548', N'', N'N/A', N'')
INSERT [dbo].[NCI_Trials] ([nci_id], [nct_id], [id], [inclusion_indicaInclusionor], [description]) VALUES (N'NCI-2015-00258', N'NCT02381561', N'', N'Inclusion', N'"Platelets >= 100,000/mcL"')
INSERT [dbo].[NCI_Trials] ([nci_id], [nct_id], [id], [inclusion_indicaInclusionor], [description]) VALUES (N'NCI-2015-00260', N'NCT02500797', N'', N'N/A', N'')
INSERT [dbo].[NCI_Trials] ([nci_id], [nct_id], [id], [inclusion_indicaInclusionor], [description]) VALUES (N'NCI-2015-00323', N'NCT02516423', N'', N'N/A', N'')
INSERT [dbo].[NCI_Trials] ([nci_id], [nct_id], [id], [inclusion_indicaInclusionor], [description]) VALUES (N'NCI-2015-00324', N'NCT02521493', N'', N'N/A', N'')
INSERT [dbo].[NCI_Trials] ([nci_id], [nct_id], [id], [inclusion_indicaInclusionor], [description]) VALUES (N'NCI-2015-00328', N'NCT02392429', N'', N'N/A', N'')
INSERT [dbo].[NCI_Trials] ([nci_id], [nct_id], [id], [inclusion_indicaInclusionor], [description]) VALUES (N'NCI-2015-00378', N'NCT02659800', N'', N'Inclusion', N'"Platelets >= 100,000/mcL"')
INSERT [dbo].[NCI_Trials] ([nci_id], [nct_id], [id], [inclusion_indicaInclusionor], [description]) VALUES (N'NCI-2015-00383', N'NCT02398773', N'', N'N/A', N'')
INSERT [dbo].[NCI_Trials] ([nci_id], [nct_id], [id], [inclusion_indicaInclusionor], [description]) VALUES (N'NCI-2015-00456', N'NCT02407405', N'', N'Inclusion', N'"Platelets >= 100,000/mcL (not requiring platelet transfusions)"')
INSERT [dbo].[NCI_Trials] ([nci_id], [nct_id], [id], [inclusion_indicaInclusionor], [description]) VALUES (N'NCI-2015-00461', N'NCT02408861', N'', N'Inclusion', N'"Platelets >= 75,000/mm^3"')
INSERT [dbo].[NCI_Trials] ([nci_id], [nct_id], [id], [inclusion_indicaInclusionor], [description]) VALUES (N'NCI-2015-00537', N'NCT02588443', N'', N'Inclusion', N'Platelets (Plt) > 100')
INSERT [dbo].[NCI_Trials] ([nci_id], [nct_id], [id], [inclusion_indicaInclusionor], [description]) VALUES (N'NCI-2015-00543', N'NCT02470091', N'', N'N/A', N'')
GO
INSERT [dbo].[NCI_Trials] ([nci_id], [nct_id], [id], [inclusion_indicaInclusionor], [description]) VALUES (N'NCI-2015-00545', N'NCT02417701', N'', N'Inclusion', N'"Platelets >= 100,000/mcL"')
INSERT [dbo].[NCI_Trials] ([nci_id], [nct_id], [id], [inclusion_indicaInclusionor], [description]) VALUES (N'NCI-2015-00546', N'NCT02523014', N'', N'N/A', N'')
INSERT [dbo].[NCI_Trials] ([nci_id], [nct_id], [id], [inclusion_indicaInclusionor], [description]) VALUES (N'NCI-2015-00547', N'NCT02595424', N'', N'Inclusion', N'"Platelets >= 100,000/mm^3"')
INSERT [dbo].[NCI_Trials] ([nci_id], [nct_id], [id], [inclusion_indicaInclusionor], [description]) VALUES (N'NCI-2015-00606', N'NCT02446600', N'', N'Inclusion', N'"Platelets >= 100,000/mcL"')
INSERT [dbo].[NCI_Trials] ([nci_id], [nct_id], [id], [inclusion_indicaInclusionor], [description]) VALUES (N'NCI-2015-00651', N'NCT02502266', N'', N'Inclusion', N'"Platelets >= 100,000/mcL"')
INSERT [dbo].[NCI_Trials] ([nci_id], [nct_id], [id], [inclusion_indicaInclusionor], [description]) VALUES (N'NCI-2015-00668', N'NCT02443077', N'', N'N/A', N'')
INSERT [dbo].[NCI_Trials] ([nci_id], [nct_id], [id], [inclusion_indicaInclusionor], [description]) VALUES (N'NCI-2015-00695', N'NCT02423057', N'', N'Inclusion', N'"Platelets >= 100,000/mcL"')
INSERT [dbo].[NCI_Trials] ([nci_id], [nct_id], [id], [inclusion_indicaInclusionor], [description]) VALUES (N'NCI-2015-00741', N'NCT02453620', N'', N'Inclusion', N'"Platelets >= 100,000/mcL"')
INSERT [dbo].[NCI_Trials] ([nci_id], [nct_id], [id], [inclusion_indicaInclusionor], [description]) VALUES (N'NCI-2015-00744', N'NCT02564198', N'', N'N/A', N'')
INSERT [dbo].[NCI_Trials] ([nci_id], [nct_id], [id], [inclusion_indicaInclusionor], [description]) VALUES (N'NCI-2015-00835', N'NCT02466971', N'', N'Inclusion', N'"Platelets > 100,000/uL"')
INSERT [dbo].[NCI_Trials] ([nci_id], [nct_id], [id], [inclusion_indicaInclusionor], [description]) VALUES (N'NCI-2015-00866', N'NCT02474173', N'', N'Inclusion', N'"Platelets >= 100,000/uL"')
INSERT [dbo].[NCI_Trials] ([nci_id], [nct_id], [id], [inclusion_indicaInclusionor], [description]) VALUES (N'NCI-2015-01000', N'NCT02484430', N'', N'N/A', N'')
INSERT [dbo].[NCI_Trials] ([nci_id], [nct_id], [id], [inclusion_indicaInclusionor], [description]) VALUES (N'NCI-2015-01001', N'NCT02484443', N'', N'N/A', N'')
INSERT [dbo].[NCI_Trials] ([nci_id], [nct_id], [id], [inclusion_indicaInclusionor], [description]) VALUES (N'NCI-2015-01053', N'NCT02496663', N'', N'Inclusion', N'"Platelets >= 100,000/mcL"')
INSERT [dbo].[NCI_Trials] ([nci_id], [nct_id], [id], [inclusion_indicaInclusionor], [description]) VALUES (N'NCI-2015-01097', N'NCT02498613', N'', N'Inclusion', N'"Platelets >= 100,000/mcL"')
INSERT [dbo].[NCI_Trials] ([nci_id], [nct_id], [id], [inclusion_indicaInclusionor], [description]) VALUES (N'NCI-2015-01098', N'NCT02503709', N'', N'Inclusion', N'"Platelets >= 100,000/microliters"')
INSERT [dbo].[NCI_Trials] ([nci_id], [nct_id], [id], [inclusion_indicaInclusionor], [description]) VALUES (N'NCI-2015-01139', N'NCT02503722', N'', N'Inclusion', N'Platelets >= 100 x 10^9/L')
INSERT [dbo].[NCI_Trials] ([nci_id], [nct_id], [id], [inclusion_indicaInclusionor], [description]) VALUES (N'NCI-2015-01144', N'NCT02613364', N'', N'N/A', N'')
INSERT [dbo].[NCI_Trials] ([nci_id], [nct_id], [id], [inclusion_indicaInclusionor], [description]) VALUES (N'NCI-2015-01178', N'NCT02308085', N'', N'N/A', N'')
INSERT [dbo].[NCI_Trials] ([nci_id], [nct_id], [id], [inclusion_indicaInclusionor], [description]) VALUES (N'NCI-2015-01236', N'NCT02562716', N'', N'Inclusion', N'"Platelets >= 100,000/mcL"')
INSERT [dbo].[NCI_Trials] ([nci_id], [nct_id], [id], [inclusion_indicaInclusionor], [description]) VALUES (N'NCI-2015-01270', N'NCT02520778', N'', N'Inclusion', N'"Platelets >= 100,000/mcL"')
INSERT [dbo].[NCI_Trials] ([nci_id], [nct_id], [id], [inclusion_indicaInclusionor], [description]) VALUES (N'NCI-2015-01271', N'NCT02520791', N'', N'Inclusion', N'"Platelets >= 75,000/mcL"')
INSERT [dbo].[NCI_Trials] ([nci_id], [nct_id], [id], [inclusion_indicaInclusionor], [description]) VALUES (N'NCI-2015-01348', N'NCT02490878', N'', N'N/A', N'')
INSERT [dbo].[NCI_Trials] ([nci_id], [nct_id], [id], [inclusion_indicaInclusionor], [description]) VALUES (N'NCI-2015-01408', N'NCT02535325', N'', N'Inclusion', N'"Platelets >= 100,000/mcL"')
INSERT [dbo].[NCI_Trials] ([nci_id], [nct_id], [id], [inclusion_indicaInclusionor], [description]) VALUES (N'NCI-2015-01411', N'NCT02535338', N'', N'Inclusion', N'"Platelets >= 100,000/mcL"')
INSERT [dbo].[NCI_Trials] ([nci_id], [nct_id], [id], [inclusion_indicaInclusionor], [description]) VALUES (N'NCI-2015-01548', N'NCT02635009', N'', N'N/A', N'')
INSERT [dbo].[NCI_Trials] ([nci_id], [nct_id], [id], [inclusion_indicaInclusionor], [description]) VALUES (N'NCI-2015-01640', N'NCT02568553', N'', N'Inclusion', N'"Platelets >= 50,000/mcL"')
INSERT [dbo].[NCI_Trials] ([nci_id], [nct_id], [id], [inclusion_indicaInclusionor], [description]) VALUES (N'NCI-2015-01642', N'NCT02567409', N'', N'Inclusion', N'"Platelets >= 100,000/mcL"')
INSERT [dbo].[NCI_Trials] ([nci_id], [nct_id], [id], [inclusion_indicaInclusionor], [description]) VALUES (N'NCI-2015-01643', N'NCT02567422', N'', N'Inclusion', N'"Platelets >= 100,000/mcL"')
INSERT [dbo].[NCI_Trials] ([nci_id], [nct_id], [id], [inclusion_indicaInclusionor], [description]) VALUES (N'NCI-2015-01644', N'NCT02567435', N'', N'N/A', N'')
INSERT [dbo].[NCI_Trials] ([nci_id], [nct_id], [id], [inclusion_indicaInclusionor], [description]) VALUES (N'NCI-2015-01681', N'NCT02572453', N'', N'Inclusion', N'"Platelets >= 75,000/mcL, unless due to marrow involvement by lymphoma in which case a platelet count of >= 30,000/mcL will be used"')
INSERT [dbo].[NCI_Trials] ([nci_id], [nct_id], [id], [inclusion_indicaInclusionor], [description]) VALUES (N'NCI-2015-01706', N'NCT02749903', N'', N'N/A', N'')
INSERT [dbo].[NCI_Trials] ([nci_id], [nct_id], [id], [inclusion_indicaInclusionor], [description]) VALUES (N'NCI-2015-01707', N'NCT02761057', N'', N'N/A', N'')
INSERT [dbo].[NCI_Trials] ([nci_id], [nct_id], [id], [inclusion_indicaInclusionor], [description]) VALUES (N'NCI-2015-01744', N'NCT02581930', N'', N'Inclusion', N'"Platelets > 100,000/uL"')
INSERT [dbo].[NCI_Trials] ([nci_id], [nct_id], [id], [inclusion_indicaInclusionor], [description]) VALUES (N'NCI-2015-01745', N'NCT02797470', N'', N'N/A', N'')
INSERT [dbo].[NCI_Trials] ([nci_id], [nct_id], [id], [inclusion_indicaInclusionor], [description]) VALUES (N'NCI-2015-01779', N'NCT02589522', N'', N'Inclusion', N'"Platelets >= 100,000/mcL"')
INSERT [dbo].[NCI_Trials] ([nci_id], [nct_id], [id], [inclusion_indicaInclusionor], [description]) VALUES (N'NCI-2015-01906', N'NCT02595866', N'', N'Inclusion', N'"Platelets > 50,000/mcL"')
INSERT [dbo].[NCI_Trials] ([nci_id], [nct_id], [id], [inclusion_indicaInclusionor], [description]) VALUES (N'NCI-2015-01907', N'NCT02595879', N'', N'Inclusion', N'Platelets >= 100 x 10^9/L')
INSERT [dbo].[NCI_Trials] ([nci_id], [nct_id], [id], [inclusion_indicaInclusionor], [description]) VALUES (N'NCI-2015-01910', N'NCT02595892', N'', N'Inclusion', N'"Platelets >= 100,000/mcL"')
INSERT [dbo].[NCI_Trials] ([nci_id], [nct_id], [id], [inclusion_indicaInclusionor], [description]) VALUES (N'NCI-2015-01911', N'NCT02734537', N'', N'Inclusion', N'"Platelets >= 100,000/mm^3"')
INSERT [dbo].[NCI_Trials] ([nci_id], [nct_id], [id], [inclusion_indicaInclusionor], [description]) VALUES (N'NCI-2015-01912', N'NCT02595905', N'', N'N/A', N'')
INSERT [dbo].[NCI_Trials] ([nci_id], [nct_id], [id], [inclusion_indicaInclusionor], [description]) VALUES (N'NCI-2015-01913', N'NCT02595918', N'', N'Inclusion', N'"Platelets >= 100,000/mcL (without transfusion within 2 weeks prior to cycle 1, day 1)"')
INSERT [dbo].[NCI_Trials] ([nci_id], [nct_id], [id], [inclusion_indicaInclusionor], [description]) VALUES (N'NCI-2015-01915', N'NCT02595931', N'', N'Inclusion', N'"Platelets >= 100,000/mcL"')
INSERT [dbo].[NCI_Trials] ([nci_id], [nct_id], [id], [inclusion_indicaInclusionor], [description]) VALUES (N'NCI-2015-01916', N'NCT02595944', N'', N'Inclusion', N'Platelets >= 100 x 10^3/uL')
INSERT [dbo].[NCI_Trials] ([nci_id], [nct_id], [id], [inclusion_indicaInclusionor], [description]) VALUES (N'NCI-2015-01917', N'NCT02642965', N'', N'N/A', N'')
INSERT [dbo].[NCI_Trials] ([nci_id], [nct_id], [id], [inclusion_indicaInclusionor], [description]) VALUES (N'NCI-2015-01918', N'NCT02750826', N'', N'N/A', N'')
INSERT [dbo].[NCI_Trials] ([nci_id], [nct_id], [id], [inclusion_indicaInclusionor], [description]) VALUES (N'NCI-2015-01919', N'NCT02717455', N'', N'Inclusion', N'"RECURRENT/ PROGRESSIVE DIPG (STRATUM 1): Platelets >= 100,000/mm^3 (unsupported, defined as no platelet transfusion within 7 days, and recovery from post-transfusion nadir)"')
INSERT [dbo].[NCI_Trials] ([nci_id], [nct_id], [id], [inclusion_indicaInclusionor], [description]) VALUES (N'NCI-2015-01929', N'NCT02601209', N'', N'N/A', N'')
INSERT [dbo].[NCI_Trials] ([nci_id], [nct_id], [id], [inclusion_indicaInclusionor], [description]) VALUES (N'NCI-2015-02064', N'NCT02627443', N'', N'Inclusion', N'"Platelets >= 100,000/mcL"')
INSERT [dbo].[NCI_Trials] ([nci_id], [nct_id], [id], [inclusion_indicaInclusionor], [description]) VALUES (N'NCI-2015-02125', N'NCT02631733', N'', N'Inclusion', N'"Platelets >= 100,000/mcL"')
INSERT [dbo].[NCI_Trials] ([nci_id], [nct_id], [id], [inclusion_indicaInclusionor], [description]) VALUES (N'NCI-2015-02126', N'NCT02631746', N'', N'Inclusion', N'"Platelets >= 100,000/mcL"')
INSERT [dbo].[NCI_Trials] ([nci_id], [nct_id], [id], [inclusion_indicaInclusionor], [description]) VALUES (N'NCI-2015-02248', N'NCT02890355', N'', N'Inclusion', N'"Platelets >= 100,000/mcL"')
INSERT [dbo].[NCI_Trials] ([nci_id], [nct_id], [id], [inclusion_indicaInclusionor], [description]) VALUES (N'NCI-2015-02250', N'NCT02642042', N'', N'N/A', N'')
INSERT [dbo].[NCI_Trials] ([nci_id], [nct_id], [id], [inclusion_indicaInclusionor], [description]) VALUES (N'NCI-2015-02253', N'NCT02823652', N'', N'N/A', N'')
INSERT [dbo].[NCI_Trials] ([nci_id], [nct_id], [id], [inclusion_indicaInclusionor], [description]) VALUES (N'NCI-2016-00050', N'NCT02785952', N'', N'N/A', N'')
INSERT [dbo].[NCI_Trials] ([nci_id], [nct_id], [id], [inclusion_indicaInclusionor], [description]) VALUES (N'NCI-2016-00071', N'NCT03077451', N'', N'Inclusion', N'"Platelets >= 100,000/mm^3"')
INSERT [dbo].[NCI_Trials] ([nci_id], [nct_id], [id], [inclusion_indicaInclusionor], [description]) VALUES (N'NCI-2016-00150', N'NCT02724579', N'', N'N/A', N'')
INSERT [dbo].[NCI_Trials] ([nci_id], [nct_id], [id], [inclusion_indicaInclusionor], [description]) VALUES (N'NCI-2016-00195', N'NCT02689453', N'', N'Inclusion', N'"Platelets >= 100,000/mm^3"')
INSERT [dbo].[NCI_Trials] ([nci_id], [nct_id], [id], [inclusion_indicaInclusionor], [description]) VALUES (N'NCI-2016-00203', N'NCT02713386', N'', N'Inclusion', N'"Platelets greater than or equal to 100,000/mcl"')
INSERT [dbo].[NCI_Trials] ([nci_id], [nct_id], [id], [inclusion_indicaInclusionor], [description]) VALUES (N'NCI-2016-00222', N'NCT02921256', N'', N'N/A', N'')
INSERT [dbo].[NCI_Trials] ([nci_id], [nct_id], [id], [inclusion_indicaInclusionor], [description]) VALUES (N'NCI-2016-00232', N'NCT02717507', N'', N'N/A', N'')
INSERT [dbo].[NCI_Trials] ([nci_id], [nct_id], [id], [inclusion_indicaInclusionor], [description]) VALUES (N'NCI-2016-00233', N'NCT02927249', N'', N'N/A', N'')
INSERT [dbo].[NCI_Trials] ([nci_id], [nct_id], [id], [inclusion_indicaInclusionor], [description]) VALUES (N'NCI-2016-00252', N'NCT02933489', N'', N'N/A', N'')
INSERT [dbo].[NCI_Trials] ([nci_id], [nct_id], [id], [inclusion_indicaInclusionor], [description]) VALUES (N'NCI-2016-00264', N'NCT02728596', N'', N'N/A', N'')
INSERT [dbo].[NCI_Trials] ([nci_id], [nct_id], [id], [inclusion_indicaInclusionor], [description]) VALUES (N'NCI-2016-00325', N'NCT02728258', N'', N'Inclusion', N'"Platelets >= 75,000/mcl"')
INSERT [dbo].[NCI_Trials] ([nci_id], [nct_id], [id], [inclusion_indicaInclusionor], [description]) VALUES (N'NCI-2016-00326', N'NCT03055013', N'', N'N/A', N'')
INSERT [dbo].[NCI_Trials] ([nci_id], [nct_id], [id], [inclusion_indicaInclusionor], [description]) VALUES (N'NCI-2016-00355', N'NCT02723864', N'', N'Inclusion', N'"Platelets >= 100,000/mcL"')
INSERT [dbo].[NCI_Trials] ([nci_id], [nct_id], [id], [inclusion_indicaInclusionor], [description]) VALUES (N'NCI-2016-00451', N'NCT03091660', N'', N'N/A', N'')
INSERT [dbo].[NCI_Trials] ([nci_id], [nct_id], [id], [inclusion_indicaInclusionor], [description]) VALUES (N'NCI-2016-00456', N'NCT02839343', N'', N'N/A', N'')
INSERT [dbo].[NCI_Trials] ([nci_id], [nct_id], [id], [inclusion_indicaInclusionor], [description]) VALUES (N'NCI-2016-00643', N'NCT02808650', N'', N'N/A', N'')
INSERT [dbo].[NCI_Trials] ([nci_id], [nct_id], [id], [inclusion_indicaInclusionor], [description]) VALUES (N'NCI-2016-00666', N'NCT02775851', N'', N'Inclusion', N'"Platelets >= 100,000/mcl"')
INSERT [dbo].[NCI_Trials] ([nci_id], [nct_id], [id], [inclusion_indicaInclusionor], [description]) VALUES (N'NCI-2016-00667', N'NCT02775812', N'', N'Inclusion', N'"Platelets: >= 100,000 / mm^3"')
INSERT [dbo].[NCI_Trials] ([nci_id], [nct_id], [id], [inclusion_indicaInclusionor], [description]) VALUES (N'NCI-2016-00708', N'NCT02780804', N'', N'N/A', N'')
INSERT [dbo].[NCI_Trials] ([nci_id], [nct_id], [id], [inclusion_indicaInclusionor], [description]) VALUES (N'NCI-2016-00787', N'NCT03030417', N'', N'Inclusion', N'"Platelets >= 100,000/mcL"')
INSERT [dbo].[NCI_Trials] ([nci_id], [nct_id], [id], [inclusion_indicaInclusionor], [description]) VALUES (N'NCI-2016-00843', N'NCT03165721', N'', N'Inclusion', N'"Platelets >= 100,000/mcL"')
INSERT [dbo].[NCI_Trials] ([nci_id], [nct_id], [id], [inclusion_indicaInclusionor], [description]) VALUES (N'NCI-2016-00849', N'NCT03137771', N'', N'Inclusion', N'Platelets >= 100 x 10^9/L')
INSERT [dbo].[NCI_Trials] ([nci_id], [nct_id], [id], [inclusion_indicaInclusionor], [description]) VALUES (N'NCI-2016-00926', N'NCT03033992', N'', N'Inclusion', N'Platelets >= 100 x 10^9/L (transfusion dependent)')
INSERT [dbo].[NCI_Trials] ([nci_id], [nct_id], [id], [inclusion_indicaInclusionor], [description]) VALUES (N'NCI-2016-00927', N'NCT03041701', N'', N'Inclusion', N'"Platelets >= 100,000/mcL"')
INSERT [dbo].[NCI_Trials] ([nci_id], [nct_id], [id], [inclusion_indicaInclusionor], [description]) VALUES (N'NCI-2016-00963', N'NCT03070886', N'', N'Inclusion', N'"Platelets >= 100,000 cell/mm^3"')
INSERT [dbo].[NCI_Trials] ([nci_id], [nct_id], [id], [inclusion_indicaInclusionor], [description]) VALUES (N'NCI-2016-00973', N'NCT02828358', N'', N'N/A', N'')
INSERT [dbo].[NCI_Trials] ([nci_id], [nct_id], [id], [inclusion_indicaInclusionor], [description]) VALUES (N'NCI-2016-01040', N'NCT03141684', N'', N'Inclusion', N'"Platelets >= 100,000/mcL"')
INSERT [dbo].[NCI_Trials] ([nci_id], [nct_id], [id], [inclusion_indicaInclusionor], [description]) VALUES (N'NCI-2016-01041', N'NCT02834013', N'', N'Inclusion', N'"Platelets >= 75,000/mcL"')
INSERT [dbo].[NCI_Trials] ([nci_id], [nct_id], [id], [inclusion_indicaInclusionor], [description]) VALUES (N'NCI-2016-01081', N'NCT02839707', N'', N'Inclusion', N'"Platelets >= 100,000/mcl"')
INSERT [dbo].[NCI_Trials] ([nci_id], [nct_id], [id], [inclusion_indicaInclusionor], [description]) VALUES (N'NCI-2016-01087', N'NCT02839720', N'', N'Inclusion', N'"Platelets >= 100,000/mcL (not requiring platelet transfusions)"')
INSERT [dbo].[NCI_Trials] ([nci_id], [nct_id], [id], [inclusion_indicaInclusionor], [description]) VALUES (N'NCI-2016-01094', N'NCT03109301', N'', N'Inclusion', N'"Platelets >= 100,000/mcL"')
INSERT [dbo].[NCI_Trials] ([nci_id], [nct_id], [id], [inclusion_indicaInclusionor], [description]) VALUES (N'NCI-2016-01104', N'NCT02844816', N'', N'Inclusion', N'"Platelets >= 100,000/mcL"')
INSERT [dbo].[NCI_Trials] ([nci_id], [nct_id], [id], [inclusion_indicaInclusionor], [description]) VALUES (N'NCI-2016-01105', N'NCT02887521', N'', N'N/A', N'')
INSERT [dbo].[NCI_Trials] ([nci_id], [nct_id], [id], [inclusion_indicaInclusionor], [description]) VALUES (N'NCI-2016-01110', N'NCT02900976', N'', N'N/A', N'')
INSERT [dbo].[NCI_Trials] ([nci_id], [nct_id], [id], [inclusion_indicaInclusionor], [description]) VALUES (N'NCI-2016-01130', N'NCT02849496', N'', N'Inclusion', N'"Platelets >= 100,000/mcL"')
INSERT [dbo].[NCI_Trials] ([nci_id], [nct_id], [id], [inclusion_indicaInclusionor], [description]) VALUES (N'NCI-2016-01232', N'NCT02862275', N'', N'Inclusion', N'"Platelets >= 75,000/mcL (>= 50,000 for patients with hematologic malignancies)"')
INSERT [dbo].[NCI_Trials] ([nci_id], [nct_id], [id], [inclusion_indicaInclusionor], [description]) VALUES (N'NCI-2016-01258', N'NCT02867592', N'', N'N/A', N'')
INSERT [dbo].[NCI_Trials] ([nci_id], [nct_id], [id], [inclusion_indicaInclusionor], [description]) VALUES (N'NCI-2016-01300', N'NCT02879695', N'', N'N/A', N'')
INSERT [dbo].[NCI_Trials] ([nci_id], [nct_id], [id], [inclusion_indicaInclusionor], [description]) VALUES (N'NCI-2016-01301', N'NCT02883062', N'', N'Inclusion', N'"Platelets >= 150,000/mcL"')
INSERT [dbo].[NCI_Trials] ([nci_id], [nct_id], [id], [inclusion_indicaInclusionor], [description]) VALUES (N'NCI-2016-01325', N'NCT02888743', N'', N'Inclusion', N'"Platelets >= 100,000/mcL"')
INSERT [dbo].[NCI_Trials] ([nci_id], [nct_id], [id], [inclusion_indicaInclusionor], [description]) VALUES (N'NCI-2016-01326', N'NCT02890329', N'', N'N/A', N'')
INSERT [dbo].[NCI_Trials] ([nci_id], [nct_id], [id], [inclusion_indicaInclusionor], [description]) VALUES (N'NCI-2016-01346', N'NCT02893917', N'', N'Inclusion', N'"Platelets >= 100,000/mcL"')
INSERT [dbo].[NCI_Trials] ([nci_id], [nct_id], [id], [inclusion_indicaInclusionor], [description]) VALUES (N'NCI-2016-01356', N'NCT02893930', N'', N'Inclusion', N'Platelets >= 100 x 10^9/L')
INSERT [dbo].[NCI_Trials] ([nci_id], [nct_id], [id], [inclusion_indicaInclusionor], [description]) VALUES (N'NCI-2016-01357', N'NCT03115333', N'', N'N/A', N'')
INSERT [dbo].[NCI_Trials] ([nci_id], [nct_id], [id], [inclusion_indicaInclusionor], [description]) VALUES (N'NCI-2016-01363', N'NCT02899728', N'', N'Inclusion', N'"Platelets >= 100,000/mcL"')
INSERT [dbo].[NCI_Trials] ([nci_id], [nct_id], [id], [inclusion_indicaInclusionor], [description]) VALUES (N'NCI-2016-01364', N'NCT02898207', N'', N'Inclusion', N'"Platelets >= 100,000/mcL"')
GO
INSERT [dbo].[NCI_Trials] ([nci_id], [nct_id], [id], [inclusion_indicaInclusionor], [description]) VALUES (N'NCI-2016-01403', N'NCT03267433', N'', N'N/A', N'')
INSERT [dbo].[NCI_Trials] ([nci_id], [nct_id], [id], [inclusion_indicaInclusionor], [description]) VALUES (N'NCI-2016-01412', N'NCT02975882', N'', N'N/A', N'')
INSERT [dbo].[NCI_Trials] ([nci_id], [nct_id], [id], [inclusion_indicaInclusionor], [description]) VALUES (N'NCI-2016-01417', N'NCT02912559', N'', N'Inclusion', N'"Platelet count >= 100,000 mm^3; platelets >= 75,000 required for patients who received cycle 1 of mFOLFOX6 prior to registration"')
INSERT [dbo].[NCI_Trials] ([nci_id], [nct_id], [id], [inclusion_indicaInclusionor], [description]) VALUES (N'NCI-2016-01430', N'NCT02921269', N'', N'Inclusion', N'"Platelets >= 100,000/mcL"')
INSERT [dbo].[NCI_Trials] ([nci_id], [nct_id], [id], [inclusion_indicaInclusionor], [description]) VALUES (N'NCI-2016-01461', N'NCT02923778', N'', N'Inclusion', N'"Platelets >= 100,000/uL"')
INSERT [dbo].[NCI_Trials] ([nci_id], [nct_id], [id], [inclusion_indicaInclusionor], [description]) VALUES (N'NCI-2016-01494', N'NCT02981628', N'', N'N/A', N'')
INSERT [dbo].[NCI_Trials] ([nci_id], [nct_id], [id], [inclusion_indicaInclusionor], [description]) VALUES (N'NCI-2016-01501', N'NCT02936752', N'', N'N/A', N'')
INSERT [dbo].[NCI_Trials] ([nci_id], [nct_id], [id], [inclusion_indicaInclusionor], [description]) VALUES (N'NCI-2016-01502', N'NCT02305654', N'', N'N/A', N'')
INSERT [dbo].[NCI_Trials] ([nci_id], [nct_id], [id], [inclusion_indicaInclusionor], [description]) VALUES (N'NCI-2016-01588', N'NCT03007147', N'', N'N/A', N'')
INSERT [dbo].[NCI_Trials] ([nci_id], [nct_id], [id], [inclusion_indicaInclusionor], [description]) VALUES (N'NCI-2016-01595', N'NCT02954874', N'', N'Inclusion', N'"Platelets >= 100,000/mcL"')
INSERT [dbo].[NCI_Trials] ([nci_id], [nct_id], [id], [inclusion_indicaInclusionor], [description]) VALUES (N'NCI-2016-01597', N'NCT03373760', N'', N'N/A', N'')
INSERT [dbo].[NCI_Trials] ([nci_id], [nct_id], [id], [inclusion_indicaInclusionor], [description]) VALUES (N'NCI-2016-01619', N'NCT03180268', N'', N'N/A', N'')
INSERT [dbo].[NCI_Trials] ([nci_id], [nct_id], [id], [inclusion_indicaInclusionor], [description]) VALUES (N'NCI-2016-01698', N'NCT02965716', N'', N'Inclusion', N'"Platelets >= 100,000/mcL"')
INSERT [dbo].[NCI_Trials] ([nci_id], [nct_id], [id], [inclusion_indicaInclusionor], [description]) VALUES (N'NCI-2016-01733', N'NCT02971501', N'', N'Inclusion', N'"Platelets >= 75,000/mcL"')
INSERT [dbo].[NCI_Trials] ([nci_id], [nct_id], [id], [inclusion_indicaInclusionor], [description]) VALUES (N'NCI-2016-01769', N'NCT02974621', N'', N'Inclusion', N'"Platelets >= 100,000/mcL"')
INSERT [dbo].[NCI_Trials] ([nci_id], [nct_id], [id], [inclusion_indicaInclusionor], [description]) VALUES (N'NCI-2016-01771', N'NCT03274687', N'', N'N/A', N'')
INSERT [dbo].[NCI_Trials] ([nci_id], [nct_id], [id], [inclusion_indicaInclusionor], [description]) VALUES (N'NCI-2016-01804', N'NCT02978625', N'', N'Inclusion', N'Platelets >= 75 x 10^9/L')
INSERT [dbo].[NCI_Trials] ([nci_id], [nct_id], [id], [inclusion_indicaInclusionor], [description]) VALUES (N'NCI-2016-01825', N'NCT03188393', N'', N'N/A', N'')
INSERT [dbo].[NCI_Trials] ([nci_id], [nct_id], [id], [inclusion_indicaInclusionor], [description]) VALUES (N'NCI-2016-01844', N'NCT03300544', N'', N'Inclusion', N'"Platelets >= 100,000 x 10^9 /L"')
INSERT [dbo].[NCI_Trials] ([nci_id], [nct_id], [id], [inclusion_indicaInclusionor], [description]) VALUES (N'NCI-2016-01847', N'NCT03250299', N'', N'Inclusion', N'"Platelets >= 100,000/mcL"')
INSERT [dbo].[NCI_Trials] ([nci_id], [nct_id], [id], [inclusion_indicaInclusionor], [description]) VALUES (N'NCI-2016-01909', N'NCT02993146', N'', N'Inclusion', N'"Platelets >= 100,000/mcL"')
INSERT [dbo].[NCI_Trials] ([nci_id], [nct_id], [id], [inclusion_indicaInclusionor], [description]) VALUES (N'NCI-2016-01981', N'NCT03150693', N'', N'N/A', N'')
INSERT [dbo].[NCI_Trials] ([nci_id], [nct_id], [id], [inclusion_indicaInclusionor], [description]) VALUES (N'NCI-2016-02009', N'NCT03186898', N'', N'Inclusion', N'"Platelets >= 50,000 cells/mm^3"')
INSERT [dbo].[NCI_Trials] ([nci_id], [nct_id], [id], [inclusion_indicaInclusionor], [description]) VALUES (N'NCI-2016-02060', N'NCT03216499', N'', N'Inclusion', N'"Platelets >= 100,000/mcL"')
INSERT [dbo].[NCI_Trials] ([nci_id], [nct_id], [id], [inclusion_indicaInclusionor], [description]) VALUES (N'NCI-2017-00009', N'NCT03269669', N'', N'Inclusion', N'Platelets >= 750/mcL')
INSERT [dbo].[NCI_Trials] ([nci_id], [nct_id], [id], [inclusion_indicaInclusionor], [description]) VALUES (N'NCI-2017-00058', N'NCT03018249', N'', N'Inclusion', N'"Platelets >= 100,000/ul"')
INSERT [dbo].[NCI_Trials] ([nci_id], [nct_id], [id], [inclusion_indicaInclusionor], [description]) VALUES (N'NCI-2017-00105', N'NCT03033576', N'', N'Inclusion', N'"Platelets >= 100,000/mcL"')
INSERT [dbo].[NCI_Trials] ([nci_id], [nct_id], [id], [inclusion_indicaInclusionor], [description]) VALUES (N'NCI-2017-00135', N'NCT03377556 ', N'', N'N/A', N'')
INSERT [dbo].[NCI_Trials] ([nci_id], [nct_id], [id], [inclusion_indicaInclusionor], [description]) VALUES (N'NCI-2017-00178', N'NCT03067181', N'', N'N/A', N'')
INSERT [dbo].[NCI_Trials] ([nci_id], [nct_id], [id], [inclusion_indicaInclusionor], [description]) VALUES (N'NCI-2017-00203', N'NCT03180502', N'', N'Inclusion', N'"Platelets >= 100,000 cells/mm^3"')
INSERT [dbo].[NCI_Trials] ([nci_id], [nct_id], [id], [inclusion_indicaInclusionor], [description]) VALUES (N'NCI-2017-00712', N'NCT03148275', N'', N'Inclusion', N'Platelets >= 75 x 10^9/L')
INSERT [dbo].[NCI_Trials] ([nci_id], [nct_id], [id], [inclusion_indicaInclusionor], [description]) VALUES (N'NCI-2017-00766', N'NCT03233204', N'', N'Inclusion', N'"For patients with solid tumors without known bone marrow involvement:

* Platelet count >= 100,000/mm^3 (transfusion independent, defined as not receiving platelet transfusions for at least 7 days prior to enrollment)"')
INSERT [dbo].[NCI_Trials] ([nci_id], [nct_id], [id], [inclusion_indicaInclusionor], [description]) VALUES (N'NCI-2017-01030', N'NCT03206047', N'', N'Inclusion', N'"Platelets >= 100,000/mcL"')
INSERT [dbo].[NCI_Trials] ([nci_id], [nct_id], [id], [inclusion_indicaInclusionor], [description]) VALUES (N'NCI-2017-01111', N'NCT03233191', N'', N'N/A', N'')
INSERT [dbo].[NCI_Trials] ([nci_id], [nct_id], [id], [inclusion_indicaInclusionor], [description]) VALUES (N'NCI-2017-01243', N'NCT03213652', N'', N'N/A', N'')
INSERT [dbo].[NCI_Trials] ([nci_id], [nct_id], [id], [inclusion_indicaInclusionor], [description]) VALUES (N'NCI-2017-01244', N'NCT03220035', N'', N'N/A', N'')
INSERT [dbo].[NCI_Trials] ([nci_id], [nct_id], [id], [inclusion_indicaInclusionor], [description]) VALUES (N'NCI-2017-01245', N'NCT03213665', N'', N'N/A', N'')
INSERT [dbo].[NCI_Trials] ([nci_id], [nct_id], [id], [inclusion_indicaInclusionor], [description]) VALUES (N'NCI-2017-01249', N'NCT03213678', N'', N'N/A', N'')
INSERT [dbo].[NCI_Trials] ([nci_id], [nct_id], [id], [inclusion_indicaInclusionor], [description]) VALUES (N'NCI-2017-01250', N'NCT03213691', N'', N'N/A', N'')
INSERT [dbo].[NCI_Trials] ([nci_id], [nct_id], [id], [inclusion_indicaInclusionor], [description]) VALUES (N'NCI-2017-01251', N'NCT03155620', N'', N'N/A', N'')
INSERT [dbo].[NCI_Trials] ([nci_id], [nct_id], [id], [inclusion_indicaInclusionor], [description]) VALUES (N'NCI-2017-01264', N'NCT03213704', N'', N'N/A', N'')
INSERT [dbo].[NCI_Trials] ([nci_id], [nct_id], [id], [inclusion_indicaInclusionor], [description]) VALUES (N'NCI-2017-01425', N'NCT03244384', N'', N'N/A', N'')
USE [master]
GO
ALTER DATABASE [NCIT] SET  READ_WRITE 
GO
