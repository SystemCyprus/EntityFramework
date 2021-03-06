USE [master]
GO
/****** Object:  Database [NorthernLights]    Script Date: 2021-08-22 10:11:46 PM ******/
CREATE DATABASE [NorthernLights]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'NorthernLights', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER02\MSSQL\DATA\NorthernLights.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'NorthernLights_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER02\MSSQL\DATA\NorthernLights_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [NorthernLights] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [NorthernLights].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [NorthernLights] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [NorthernLights] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [NorthernLights] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [NorthernLights] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [NorthernLights] SET ARITHABORT OFF 
GO
ALTER DATABASE [NorthernLights] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [NorthernLights] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [NorthernLights] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [NorthernLights] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [NorthernLights] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [NorthernLights] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [NorthernLights] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [NorthernLights] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [NorthernLights] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [NorthernLights] SET  DISABLE_BROKER 
GO
ALTER DATABASE [NorthernLights] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [NorthernLights] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [NorthernLights] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [NorthernLights] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [NorthernLights] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [NorthernLights] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [NorthernLights] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [NorthernLights] SET RECOVERY FULL 
GO
ALTER DATABASE [NorthernLights] SET  MULTI_USER 
GO
ALTER DATABASE [NorthernLights] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [NorthernLights] SET DB_CHAINING OFF 
GO
ALTER DATABASE [NorthernLights] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [NorthernLights] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [NorthernLights] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [NorthernLights] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'NorthernLights', N'ON'
GO
ALTER DATABASE [NorthernLights] SET QUERY_STORE = OFF
GO
USE [NorthernLights]
GO
/****** Object:  Table [dbo].[Admission]    Script Date: 2021-08-22 10:11:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Admission](
	[IdAdmission] [varchar](50) NOT NULL,
	[Chirurgie] [bit] NOT NULL,
	[DateChirurgie] [date] NULL,
	[DateAdmission] [date] NOT NULL,
	[DateConge] [date] NULL,
	[Nas] [varchar](50) NOT NULL,
	[Televiseur] [bit] NOT NULL,
	[Telephone] [bit] NOT NULL,
	[NumeroLit] [varchar](50) NULL,
	[IdMedecin] [varchar](50) NULL,
	[CoutTotal] [money] NOT NULL,
 CONSTRAINT [PK_Admission] PRIMARY KEY CLUSTERED 
(
	[IdAdmission] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Assurance]    Script Date: 2021-08-22 10:11:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Assurance](
	[IdAssurance] [varchar](50) NOT NULL,
	[NomCompanie] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Assurance] PRIMARY KEY CLUSTERED 
(
	[IdAssurance] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Departement]    Script Date: 2021-08-22 10:11:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Departement](
	[IdDepartement] [varchar](50) NOT NULL,
	[NomDepartement] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Departement] PRIMARY KEY CLUSTERED 
(
	[IdDepartement] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Lit]    Script Date: 2021-08-22 10:11:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Lit](
	[NumeroLit] [varchar](50) NOT NULL,
	[Occupe] [bit] NOT NULL,
	[IdType] [varchar](50) NOT NULL,
	[IdDepartement] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Lit] PRIMARY KEY CLUSTERED 
(
	[NumeroLit] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Medecin]    Script Date: 2021-08-22 10:11:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Medecin](
	[IdMedecin] [varchar](50) NOT NULL,
	[NomMedecin] [varchar](50) NOT NULL,
	[PrenomMedecin] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Medecin] PRIMARY KEY CLUSTERED 
(
	[IdMedecin] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Patient]    Script Date: 2021-08-22 10:11:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Patient](
	[Nas] [varchar](50) NOT NULL,
	[NomPatient] [varchar](50) NOT NULL,
	[PrenomPatient] [varchar](50) NOT NULL,
	[DateNaissance] [date] NOT NULL,
	[Adresse] [varchar](120) NOT NULL,
	[Ville] [varchar](50) NOT NULL,
	[Province] [varchar](50) NOT NULL,
	[CodePostal] [varchar](6) NOT NULL,
	[Telephone] [varchar](15) NULL,
	[IdAssurance] [varchar](50) NULL,
 CONSTRAINT [PK_Patient] PRIMARY KEY CLUSTERED 
(
	[Nas] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TypeLit]    Script Date: 2021-08-22 10:11:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TypeLit](
	[IdType] [varchar](50) NOT NULL,
	[Description] [varchar](120) NULL,
 CONSTRAINT [PK_TypeLit] PRIMARY KEY CLUSTERED 
(
	[IdType] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Admission] ([IdAdmission], [Chirurgie], [DateChirurgie], [DateAdmission], [DateConge], [Nas], [Televiseur], [Telephone], [NumeroLit], [IdMedecin], [CoutTotal]) VALUES (N'09782', 1, CAST(N'2021-12-09' AS Date), CAST(N'2021-08-22' AS Date), NULL, N'234456567', 1, 1, N'09800', N'44444', 50.0000)
INSERT [dbo].[Admission] ([IdAdmission], [Chirurgie], [DateChirurgie], [DateAdmission], [DateConge], [Nas], [Televiseur], [Telephone], [NumeroLit], [IdMedecin], [CoutTotal]) VALUES (N'09876', 1, CAST(N'2021-12-28' AS Date), CAST(N'2020-12-25' AS Date), NULL, N'123456789', 0, 0, N'34567', N'44444', 0.0000)
INSERT [dbo].[Admission] ([IdAdmission], [Chirurgie], [DateChirurgie], [DateAdmission], [DateConge], [Nas], [Televiseur], [Telephone], [NumeroLit], [IdMedecin], [CoutTotal]) VALUES (N'12345', 0, CAST(N'2021-12-17' AS Date), CAST(N'2020-09-16' AS Date), CAST(N'2021-08-22' AS Date), N'454545454', 1, 0, N'55555', N'23423', 274.5000)
INSERT [dbo].[Admission] ([IdAdmission], [Chirurgie], [DateChirurgie], [DateAdmission], [DateConge], [Nas], [Televiseur], [Telephone], [NumeroLit], [IdMedecin], [CoutTotal]) VALUES (N'34118', 0, NULL, CAST(N'2021-08-22' AS Date), CAST(N'2021-08-22' AS Date), N'111111111', 1, 0, N'88888', N'34567', 578.5000)
INSERT [dbo].[Admission] ([IdAdmission], [Chirurgie], [DateChirurgie], [DateAdmission], [DateConge], [Nas], [Televiseur], [Telephone], [NumeroLit], [IdMedecin], [CoutTotal]) VALUES (N'45678', 0, NULL, CAST(N'2019-11-23' AS Date), CAST(N'2021-08-22' AS Date), N'987654321', 1, 1, N'12345', N'34567', 50.0000)
GO
INSERT [dbo].[Assurance] ([IdAssurance], [NomCompanie]) VALUES (N'00000', N'RAMQ')
INSERT [dbo].[Assurance] ([IdAssurance], [NomCompanie]) VALUES (N'22222', N'Croix Bleue')
INSERT [dbo].[Assurance] ([IdAssurance], [NomCompanie]) VALUES (N'44444', N'Sunlife')
INSERT [dbo].[Assurance] ([IdAssurance], [NomCompanie]) VALUES (N'66666', N'Manuvie')
GO
INSERT [dbo].[Departement] ([IdDepartement], [NomDepartement]) VALUES (N'00', N'Chirurgie')
INSERT [dbo].[Departement] ([IdDepartement], [NomDepartement]) VALUES (N'01', N'Urgence')
INSERT [dbo].[Departement] ([IdDepartement], [NomDepartement]) VALUES (N'02', N'Neurologie')
INSERT [dbo].[Departement] ([IdDepartement], [NomDepartement]) VALUES (N'03', N'Psychiatrie')
INSERT [dbo].[Departement] ([IdDepartement], [NomDepartement]) VALUES (N'04', N'Radiologie')
INSERT [dbo].[Departement] ([IdDepartement], [NomDepartement]) VALUES (N'05', N'Pediatrie')
GO
INSERT [dbo].[Lit] ([NumeroLit], [Occupe], [IdType], [IdDepartement]) VALUES (N'09800', 1, N'0', N'05')
INSERT [dbo].[Lit] ([NumeroLit], [Occupe], [IdType], [IdDepartement]) VALUES (N'12345', 0, N'0', N'03')
INSERT [dbo].[Lit] ([NumeroLit], [Occupe], [IdType], [IdDepartement]) VALUES (N'23456', 0, N'1', N'00')
INSERT [dbo].[Lit] ([NumeroLit], [Occupe], [IdType], [IdDepartement]) VALUES (N'34567', 1, N'0', N'04')
INSERT [dbo].[Lit] ([NumeroLit], [Occupe], [IdType], [IdDepartement]) VALUES (N'55555', 0, N'1', N'02')
INSERT [dbo].[Lit] ([NumeroLit], [Occupe], [IdType], [IdDepartement]) VALUES (N'78787', 0, N'2', N'05')
INSERT [dbo].[Lit] ([NumeroLit], [Occupe], [IdType], [IdDepartement]) VALUES (N'88888', 0, N'2', N'01')
GO
INSERT [dbo].[Medecin] ([IdMedecin], [NomMedecin], [PrenomMedecin]) VALUES (N'23423', N'Nathaniel', N'Lavoie')
INSERT [dbo].[Medecin] ([IdMedecin], [NomMedecin], [PrenomMedecin]) VALUES (N'2345234', N'Nouveau', N'Patient')
INSERT [dbo].[Medecin] ([IdMedecin], [NomMedecin], [PrenomMedecin]) VALUES (N'34567', N'Nouveau', N'Medecin')
INSERT [dbo].[Medecin] ([IdMedecin], [NomMedecin], [PrenomMedecin]) VALUES (N'44444', N'Jao', N'Sama')
GO
INSERT [dbo].[Patient] ([Nas], [NomPatient], [PrenomPatient], [DateNaissance], [Adresse], [Ville], [Province], [CodePostal], [Telephone], [IdAssurance]) VALUES (N'111111111', N'Sedkaoui', N'Samia', CAST(N'0001-01-01' AS Date), N'900 Principale', N'Laval', N'Mississippi', N'H2C6D7', N'(450) 777 5555', N'00000')
INSERT [dbo].[Patient] ([Nas], [NomPatient], [PrenomPatient], [DateNaissance], [Adresse], [Ville], [Province], [CodePostal], [Telephone], [IdAssurance]) VALUES (N'123456789', N'Joseph', N'Andre', CAST(N'1980-09-15' AS Date), N'234 rue Principale', N'Ottawa', N'Ontario', N'H0H0H0', N'(323) 123 4567', N'22222')
INSERT [dbo].[Patient] ([Nas], [NomPatient], [PrenomPatient], [DateNaissance], [Adresse], [Ville], [Province], [CodePostal], [Telephone], [IdAssurance]) VALUES (N'234456567', N'Test', N'Encore', CAST(N'0001-01-01' AS Date), N'456 une Avenue', N'Bucuresti', N'Baia Mare', N'H0H0H0', N'(369) 444 5678', N'00000')
INSERT [dbo].[Patient] ([Nas], [NomPatient], [PrenomPatient], [DateNaissance], [Adresse], [Ville], [Province], [CodePostal], [Telephone], [IdAssurance]) VALUES (N'454545454', N'Vasile', N'Toumie', CAST(N'1957-11-13' AS Date), N'999 Gouin', N'Montreal', N'Québec', N'R5D9K2', N'(234) 452 9980', N'44444')
INSERT [dbo].[Patient] ([Nas], [NomPatient], [PrenomPatient], [DateNaissance], [Adresse], [Ville], [Province], [CodePostal], [Telephone], [IdAssurance]) VALUES (N'555666777', N'Khaled', N'Master', CAST(N'0001-01-01' AS Date), N'123  rue des Maitres', N'McMasterville', N'Quebec', N'H8G3F8', N'(514) 345 6789', N'00000')
INSERT [dbo].[Patient] ([Nas], [NomPatient], [PrenomPatient], [DateNaissance], [Adresse], [Ville], [Province], [CodePostal], [Telephone], [IdAssurance]) VALUES (N'777777777', N'Jones', N'Mike', CAST(N'1985-12-18' AS Date), N'8853 Orchard', N'Orangeville', N'Manitoba', N'K3H9H3', N'(450) 345 9083', N'66666')
INSERT [dbo].[Patient] ([Nas], [NomPatient], [PrenomPatient], [DateNaissance], [Adresse], [Ville], [Province], [CodePostal], [Telephone], [IdAssurance]) VALUES (N'987654321', N'Ander', N'Alex', CAST(N'1973-01-23' AS Date), N'345 Saint-Germain', N'Montreal', N'Québec', N'D3K0E3', N'(514) 987 6543', N'00000')
INSERT [dbo].[Patient] ([Nas], [NomPatient], [PrenomPatient], [DateNaissance], [Adresse], [Ville], [Province], [CodePostal], [Telephone], [IdAssurance]) VALUES (N'999999999', N'Marin', N'Valentin', CAST(N'0001-01-01' AS Date), N'873 ma Rue', N'Levis', N'Alberta', N'F9E2L8', N'(819) 321 0000', N'22222')
GO
INSERT [dbo].[TypeLit] ([IdType], [Description]) VALUES (N'0', N'Standard')
INSERT [dbo].[TypeLit] ([IdType], [Description]) VALUES (N'1', N'Semi privé')
INSERT [dbo].[TypeLit] ([IdType], [Description]) VALUES (N'2', N'Privé')
GO
ALTER TABLE [dbo].[Patient] ADD  CONSTRAINT [DF_Patient_idAssurance]  DEFAULT ((0)) FOR [IdAssurance]
GO
ALTER TABLE [dbo].[Admission]  WITH CHECK ADD  CONSTRAINT [FK_Admission_Lit] FOREIGN KEY([NumeroLit])
REFERENCES [dbo].[Lit] ([NumeroLit])
GO
ALTER TABLE [dbo].[Admission] CHECK CONSTRAINT [FK_Admission_Lit]
GO
ALTER TABLE [dbo].[Admission]  WITH CHECK ADD  CONSTRAINT [FK_Admission_Medecin] FOREIGN KEY([IdMedecin])
REFERENCES [dbo].[Medecin] ([IdMedecin])
GO
ALTER TABLE [dbo].[Admission] CHECK CONSTRAINT [FK_Admission_Medecin]
GO
ALTER TABLE [dbo].[Admission]  WITH CHECK ADD  CONSTRAINT [FK_Admission_Patient] FOREIGN KEY([Nas])
REFERENCES [dbo].[Patient] ([Nas])
GO
ALTER TABLE [dbo].[Admission] CHECK CONSTRAINT [FK_Admission_Patient]
GO
ALTER TABLE [dbo].[Lit]  WITH CHECK ADD  CONSTRAINT [FK_Lit_Departement] FOREIGN KEY([IdDepartement])
REFERENCES [dbo].[Departement] ([IdDepartement])
GO
ALTER TABLE [dbo].[Lit] CHECK CONSTRAINT [FK_Lit_Departement]
GO
ALTER TABLE [dbo].[Lit]  WITH CHECK ADD  CONSTRAINT [FK_Lit_TypeLit] FOREIGN KEY([IdType])
REFERENCES [dbo].[TypeLit] ([IdType])
GO
ALTER TABLE [dbo].[Lit] CHECK CONSTRAINT [FK_Lit_TypeLit]
GO
ALTER TABLE [dbo].[Patient]  WITH CHECK ADD  CONSTRAINT [FK_Patient_Assurance] FOREIGN KEY([IdAssurance])
REFERENCES [dbo].[Assurance] ([IdAssurance])
GO
ALTER TABLE [dbo].[Patient] CHECK CONSTRAINT [FK_Patient_Assurance]
GO
USE [master]
GO
ALTER DATABASE [NorthernLights] SET  READ_WRITE 
GO
