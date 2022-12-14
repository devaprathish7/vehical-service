USE [master]
GO
/****** Object:  Database [Hospital]    Script Date: 21-06-22 04:04:22 ******/
CREATE DATABASE [SpareVechicle]
 
GO
USE [SpareVechicle]
GO
/****** Object:  Table [dbo].[Alloted]    Script Date: 21-06-22 04:04:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Alloted](
	[PatientName] [nvarchar](max) NULL,
	[EMailID] [nvarchar](max) NULL,
	[Discription] [nvarchar](max) NULL,
	[Status] [nvarchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BookingNew]    Script Date: 21-06-22 04:04:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BookingNew](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](max) NULL,
	[DateOfBirth] [nvarchar](max) NULL,
	[Gender] [nchar](10) NULL,
	[Mobile] [nchar](10) NULL,
	[EMailID] [nvarchar](max) NULL,
	[AppointMent] [nvarchar](max) NULL,
	[Time] [nvarchar](max) NULL,
	[Disease] [nvarchar](max) NULL,
	[Status] [nchar](10) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CanApp]    Script Date: 21-06-22 04:04:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CanApp](
	[PatientName] [nvarchar](max) NULL,
	[EMailID] [nvarchar](max) NULL,
	[Reason] [nvarchar](max) NULL,
	[AllotedTime] [nvarchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Conform]    Script Date: 21-06-22 04:04:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Conform](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[EMailID] [nvarchar](max) NULL,
	[Time] [nvarchar](max) NULL,
	[Message] [nvarchar](max) NULL,
	[Status] [nvarchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Doctor]    Script Date: 21-06-22 04:04:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Doctor](
	[DoctorName] [nvarchar](max) NULL,
	[Gender] [nchar](10) NULL,
	[Qualification] [nvarchar](max) NULL,
	[Specialist] [nvarchar](max) NULL,
	[Experience] [nchar](10) NULL,
	[EMailID] [nvarchar](max) NULL,
	[DateofBirth] [nvarchar](max) NULL,
	[Mobile] [nchar](10) NULL,
	[Address] [nvarchar](max) NULL,
	[DoctorUsername] [nvarchar](max) NULL,
	[Password] [nvarchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DoctorR]    Script Date: 21-06-22 04:04:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DoctorR](
	[Name] [nvarchar](max) NULL,
	[EMailID] [nvarchar](max) NULL,
	[Date] [nvarchar](max) NULL,
	[PermisisionReason] [nvarchar](max) NULL,
	[Status] [nvarchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Register]    Script Date: 21-06-22 04:04:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Register](
	[EmailID] [nvarchar](max) NULL,
	[UserName] [nvarchar](max) NULL,
	[Password] [nvarchar](max) NULL,
	[ConformPassword] [nvarchar](max) NULL,
	[Gender] [nchar](10) NULL,
	[Address] [nvarchar](max) NULL,
	[ZipCode] [nchar](10) NULL,
	[MobileNo] [nchar](10) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[Alloted] ([PatientName], [EMailID], [Discription], [Status]) VALUES (N'kumar', N'sampledemoprojects@gmail.com', N'Your appointment specialist is not avaiable on your scheduled slot.so we will arrange the alternate specialst.', N'Alloted')
INSERT [dbo].[Alloted] ([PatientName], [EMailID], [Discription], [Status]) VALUES (N'karthick', N'sampledemoprojects@gmail.com', N'Your Requested doctor is not available.so we will arrange alternate specialist for you.', N'Alloted')
INSERT [dbo].[Alloted] ([PatientName], [EMailID], [Discription], [Status]) VALUES (N'mani', N'mani@gmail.com', N'okok projects', N'Alloted')
INSERT [dbo].[Alloted] ([PatientName], [EMailID], [Discription], [Status]) VALUES (N'mani', N'mani@gmail.com', N'working work', N'Alloted')
INSERT [dbo].[Alloted] ([PatientName], [EMailID], [Discription], [Status]) VALUES (N'ram', N'ram@gmail.com', N'your service not completed with 4 day will take', N'Alloted')
GO
SET IDENTITY_INSERT [dbo].[BookingNew] ON 

INSERT [dbo].[BookingNew] ([ID], [Name], [DateOfBirth], [Gender], [Mobile], [EMailID], [AppointMent], [Time], [Disease], [Status]) VALUES (1, N'suren', N'20/10/1989', N'Male      ', N'9638527410', N'sampledemoprojects@gmail.com', N'2/1/2015', N'7.00pm-8.00pm', N'Viral ', N'Conformed ')
INSERT [dbo].[BookingNew] ([ID], [Name], [DateOfBirth], [Gender], [Mobile], [EMailID], [AppointMent], [Time], [Disease], [Status]) VALUES (2, N'surendar', N'20/10/1989', N'Male      ', N'9638527410', N'sampledemoprojects@gmail.com', N'3/1/2015', N'7.00pm-8.00pm', N'Fever', N'Conformed ')
INSERT [dbo].[BookingNew] ([ID], [Name], [DateOfBirth], [Gender], [Mobile], [EMailID], [AppointMent], [Time], [Disease], [Status]) VALUES (3, N'vivek', N'20/10/1989', N'Male      ', N'9638527410', N'sampledemoprojects@gmail.com', N'3/01/2015', N'7.00pm-8.00pm', N'General Checkup', N'Conformed ')
INSERT [dbo].[BookingNew] ([ID], [Name], [DateOfBirth], [Gender], [Mobile], [EMailID], [AppointMent], [Time], [Disease], [Status]) VALUES (4, N'tata car', N'9-10-22', N'Male      ', N'7894561230', N'tata@gmail.com', N'10-12-22', N'6.00pm-7.00pm>', N'oil changed to service center', N'Request   ')
INSERT [dbo].[BookingNew] ([ID], [Name], [DateOfBirth], [Gender], [Mobile], [EMailID], [AppointMent], [Time], [Disease], [Status]) VALUES (5, N'Tata Motor Elit', N'02-10-2021', N'Male      ', N'8974561230', N'ram@gmail.com', N'21-06-2022', N'7.00pm-8.00pm', N'oil change head problem today clear all services', N'Request   ')
SET IDENTITY_INSERT [dbo].[BookingNew] OFF
GO
INSERT [dbo].[CanApp] ([PatientName], [EMailID], [Reason], [AllotedTime]) VALUES (N'muthu', N'muthu@gmail.com', N'i will come next week', N'6.00-7.00')
INSERT [dbo].[CanApp] ([PatientName], [EMailID], [Reason], [AllotedTime]) VALUES (N'mani', N'mani@gmail.com', N'change not good service  my car', N'6.00pm-7.00pm')
GO
INSERT [dbo].[Doctor] ([DoctorName], [Gender], [Qualification], [Specialist], [Experience], [EMailID], [DateofBirth], [Mobile], [Address], [DoctorUsername], [Password]) VALUES (N'Adam', N'Male      ', N'MBBS,MS', N'General ', N'10+       ', N'sampledemoprojects@gmail.com', N'14/02/1980', N'7418529630', N'NO.3 Lal street', N'Adam12', N'123456')
INSERT [dbo].[Doctor] ([DoctorName], [Gender], [Qualification], [Specialist], [Experience], [EMailID], [DateofBirth], [Mobile], [Address], [DoctorUsername], [Password]) VALUES (N'karthick', N'Male      ', N'MBBS,MS', N'ortho', N'5+        ', N'sampledemoprojects@gmail.com', N'14/02/1980', N'7418529630', N'No.3 new street,chennai', N'karthick15', N'123456')
INSERT [dbo].[Doctor] ([DoctorName], [Gender], [Qualification], [Specialist], [Experience], [EMailID], [DateofBirth], [Mobile], [Address], [DoctorUsername], [Password]) VALUES (N'mani', N'Male      ', N'mca', N'Honda', N'5         ', N'mani@gmail.com', N'09-10-22', N'7894561230', N'chennai', N'mani', N'mani')
INSERT [dbo].[Doctor] ([DoctorName], [Gender], [Qualification], [Specialist], [Experience], [EMailID], [DateofBirth], [Mobile], [Address], [DoctorUsername], [Password]) VALUES (N'kumar', N'Male      ', N'controlser', N'5', N'10 years  ', N'ford@gmail.com', N'10-10-20', N'7894561230', N'chennai', N'bala', N'bala')
INSERT [dbo].[Doctor] ([DoctorName], [Gender], [Qualification], [Specialist], [Experience], [EMailID], [DateofBirth], [Mobile], [Address], [DoctorUsername], [Password]) VALUES (N'R2 Service Center', N'Male      ', N'Manager', N'Service Controler', N'12 year   ', N'r2@gmail.com', N'10-10-2020', N'7894561230', N'chennai', N'raja', N'raja')
GO
INSERT [dbo].[DoctorR] ([Name], [EMailID], [Date], [PermisisionReason], [Status]) VALUES (N'rajesh', N'rajesh@gmail.com', N'1/1/2015', N'Personal Work', N'Approved')
INSERT [dbo].[DoctorR] ([Name], [EMailID], [Date], [PermisisionReason], [Status]) VALUES (N'karthick', N'sampledemoprojects@gmail.com', N'4/01/2015', N'Tomorrow going to hometown.Please accept my request', N'Approved')
INSERT [dbo].[DoctorR] ([Name], [EMailID], [Date], [PermisisionReason], [Status]) VALUES (N'kumar', N'kumar@gmail.com', N'10-12-22', N'working system car', N'Approved')
INSERT [dbo].[DoctorR] ([Name], [EMailID], [Date], [PermisisionReason], [Status]) VALUES (N'ram', N'ram@gmail.com', N'21-06-2022', N'your work not completed service center lot off work pending', N'Approved')
GO
INSERT [dbo].[Register] ([EmailID], [UserName], [Password], [ConformPassword], [Gender], [Address], [ZipCode], [MobileNo]) VALUES (N'sampledemoprojects@gmail.com', N'surendar', N'123456', N'123456', N'Male      ', N'no.3 nathu street', N'607001    ', N'8529637419')
INSERT [dbo].[Register] ([EmailID], [UserName], [Password], [ConformPassword], [Gender], [Address], [ZipCode], [MobileNo]) VALUES (N'sampledemoprojects@gmail.com', N'vivek', N'123456', N'123456', N'Male      ', N'No.3 raja street,chennai', N'607005    ', N'9638527410')
INSERT [dbo].[Register] ([EmailID], [UserName], [Password], [ConformPassword], [Gender], [Address], [ZipCode], [MobileNo]) VALUES (N'kumar@gmail.com', N'kumar', N'kumar', N'kumar', N'Male      ', N'chennai', N'605001    ', N'7894561230')
INSERT [dbo].[Register] ([EmailID], [UserName], [Password], [ConformPassword], [Gender], [Address], [ZipCode], [MobileNo]) VALUES (N'ram@gmail.com', N'ram', N'ram', N'ram', N'Male      ', N'chennai', N'600040    ', N'7894561235')
GO
USE [master]
GO
ALTER DATABASE [Hospital] SET  READ_WRITE 
GO
