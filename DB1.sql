USE [master]
GO
/****** Object:  Database [db1]    Script Date: 10.10.2024 13:36:28 ******/
CREATE DATABASE [db1]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'db1', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\db1.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'db1_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\db1_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [db1] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [db1].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [db1] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [db1] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [db1] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [db1] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [db1] SET ARITHABORT OFF 
GO
ALTER DATABASE [db1] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [db1] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [db1] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [db1] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [db1] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [db1] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [db1] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [db1] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [db1] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [db1] SET  DISABLE_BROKER 
GO
ALTER DATABASE [db1] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [db1] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [db1] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [db1] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [db1] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [db1] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [db1] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [db1] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [db1] SET  MULTI_USER 
GO
ALTER DATABASE [db1] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [db1] SET DB_CHAINING OFF 
GO
ALTER DATABASE [db1] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [db1] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [db1] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [db1] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [db1] SET QUERY_STORE = OFF
GO
USE [db1]
GO
/****** Object:  Table [dbo].[gender]    Script Date: 10.10.2024 13:36:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[gender](
	[id] [int] NOT NULL,
	[gend] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_gender] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[human]    Script Date: 10.10.2024 13:36:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[human](
	[id] [int] NOT NULL,
	[hum] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_human] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[type_enter]    Script Date: 10.10.2024 13:36:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[type_enter](
	[id] [int] NOT NULL,
	[type] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_type_enter] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[user]    Script Date: 10.10.2024 13:36:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[user](
	[id] [int] NOT NULL,
	[hum_id] [int] NOT NULL,
	[surname] [nvarchar](50) NOT NULL,
	[name] [nvarchar](50) NOT NULL,
	[patronim] [nvarchar](50) NOT NULL,
	[email] [nvarchar](50) NOT NULL,
	[login] [nvarchar](50) NOT NULL,
	[password] [nvarchar](50) NOT NULL,
	[phone_num] [nvarchar](50) NOT NULL,
	[pass_ser] [int] NOT NULL,
	[pass_num] [int] NOT NULL,
	[birthday] [date] NOT NULL,
	[last_enter] [date] NULL,
	[type_enter_id] [int] NULL,
	[gender_id] [int] NOT NULL,
 CONSTRAINT [PK_user] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[gender] ([id], [gend]) VALUES (1, N'ж')
INSERT [dbo].[gender] ([id], [gend]) VALUES (2, N'м')
GO
INSERT [dbo].[human] ([id], [hum]) VALUES (1, N'Администратор')
INSERT [dbo].[human] ([id], [hum]) VALUES (2, N'Исполнитель')
INSERT [dbo].[human] ([id], [hum]) VALUES (3, N'Менеджер')
GO
INSERT [dbo].[type_enter] ([id], [type]) VALUES (1, N'Неуспешно')
INSERT [dbo].[type_enter] ([id], [type]) VALUES (2, N'Успешно')
GO
INSERT [dbo].[user] ([id], [hum_id], [surname], [name], [patronim], [email], [login], [password], [phone_num], [pass_ser], [pass_num], [birthday], [last_enter], [type_enter_id], [gender_id]) VALUES (1, 3, N'Акимов', N'Ян', N'Алексеевич', N'gohufreilagrau-3818@yopmail.com', N'akimovya', N'bn069Caj', N'+7(781) 785-58-37', 2367, 558134, CAST(N'1993-07-03' AS Date), NULL, 2, 2)
INSERT [dbo].[user] ([id], [hum_id], [surname], [name], [patronim], [email], [login], [password], [phone_num], [pass_ser], [pass_num], [birthday], [last_enter], [type_enter_id], [gender_id]) VALUES (2, 2, N'Гончарова', N'Ульяна', N'Львовна', N'xawugosune-1385@yopmail.com', N'goncharovaul', N'pW4qZhL!', N'+7(230) 906-88-15', 7101, 669343, CAST(N'1975-06-22' AS Date), NULL, 2, 1)
INSERT [dbo].[user] ([id], [hum_id], [surname], [name], [patronim], [email], [login], [password], [phone_num], [pass_ser], [pass_num], [birthday], [last_enter], [type_enter_id], [gender_id]) VALUES (3, 1, N'Анохина', N'Елизавета', N'Матвеевна', N'leuttevitrafo1998@mail.ru', N'anochinaem', N'y6UNmaJg', N'+7(555) 444-83-16', 3455, 719630, CAST(N'1991-08-16' AS Date), NULL, 2, 1)
INSERT [dbo].[user] ([id], [hum_id], [surname], [name], [patronim], [email], [login], [password], [phone_num], [pass_ser], [pass_num], [birthday], [last_enter], [type_enter_id], [gender_id]) VALUES (4, 3, N'Николаев', N'Илья', N'Владиславович', N'frapreubrulloba1141@yandex.ru', N'nickolaeviv', N'ebOt@4y$', N'+7(392) 682-44-42', 2377, 871623, CAST(N'1970-12-22' AS Date), NULL, 2, 2)
INSERT [dbo].[user] ([id], [hum_id], [surname], [name], [patronim], [email], [login], [password], [phone_num], [pass_ser], [pass_num], [birthday], [last_enter], [type_enter_id], [gender_id]) VALUES (5, 2, N'Уткин', N'Дмитрий', N'Платонович', N'zapramaxesu-7741@yopmail.com', N'utkindp', N'zQt8g@GH', N'+7(836) 429-03-86', 8755, 921148, CAST(N'1999-05-04' AS Date), NULL, 1, 2)
INSERT [dbo].[user] ([id], [hum_id], [surname], [name], [patronim], [email], [login], [password], [phone_num], [pass_ser], [pass_num], [birthday], [last_enter], [type_enter_id], [gender_id]) VALUES (6, 2, N'Куликова', N'Стефания', N'Никитична', N'rouzecroummegre-3899@yopmail.com', N'kulikovasn', N'TCmE7Jon', N'+7(283) 945-30-92', 4355, 104594, CAST(N'1994-12-06' AS Date), NULL, 2, 1)
INSERT [dbo].[user] ([id], [hum_id], [surname], [name], [patronim], [email], [login], [password], [phone_num], [pass_ser], [pass_num], [birthday], [last_enter], [type_enter_id], [gender_id]) VALUES (7, 2, N'Волков', N'Егор', N'Матвеевич', N'ziyeuddocrabri-4748@yopmail.com', N'volkovem', N'pbgO3Vv5', N'+7(621) 359-36-69', 2791, 114390, CAST(N'1995-03-28' AS Date), NULL, 2, 2)
INSERT [dbo].[user] ([id], [hum_id], [surname], [name], [patronim], [email], [login], [password], [phone_num], [pass_ser], [pass_num], [birthday], [last_enter], [type_enter_id], [gender_id]) VALUES (8, 1, N'Соколова', N'Софья', N'Георгиевна', N'ketameissoinnei-1951@yopmail.com', N'sokolovasg', N'lITaH?Bs', N'+7(440) 561-03-14', 5582, 126286, CAST(N'1977-03-27' AS Date), NULL, 1, 1)
INSERT [dbo].[user] ([id], [hum_id], [surname], [name], [patronim], [email], [login], [password], [phone_num], [pass_ser], [pass_num], [birthday], [last_enter], [type_enter_id], [gender_id]) VALUES (9, 3, N'Голубева', N'Полина', N'Андреевна', N'yipraubaponou-5849@yopmail.com', N'golubevapa', N's|ke*p@~', N'+7(331) 918-24-34', 2978, 133653, CAST(N'1975-04-12' AS Date), NULL, 2, 1)
INSERT [dbo].[user] ([id], [hum_id], [surname], [name], [patronim], [email], [login], [password], [phone_num], [pass_ser], [pass_num], [birthday], [last_enter], [type_enter_id], [gender_id]) VALUES (10, 3, N'Вишневская', N'Мария', N'Андреевна', N'crapedocouca-3572@yopmail.com', N'vishnevskayama', N'OCaywHJZ', N'+7(493) 219-39-42', 7512, 141956, CAST(N'1975-12-23' AS Date), NULL, 2, 1)
INSERT [dbo].[user] ([id], [hum_id], [surname], [name], [patronim], [email], [login], [password], [phone_num], [pass_ser], [pass_num], [birthday], [last_enter], [type_enter_id], [gender_id]) VALUES (11, 3, N'Васильева', N'Арина', N'Данииловна', N'ceigoixakaunni-9227@yopmail.com', N'vasilevad', N'DAWuV%#u', N'+7(407) 485-50-30', 5046, 158433, CAST(N'2000-01-22' AS Date), NULL, 1, 1)
INSERT [dbo].[user] ([id], [hum_id], [surname], [name], [patronim], [email], [login], [password], [phone_num], [pass_ser], [pass_num], [birthday], [last_enter], [type_enter_id], [gender_id]) VALUES (12, 3, N'Павлов', N'Дмитрий', N'Максимович', N'yeimmeiwauzomo-7054@yopmail.com', N'pavlovdm', N'ptoED%zE', N'+7(919) 478-24-97', 2460, 169505, CAST(N'1983-10-03' AS Date), NULL, 1, 2)
INSERT [dbo].[user] ([id], [hum_id], [surname], [name], [patronim], [email], [login], [password], [phone_num], [pass_ser], [pass_num], [birthday], [last_enter], [type_enter_id], [gender_id]) VALUES (13, 2, N'Горбунова', N'Мирослава', N'Артуровна', N'pixil59@gmail.com', N'gorbunovama', N'ZFR2~Zl*', N'+7(482) 802-95-80', 3412, 174593, CAST(N'1998-03-03' AS Date), NULL, 2, 1)
INSERT [dbo].[user] ([id], [hum_id], [surname], [name], [patronim], [email], [login], [password], [phone_num], [pass_ser], [pass_num], [birthday], [last_enter], [type_enter_id], [gender_id]) VALUES (14, 3, N'Демина', N'София', N'Романовна', N'deummecillummu-4992@mail.ru', N'deminasr', N'D%DVKyDN', N'+7(455) 944-64-49', 4950, 183034, CAST(N'1993-06-08' AS Date), NULL, 1, 1)
INSERT [dbo].[user] ([id], [hum_id], [surname], [name], [patronim], [email], [login], [password], [phone_num], [pass_ser], [pass_num], [birthday], [last_enter], [type_enter_id], [gender_id]) VALUES (15, 2, N'Петрова', N'Алина', N'Робертовна', N'vilagajaunne-5170@yandex.ru', N'petrovaar', N'z7ZE?8N5', N'+7(710) 388-25-63', 5829, 219464, CAST(N'1980-09-23' AS Date), NULL, 2, 1)
INSERT [dbo].[user] ([id], [hum_id], [surname], [name], [patronim], [email], [login], [password], [phone_num], [pass_ser], [pass_num], [birthday], [last_enter], [type_enter_id], [gender_id]) VALUES (16, 2, N'Плотников', N'Григорий', N'Александрович', N'frusubroppotou656@yandex.ru', N'plotnikovga', N'yh+S4@yc', N'+7(759) 452-38-46', 6443, 208059, CAST(N'1991-03-13' AS Date), NULL, 2, 2)
INSERT [dbo].[user] ([id], [hum_id], [surname], [name], [patronim], [email], [login], [password], [phone_num], [pass_ser], [pass_num], [birthday], [last_enter], [type_enter_id], [gender_id]) VALUES (17, 2, N'Прохорова', N'Есения', N'Тимофеевна', N'vhopkins@lewis-mullen.com', N'prochorovaet', N'wLF186dB', N'+7(687) 801-13-32', 7079, 213265, CAST(N'1998-04-14' AS Date), NULL, NULL, 1)
INSERT [dbo].[user] ([id], [hum_id], [surname], [name], [patronim], [email], [login], [password], [phone_num], [pass_ser], [pass_num], [birthday], [last_enter], [type_enter_id], [gender_id]) VALUES (18, 2, N'Чернов', N'Алексей', N'Егорович', N'nlewis@yahoo.com', N'chernovae', N'Sjkr*1zV', N'+7(425) 783-22-53', 8207, 522702, CAST(N'1980-04-16' AS Date), NULL, 2, 2)
INSERT [dbo].[user] ([id], [hum_id], [surname], [name], [patronim], [email], [login], [password], [phone_num], [pass_ser], [pass_num], [birthday], [last_enter], [type_enter_id], [gender_id]) VALUES (19, 3, N'Горбунов', N'Степан', N'Артёмович', N'garciadavid@mckinney-mcbride.com', N'gorbunovsa', N'hFhK%$JI', N'+7(889) 449-43-91', 9307, 232158, CAST(N'1993-07-23' AS Date), NULL, 2, 2)
INSERT [dbo].[user] ([id], [hum_id], [surname], [name], [patronim], [email], [login], [password], [phone_num], [pass_ser], [pass_num], [birthday], [last_enter], [type_enter_id], [gender_id]) VALUES (20, 2, N'Рябинина', N'Софья', N'Артёмовна', N'loudittoimmolau1900@gmail.com', N'ryabininasa', N'&yw1da4K', N'+7(825) 301-82-50', 1357, 242839, CAST(N'1990-06-01' AS Date), NULL, NULL, 1)
INSERT [dbo].[user] ([id], [hum_id], [surname], [name], [patronim], [email], [login], [password], [phone_num], [pass_ser], [pass_num], [birthday], [last_enter], [type_enter_id], [gender_id]) VALUES (21, 2, N'Козлова', N'Яна', N'Даниловна', N'hittuprofassa4984@mail.com', N'kozlovayd', N'wCH7dl3k', N'+7(397) 334-20-86', 1167, 256636, CAST(N'1987-12-21' AS Date), NULL, NULL, 1)
INSERT [dbo].[user] ([id], [hum_id], [surname], [name], [patronim], [email], [login], [password], [phone_num], [pass_ser], [pass_num], [birthday], [last_enter], [type_enter_id], [gender_id]) VALUES (22, 3, N'Лукьянова', N'Ульяна', N'Олеговна', N'freineiciweijau888@yandex.ru', N'lyckyanovayo', N'JadQ24D5', N'+7(241) 570-30-40', 1768, 266986, CAST(N'1981-10-22' AS Date), NULL, NULL, 1)
INSERT [dbo].[user] ([id], [hum_id], [surname], [name], [patronim], [email], [login], [password], [phone_num], [pass_ser], [pass_num], [birthday], [last_enter], [type_enter_id], [gender_id]) VALUES (23, 2, N'Кондрашова', N'Арина', N'Ивановна', N'jessica84@hotmail.com', N'kondrashovai', N'YlBz$8vJ', N'+7(713) 462-82-65', 1710, 427875, CAST(N'1976-12-22' AS Date), NULL, 1, 1)
INSERT [dbo].[user] ([id], [hum_id], [surname], [name], [patronim], [email], [login], [password], [phone_num], [pass_ser], [pass_num], [birthday], [last_enter], [type_enter_id], [gender_id]) VALUES (24, 3, N'Быкова', N'Виктория', N'Тимуровна', N'nokupekidda2001@gmail.com', N'bykovavt', N'nx8Z$K98', N'+7(854) 822-23-31', 1806, 289145, CAST(N'1973-06-14' AS Date), NULL, NULL, 1)
INSERT [dbo].[user] ([id], [hum_id], [surname], [name], [patronim], [email], [login], [password], [phone_num], [pass_ser], [pass_num], [birthday], [last_enter], [type_enter_id], [gender_id]) VALUES (25, 2, N'Гуляев', N'Тимофей', N'Даниилович', N'ginaritter@schneider-buchanan.com', N'gylyaevtd', N'lz$kp1?f', N'+7(439) 713-61-17', 1587, 291249, CAST(N'1987-02-05' AS Date), NULL, 1, 2)
GO
ALTER TABLE [dbo].[user]  WITH CHECK ADD  CONSTRAINT [FK_user_gender] FOREIGN KEY([gender_id])
REFERENCES [dbo].[gender] ([id])
GO
ALTER TABLE [dbo].[user] CHECK CONSTRAINT [FK_user_gender]
GO
ALTER TABLE [dbo].[user]  WITH CHECK ADD  CONSTRAINT [FK_user_human] FOREIGN KEY([hum_id])
REFERENCES [dbo].[human] ([id])
GO
ALTER TABLE [dbo].[user] CHECK CONSTRAINT [FK_user_human]
GO
ALTER TABLE [dbo].[user]  WITH CHECK ADD  CONSTRAINT [FK_user_type_enter] FOREIGN KEY([type_enter_id])
REFERENCES [dbo].[type_enter] ([id])
GO
ALTER TABLE [dbo].[user] CHECK CONSTRAINT [FK_user_type_enter]
GO
USE [master]
GO
ALTER DATABASE [db1] SET  READ_WRITE 
GO
