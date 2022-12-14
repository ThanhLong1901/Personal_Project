create database StoryStore
USE [StoryStore]
GO
/****** Object:  Table [dbo].[Admin]    Script Date: 3/24/2022 15:24:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Admin](
	[username] [nvarchar](200) NOT NULL,
	[password] [nvarchar](200) NOT NULL,
 CONSTRAINT [pk_Admin] PRIMARY KEY CLUSTERED 
(
	[username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Author]    Script Date: 3/24/2022 15:24:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Author](
	[Author_ID] [nvarchar](10) NOT NULL,
	[Author_Name] [nvarchar](200) NOT NULL,
	[Author_Information] [nvarchar](200) NOT NULL,
	[Author_Type] [nvarchar](200) NOT NULL,
	[Author_Quantity] [int] NOT NULL,
 CONSTRAINT [pk_Author] PRIMARY KEY CLUSTERED 
(
	[Author_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Book]    Script Date: 3/24/2022 15:24:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Book](
	[Book_ID] [nvarchar](10) NOT NULL,
	[Book_Name] [nvarchar](200) NOT NULL,
	[Book_Image] [nvarchar](200) NOT NULL,
	[Book_Price] [int] NOT NULL,
	[Book_Author] [nvarchar](200) NOT NULL,
	[Book_Publisher] [nchar](200) NOT NULL,
	[Book_Types] [int] NOT NULL,
	[Book_Store] [nvarchar](200) NOT NULL,
	[Book_Evaluate] [nvarchar](200) NOT NULL,
 CONSTRAINT [pk_Book] PRIMARY KEY CLUSTERED 
(
	[Book_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BookAuthor]    Script Date: 3/24/2022 15:24:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BookAuthor](
	[Book_ID] [nvarchar](10) NOT NULL,
	[Author_ID] [nvarchar](10) NOT NULL,
 CONSTRAINT [pk_BookAuthor] PRIMARY KEY CLUSTERED 
(
	[Book_ID] ASC,
	[Author_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BookPublisher]    Script Date: 3/24/2022 15:24:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BookPublisher](
	[Book_ID] [nvarchar](10) NOT NULL,
	[Publisher_ID] [nvarchar](10) NOT NULL,
 CONSTRAINT [pk_BookPublisher] PRIMARY KEY CLUSTERED 
(
	[Book_ID] ASC,
	[Publisher_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BookStore]    Script Date: 3/24/2022 15:24:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BookStore](
	[Book_ID] [nvarchar](10) NOT NULL,
	[Store_ID] [nvarchar](10) NOT NULL,
 CONSTRAINT [pk_BookStore] PRIMARY KEY CLUSTERED 
(
	[Book_ID] ASC,
	[Store_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customer]    Script Date: 3/24/2022 15:24:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customer](
	[username] [nvarchar](200) NOT NULL,
	[password] [nvarchar](200) NOT NULL,
 CONSTRAINT [pk_Customer] PRIMARY KEY CLUSTERED 
(
	[username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 3/24/2022 15:24:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[Order_ID] [int] IDENTITY(1,1) NOT NULL,
	[Order_Date] [date] NOT NULL,
	[TotalMoney] [money] NULL,
 CONSTRAINT [pk_Order] PRIMARY KEY CLUSTERED 
(
	[Order_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrdersLine]    Script Date: 3/24/2022 15:24:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrdersLine](
	[Order_ID] [int] NOT NULL,
	[Book_ID] [nvarchar](10) NOT NULL,
	[Order_Quantity] [int] NOT NULL,
 CONSTRAINT [pk_OrderLine] PRIMARY KEY CLUSTERED 
(
	[Order_ID] ASC,
	[Book_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 3/24/2022 15:24:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[Product_ID] [int] IDENTITY(1,1) NOT NULL,
	[Book_ID] [nvarchar](10) NOT NULL,
	[Centent_Book] [nvarchar](max) NOT NULL,
 CONSTRAINT [pk_Product] PRIMARY KEY CLUSTERED 
(
	[Product_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Publisher]    Script Date: 3/24/2022 15:24:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Publisher](
	[Publisher_ID] [nvarchar](10) NOT NULL,
	[Publisher_Name] [nvarchar](200) NOT NULL,
	[Publisher_Address] [nvarchar](200) NOT NULL,
 CONSTRAINT [pk_Publisher] PRIMARY KEY CLUSTERED 
(
	[Publisher_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Quantity]    Script Date: 3/24/2022 15:24:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Quantity](
	[Book_ID] [nvarchar](10) NOT NULL,
	[Quantity_Sold] [int] NOT NULL,
	[Quantity_Stock] [int] NOT NULL,
 CONSTRAINT [pk_Quantity] PRIMARY KEY CLUSTERED 
(
	[Book_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Store]    Script Date: 3/24/2022 15:24:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Store](
	[Store_ID] [nvarchar](10) NOT NULL,
	[Store_Name] [nvarchar](200) NOT NULL,
	[Store_Address] [nvarchar](200) NOT NULL,
 CONSTRAINT [pk_Store] PRIMARY KEY CLUSTERED 
(
	[Store_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Types]    Script Date: 3/24/2022 15:24:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Types](
	[Types_ID] [int] NOT NULL,
	[Types_Name] [nvarchar](200) NOT NULL,
 CONSTRAINT [pk_Types] PRIMARY KEY CLUSTERED 
(
	[Types_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Admin] ([username], [password]) VALUES (N'admin', N'123')
INSERT [dbo].[Admin] ([username], [password]) VALUES (N'long', N'123')
INSERT [dbo].[Admin] ([username], [password]) VALUES (N'longp2k1', N'123')
GO
INSERT [dbo].[Author] ([Author_ID], [Author_Name], [Author_Information], [Author_Type], [Author_Quantity]) VALUES (N'A420B', N'Lạt Tiêu', N'Full Name: Hồ Ngư Lạt Tiêu', N'Truyện Teen, Ngôn Tình', 15)
INSERT [dbo].[Author] ([Author_ID], [Author_Name], [Author_Information], [Author_Type], [Author_Quantity]) VALUES (N'B440C', N'Thập Liên', N'', N'Tiên Hiệp, Trọng Sinh, Cổ Đại,', 26)
INSERT [dbo].[Author] ([Author_ID], [Author_Name], [Author_Information], [Author_Type], [Author_Quantity]) VALUES (N'C460D', N'Dư Phương', N'', N'Hiện Đại, Trọng Sinh', 21)
INSERT [dbo].[Author] ([Author_ID], [Author_Name], [Author_Information], [Author_Type], [Author_Quantity]) VALUES (N'D480E', N'Vũ Phong', N'Birthplace: China', N'Tiên Hiệp, Dị Giới, Huyền Huyễn, Xuyên Không', 20)
INSERT [dbo].[Author] ([Author_ID], [Author_Name], [Author_Information], [Author_Type], [Author_Quantity]) VALUES (N'E500F', N'Mạc Mặc', N'', N'Dị Giới, Huyền Huyền, Tiên Hiệp', 100)
INSERT [dbo].[Author] ([Author_ID], [Author_Name], [Author_Information], [Author_Type], [Author_Quantity]) VALUES (N'F520G', N'Cô Đơn Địa Phi', N'', N'Huyền Huyễn, Tiên Hiệp, Trọng Sinh', 90)
INSERT [dbo].[Author] ([Author_ID], [Author_Name], [Author_Information], [Author_Type], [Author_Quantity]) VALUES (N'G200H', N'Ngã Cật Tây Hồng Thị', N'Wife: Cửu Tuệ Hòa Ông', N'Tiên Hiệp, Huyền Huyền, Kiếm Hiệp', 20)
INSERT [dbo].[Author] ([Author_ID], [Author_Name], [Author_Information], [Author_Type], [Author_Quantity]) VALUES (N'H220I', N'Đường Gia Tam Thiếu', N'Date of birth: 1981-01-19', N'Tiên Hiệp, Huyền Huyền, Kiếm Hiệp, Dị Giới', 50)
INSERT [dbo].[Author] ([Author_ID], [Author_Name], [Author_Information], [Author_Type], [Author_Quantity]) VALUES (N'I240J', N'Tịnh Vô Ngân', N'Birthplace: China', N'Tiên Hiệp, Huyền Huyền', 20)
INSERT [dbo].[Author] ([Author_ID], [Author_Name], [Author_Information], [Author_Type], [Author_Quantity]) VALUES (N'J260K', N'Thiên Tằm Thổ Đậu', N'Real name: Lý Hổ', N'Tiên Hiệp, Huyền Huyền, Kiếm Hiệp', 30)
INSERT [dbo].[Author] ([Author_ID], [Author_Name], [Author_Information], [Author_Type], [Author_Quantity]) VALUES (N'K280L', N'Vô Hữu', N'Number of stories: 10', N'Tiên Hiệp, Huyền Huyền, Dị Giới', 10)
INSERT [dbo].[Author] ([Author_ID], [Author_Name], [Author_Information], [Author_Type], [Author_Quantity]) VALUES (N'L300M', N'Phong Lăng Thiên Hạ', N'Birthplace: China', N'Tiên hiệp, Kiếm hiệp, Huyền Huyền', 10)
INSERT [dbo].[Author] ([Author_ID], [Author_Name], [Author_Information], [Author_Type], [Author_Quantity]) VALUES (N'M320N', N'Lục Đạo Trầm Luân', N'Number of stories: 5', N'Kiếm Hiệp, Huyền Huyền, Đô Thị', 5)
INSERT [dbo].[Author] ([Author_ID], [Author_Name], [Author_Information], [Author_Type], [Author_Quantity]) VALUES (N'N340O', N'Thần Đồng', N'', N'Tiên Hiệp, Kiếm Hiệp, Huyền Huyền', 9)
INSERT [dbo].[Author] ([Author_ID], [Author_Name], [Author_Information], [Author_Type], [Author_Quantity]) VALUES (N'O360P', N'Trạch Ngư', N'', N'Tu Chân, Huyền Ảo, Huyền Huyền', 20)
INSERT [dbo].[Author] ([Author_ID], [Author_Name], [Author_Information], [Author_Type], [Author_Quantity]) VALUES (N'P380Q', N'Diệp Phi Dạ', N'Birthplace: China', N'Tình Cảm, Ngôn Tình', 30)
INSERT [dbo].[Author] ([Author_ID], [Author_Name], [Author_Information], [Author_Type], [Author_Quantity]) VALUES (N'Q400U', N'Tô Mã Lệ', N'Number of stories: 15', N'Đô Thị, Tình Cảm', 19)
INSERT [dbo].[Author] ([Author_ID], [Author_Name], [Author_Information], [Author_Type], [Author_Quantity]) VALUES (N'X540Y', N'Mộ Vũ Thần Thiên', N'Birthplace: China', N'Tiên Hiệp, Dị Giới, Huyền Huyễn', 70)
INSERT [dbo].[Author] ([Author_ID], [Author_Name], [Author_Information], [Author_Type], [Author_Quantity]) VALUES (N'Y560Z', N'Nhĩ Căn', N'Real name: Lưu Dũng', N'Tiên Hiệp, Huyền Huyền', 50)
GO
INSERT [dbo].[Book] ([Book_ID], [Book_Name], [Book_Image], [Book_Price], [Book_Author], [Book_Publisher], [Book_Types], [Book_Store], [Book_Evaluate]) VALUES (N'A070421B', N'Tinh Thần Biến', N'Tinh_Than_Bien.png', 200, N'Ngã Cật Tây Hồng Thị', N'Ryo                                                                                                                                                                                                     ', 1, N'Shop White', N'9')
INSERT [dbo].[Book] ([Book_ID], [Book_Name], [Book_Image], [Book_Price], [Book_Author], [Book_Publisher], [Book_Types], [Book_Store], [Book_Evaluate]) VALUES (N'A112233C', N'Ngạo Thế Cửu Trọng Thiên', N'Ngao_The_Cuu_Trong_Thien.png', 169, N'Phong Lăng  Thiên Hạ', N'Zeus                                                                                                                                                                                                    ', 4, N'Shop Style', N'8.5')
INSERT [dbo].[Book] ([Book_ID], [Book_Name], [Book_Image], [Book_Price], [Book_Author], [Book_Publisher], [Book_Types], [Book_Store], [Book_Evaluate]) VALUES (N'A121212A', N'Linh Vũ Thiên Hạ', N'Linh_Vu_Thien_Ha.png', 299, N'Vũ Phong', N'White                                                                                                                                                                                                   ', 3, N'Shop Chill', N'8.1')
INSERT [dbo].[Book] ([Book_ID], [Book_Name], [Book_Image], [Book_Price], [Book_Author], [Book_Publisher], [Book_Types], [Book_Store], [Book_Evaluate]) VALUES (N'A313131D', N'Tạo Hóa Tiên Đế', N'Tao_Hoa_Tien_De.png', 109, N'Mộ Vũ Thần Thiên', N'White                                                                                                                                                                                                   ', 1, N'Shop Natsu', N'7.9')
INSERT [dbo].[Book] ([Book_ID], [Book_Name], [Book_Image], [Book_Price], [Book_Author], [Book_Publisher], [Book_Types], [Book_Store], [Book_Evaluate]) VALUES (N'B131313B', N'Thần Đế', N'Than_De.png', 79, N'Vũ Phong', N'Style                                                                                                                                                                                                   ', 3, N'Shop Natsu', N'7.9')
INSERT [dbo].[Book] ([Book_ID], [Book_Name], [Book_Image], [Book_Price], [Book_Author], [Book_Publisher], [Book_Types], [Book_Store], [Book_Evaluate]) VALUES (N'B190121C', N'Vũ Động Càn Khôn', N'Vu_Dong_Can_Khon.png', 290, N'Thiên Tằm Thổ Đậu', N'Lisa                                                                                                                                                                                                    ', 2, N'Shop Nana', N'9.5')
INSERT [dbo].[Book] ([Book_ID], [Book_Name], [Book_Image], [Book_Price], [Book_Author], [Book_Publisher], [Book_Types], [Book_Store], [Book_Evaluate]) VALUES (N'B223344D', N'Kiếm Đạo Độc Thần', N'Kiem_Dao_Doc_Than.png', 199, N'Lục Đạo Trầm Luân', N'Zeus                                                                                                                                                                                                    ', 4, N'Shop Chill', N'7.9')
INSERT [dbo].[Book] ([Book_ID], [Book_Name], [Book_Image], [Book_Price], [Book_Author], [Book_Publisher], [Book_Types], [Book_Store], [Book_Evaluate]) VALUES (N'B353535E', N'Nhất Niệm Vĩnh Hằng', N'Nhat_Niem_Vinh_Hang.png', 89, N'Nhĩ Căn', N'Style                                                                                                                                                                                                   ', 1, N'Shop Style', N'8.5')
INSERT [dbo].[Book] ([Book_ID], [Book_Name], [Book_Image], [Book_Price], [Book_Author], [Book_Publisher], [Book_Types], [Book_Store], [Book_Evaluate]) VALUES (N'C141414C', N'Vũ Luyện Điên Phong', N'Vu_Luyen_Dien_Phong.png', 199, N'Mạc Mặc', N'Nana                                                                                                                                                                                                    ', 3, N'Shop Style', N'6.9')
INSERT [dbo].[Book] ([Book_ID], [Book_Name], [Book_Image], [Book_Price], [Book_Author], [Book_Publisher], [Book_Types], [Book_Store], [Book_Evaluate]) VALUES (N'C251298D', N'Đấu Phá Thương Khung', N'Dau_Pha_Thuong_Khung.png', 150, N'Thiên Tằm Thổ Đậu', N'Lisa                                                                                                                                                                                                    ', 3, N'Shop White', N'9.5')
INSERT [dbo].[Book] ([Book_ID], [Book_Name], [Book_Image], [Book_Price], [Book_Author], [Book_Publisher], [Book_Types], [Book_Store], [Book_Evaluate]) VALUES (N'C334455E', N'Thế Giới Hoàn Mỹ', N'The_Gioi_Hoan_My.png', 89, N'Thần Đồng', N'Lion                                                                                                                                                                                                    ', 4, N'Shop Style', N'7.5')
INSERT [dbo].[Book] ([Book_ID], [Book_Name], [Book_Image], [Book_Price], [Book_Author], [Book_Publisher], [Book_Types], [Book_Store], [Book_Evaluate]) VALUES (N'C373737F', N'Tiên Nghịch', N'Tien_Nghich.png', 99, N'Nhĩ Căn', N'Uras                                                                                                                                                                                                    ', 1, N'Shop Chill', N'8.1')
INSERT [dbo].[Book] ([Book_ID], [Book_Name], [Book_Image], [Book_Price], [Book_Author], [Book_Publisher], [Book_Types], [Book_Store], [Book_Evaluate]) VALUES (N'D100179E', N'Nguyên Tôn', N'Nguyen_Ton.png', 100, N'Thiên Tằm Thổ Đậu', N'Lisa                                                                                                                                                                                                    ', 1, N'Shop Mixi', N'8.5')
INSERT [dbo].[Book] ([Book_ID], [Book_Name], [Book_Image], [Book_Price], [Book_Author], [Book_Publisher], [Book_Types], [Book_Store], [Book_Evaluate]) VALUES (N'D151515D', N'Vô Thường', N'Vo_Thuong.png', 219, N'Mạc Mặc', N'Mixi                                                                                                                                                                                                    ', 3, N'Shop Chill', N'8.9')
INSERT [dbo].[Book] ([Book_ID], [Book_Name], [Book_Image], [Book_Price], [Book_Author], [Book_Publisher], [Book_Types], [Book_Store], [Book_Evaluate]) VALUES (N'D445566F', N'Bất Tử Bất Diệt', N'Bat_Tu_Bat_Diet.png', 99, N'Thần Đồng', N'Zeus                                                                                                                                                                                                    ', 4, N'Shop Chill', N'8.1')
INSERT [dbo].[Book] ([Book_ID], [Book_Name], [Book_Image], [Book_Price], [Book_Author], [Book_Publisher], [Book_Types], [Book_Store], [Book_Evaluate]) VALUES (N'E211219F', N'Đấu La Đại Lục', N'Dau_La_Dai_Luc.png', 350, N'Đường Gia Tam Thiếu', N'Uras                                                                                                                                                                                                    ', 2, N'Shop Mixi', N'9.8')
INSERT [dbo].[Book] ([Book_ID], [Book_Name], [Book_Image], [Book_Price], [Book_Author], [Book_Publisher], [Book_Types], [Book_Store], [Book_Evaluate]) VALUES (N'E556677G', N'Đế Tôn', N'De_Ton.png', 69, N'Trạch Ngư', N'Lion                                                                                                                                                                                                    ', 4, N'Shop Style', N'8.9')
INSERT [dbo].[Book] ([Book_ID], [Book_Name], [Book_Image], [Book_Price], [Book_Author], [Book_Publisher], [Book_Types], [Book_Store], [Book_Evaluate]) VALUES (N'F101021G', N'Tuyệt Thế Đường Môn', N'Tuyet_The_Duong_Mon.png', 270, N'Đường Gia Tam Thiếu', N'Uras                                                                                                                                                                                                    ', 1, N'Shop Mixi', N'9')
INSERT [dbo].[Book] ([Book_ID], [Book_Name], [Book_Image], [Book_Price], [Book_Author], [Book_Publisher], [Book_Types], [Book_Store], [Book_Evaluate]) VALUES (N'F667788H', N'Mục Thần Ký', N'Muc_Than_Ky.png', 59, N'Trạch Ngư', N'Zeus                                                                                                                                                                                                    ', 4, N'Shop Style', N'7.9')
INSERT [dbo].[Book] ([Book_ID], [Book_Name], [Book_Image], [Book_Price], [Book_Author], [Book_Publisher], [Book_Types], [Book_Store], [Book_Evaluate]) VALUES (N'G101010I', N'Hôn Trộm 55 Lần', N'Hon_Trom_55_Lan.png', 159, N'Diệp Phi Dạ', N'Zues                                                                                                                                                                                                    ', 6, N'Shop Natsu', N'8')
INSERT [dbo].[Book] ([Book_ID], [Book_Name], [Book_Image], [Book_Price], [Book_Author], [Book_Publisher], [Book_Types], [Book_Store], [Book_Evaluate]) VALUES (N'G280229H', N'Trùng Sinh Đường Tam', N'Trung_Sinh_Duong_Tam.png', 300, N'Đường Gia Tam Thiếu', N'Uras                                                                                                                                                                                                    ', 5, N'Shop White', N'9.7')
INSERT [dbo].[Book] ([Book_ID], [Book_Name], [Book_Image], [Book_Price], [Book_Author], [Book_Publisher], [Book_Types], [Book_Store], [Book_Evaluate]) VALUES (N'H202020J', N'Mạnh Mẽ Yêu Nhau 100 Ngày', N'Manh_Me_Yeu_Nhau_100_Ngay.png', 219, N'Diệp Phi Dạ', N'Style                                                                                                                                                                                                   ', 6, N'Shop Chill', N'7.5')
INSERT [dbo].[Book] ([Book_ID], [Book_Name], [Book_Image], [Book_Price], [Book_Author], [Book_Publisher], [Book_Types], [Book_Store], [Book_Evaluate]) VALUES (N'H291294I', N'Thái Cổ Thần Vương', N'Thai_Co_Than_Vuong.png', 100, N'Tịnh Vô Ngân', N'Alis                                                                                                                                                                                                    ', 2, N'Shop Nana', N'8')
INSERT [dbo].[Book] ([Book_ID], [Book_Name], [Book_Image], [Book_Price], [Book_Author], [Book_Publisher], [Book_Types], [Book_Store], [Book_Evaluate]) VALUES (N'I111221J', N'Phục Thiên Thị', N'Phuc_Thien_Thi.png', 150, N'Tịnh Vô Ngân', N'Alis                                                                                                                                                                                                    ', 1, N'Shop White', N'8.2')
INSERT [dbo].[Book] ([Book_ID], [Book_Name], [Book_Image], [Book_Price], [Book_Author], [Book_Publisher], [Book_Types], [Book_Store], [Book_Evaluate]) VALUES (N'I303030K', N'Cô Bé Mù', N'Co_Be_Mu.png', 119, N'Tô Mã Lệ', N'Zues                                                                                                                                                                                                    ', 6, N'Shop Natsu', N'7.5')
INSERT [dbo].[Book] ([Book_ID], [Book_Name], [Book_Image], [Book_Price], [Book_Author], [Book_Publisher], [Book_Types], [Book_Store], [Book_Evaluate]) VALUES (N'J050525K', N'Sử Lai Khắc Quân Đoàn', N'Su_Lai_Khac_Quan_Doan.png', 250, N'Đường Gia Tam Thiếu', N'Uras                                                                                                                                                                                                    ', 2, N'Shop Mixi', N'8.5')
INSERT [dbo].[Book] ([Book_ID], [Book_Name], [Book_Image], [Book_Price], [Book_Author], [Book_Publisher], [Book_Types], [Book_Store], [Book_Evaluate]) VALUES (N'J404040L', N'Bác Sĩ Thú Y', N'Bac_Si_Thu_Y.png', 109, N'Tô Mã Lệ', N'Style                                                                                                                                                                                                   ', 6, N'Shop Chill', N'8')
INSERT [dbo].[Book] ([Book_ID], [Book_Name], [Book_Image], [Book_Price], [Book_Author], [Book_Publisher], [Book_Types], [Book_Store], [Book_Evaluate]) VALUES (N'K260222L', N'Bàn Long', N'Ban_Long.png', 70, N'Ngã Cật Tây Hồng Thị', N'Ryo                                                                                                                                                                                                     ', 1, N'Shop Rus', N'7')
INSERT [dbo].[Book] ([Book_ID], [Book_Name], [Book_Image], [Book_Price], [Book_Author], [Book_Publisher], [Book_Types], [Book_Store], [Book_Evaluate]) VALUES (N'K505050M', N'Cô Vợ Thay Thế', N'Co_Vo_Thay_The.png', 99, N'Lạt Tiêu', N'Style                                                                                                                                                                                                   ', 6, N'Shop Natsu', N'7.9')
INSERT [dbo].[Book] ([Book_ID], [Book_Name], [Book_Image], [Book_Price], [Book_Author], [Book_Publisher], [Book_Types], [Book_Store], [Book_Evaluate]) VALUES (N'L251278M', N'Tuyết Ưng Lĩnh Chủ', N'Tuyet_Ung_Linh_Chu.png', 70, N'Ngã Cật Tây Hồng Thị', N'Ryo                                                                                                                                                                                                     ', 3, N'Shop Rus', N'8.5')
INSERT [dbo].[Book] ([Book_ID], [Book_Name], [Book_Image], [Book_Price], [Book_Author], [Book_Publisher], [Book_Types], [Book_Store], [Book_Evaluate]) VALUES (N'M010101O', N'Đoạt Thế Tranh Thiên', N'Doat_The_Tranh_Thien.png', 89, N'Thập Liên', N'White                                                                                                                                                                                                   ', 5, N'Shop Style', N'7.0')
INSERT [dbo].[Book] ([Book_ID], [Book_Name], [Book_Image], [Book_Price], [Book_Author], [Book_Publisher], [Book_Types], [Book_Store], [Book_Evaluate]) VALUES (N'M070421N', N'Đại Mộng Chủ', N'Dai_Mong_Chu.png', 299, N'Ngã Cật Tây Hồng Thị', N'Ryo                                                                                                                                                                                                     ', 1, N'Shop White', N'8')
INSERT [dbo].[Book] ([Book_ID], [Book_Name], [Book_Image], [Book_Price], [Book_Author], [Book_Publisher], [Book_Types], [Book_Store], [Book_Evaluate]) VALUES (N'N020202P', N'Bình An Trọng Sinh', N'Binh_An_Trong_Sinh.png', 99, N'Dư Phương', N'Mixi                                                                                                                                                                                                    ', 5, N'Shop Natsu', N'8.0')
INSERT [dbo].[Book] ([Book_ID], [Book_Name], [Book_Image], [Book_Price], [Book_Author], [Book_Publisher], [Book_Types], [Book_Store], [Book_Evaluate]) VALUES (N'N080312O', N'Đạo Giới Thiên Hạ', N'Dao_Gioi_Thien_Ha.png', 99, N'Ngã Cật Tây Hồng Thị', N'Uras                                                                                                                                                                                                    ', 2, N'Shop Mixi', N'1.5')
INSERT [dbo].[Book] ([Book_ID], [Book_Name], [Book_Image], [Book_Price], [Book_Author], [Book_Publisher], [Book_Types], [Book_Store], [Book_Evaluate]) VALUES (N'O030303Q', N'A Hoàn', N'A_Hoan.png', 199, N'Dư Phương', N'Style                                                                                                                                                                                                   ', 5, N'Shop Style', N'9.0')
INSERT [dbo].[Book] ([Book_ID], [Book_Name], [Book_Image], [Book_Price], [Book_Author], [Book_Publisher], [Book_Types], [Book_Store], [Book_Evaluate]) VALUES (N'O190425P', N'Đế Bá', N'De_Ba.png', 200, N'Tịnh Vô Ngân', N'Uras                                                                                                                                                                                                    ', 2, N'Shop White', N'8.7')
INSERT [dbo].[Book] ([Book_ID], [Book_Name], [Book_Image], [Book_Price], [Book_Author], [Book_Publisher], [Book_Types], [Book_Store], [Book_Evaluate]) VALUES (N'P221199Q', N'Dị Thế Thần Ma', N'Di_The_Than_Ma.png', 169, N'Đường Gia Tam Thiếu', N'Alis                                                                                                                                                                                                    ', 3, N'Shop Mixi', N'6.9')
INSERT [dbo].[Book] ([Book_ID], [Book_Name], [Book_Image], [Book_Price], [Book_Author], [Book_Publisher], [Book_Types], [Book_Store], [Book_Evaluate]) VALUES (N'Q290245R', N'Thú Thần Quyết', N'Thu_Than_Quyet.png', 150, N'Tịnh Vô Ngân', N'Ryo                                                                                                                                                                                                     ', 5, N'Shop Nana', N'8.2')
INSERT [dbo].[Book] ([Book_ID], [Book_Name], [Book_Image], [Book_Price], [Book_Author], [Book_Publisher], [Book_Types], [Book_Store], [Book_Evaluate]) VALUES (N'R300320S', N'Đế Cảnh Trọng Sinh', N'De_Canh_Trong_Sinh.png', 89, N'Đường Gia Tam Thiếu', N'Uras                                                                                                                                                                                                    ', 5, N'Shop Nana', N'7.9')
INSERT [dbo].[Book] ([Book_ID], [Book_Name], [Book_Image], [Book_Price], [Book_Author], [Book_Publisher], [Book_Types], [Book_Store], [Book_Evaluate]) VALUES (N'S050505T', N'Tinh Châu Biến', N'Tinh_Chau_Bien.png', 89, N'Đường Gia Tam Thiếu', N'Alias                                                                                                                                                                                                   ', 5, N'Shop White', N'7.5')
INSERT [dbo].[Book] ([Book_ID], [Book_Name], [Book_Image], [Book_Price], [Book_Author], [Book_Publisher], [Book_Types], [Book_Store], [Book_Evaluate]) VALUES (N'SE15151', N'Tinh Thần Biến', N'Dau_La_Dai_Luc.png', 140, N'Đường Gia Tam Thiếu', N'Uras                                                                                                                                                                                                    ', 2, N'Shop White', N'7.8')
INSERT [dbo].[Book] ([Book_ID], [Book_Name], [Book_Image], [Book_Price], [Book_Author], [Book_Publisher], [Book_Types], [Book_Store], [Book_Evaluate]) VALUES (N'X939393X', N'Tu La Ma Đế', N'Tu_La_Ma_De.png', 99, N'Cô Đơn Địa Phi', N'Style                                                                                                                                                                                                   ', 2, N'Shop Natsu', N'8.1')
INSERT [dbo].[Book] ([Book_ID], [Book_Name], [Book_Image], [Book_Price], [Book_Author], [Book_Publisher], [Book_Types], [Book_Store], [Book_Evaluate]) VALUES (N'Y929292Y', N'Kiếm Động Cửu Thiên', N'Kiem_Dong_Cuu_Thien.png', 69, N'Cô Đơn Địa Phi', N'Mixi                                                                                                                                                                                                    ', 2, N'Shop Style', N'7.2')
INSERT [dbo].[Book] ([Book_ID], [Book_Name], [Book_Image], [Book_Price], [Book_Author], [Book_Publisher], [Book_Types], [Book_Store], [Book_Evaluate]) VALUES (N'Z919191Z', N'Thần Đạo Đan Tôn', N'Than_Dao_Dan_Ton.png', 300, N'Cô Đơn Địa Phi', N'White                                                                                                                                                                                                   ', 2, N'Shop Chill', N'6.9')
GO
INSERT [dbo].[Customer] ([username], [password]) VALUES (N'sa', N'123')
GO
SET IDENTITY_INSERT [dbo].[Orders] ON 

INSERT [dbo].[Orders] ([Order_ID], [Order_Date], [TotalMoney]) VALUES (14, CAST(N'2022-03-03' AS Date), 2600.0000)
INSERT [dbo].[Orders] ([Order_ID], [Order_Date], [TotalMoney]) VALUES (15, CAST(N'2022-03-03' AS Date), 6825.0000)
INSERT [dbo].[Orders] ([Order_ID], [Order_Date], [TotalMoney]) VALUES (16, CAST(N'2022-03-03' AS Date), 7800.0000)
INSERT [dbo].[Orders] ([Order_ID], [Order_Date], [TotalMoney]) VALUES (17, CAST(N'2022-02-04' AS Date), 975.0000)
INSERT [dbo].[Orders] ([Order_ID], [Order_Date], [TotalMoney]) VALUES (18, CAST(N'2022-02-04' AS Date), 3120.0000)
INSERT [dbo].[Orders] ([Order_ID], [Order_Date], [TotalMoney]) VALUES (19, CAST(N'2022-01-19' AS Date), 1041.3000)
INSERT [dbo].[Orders] ([Order_ID], [Order_Date], [TotalMoney]) VALUES (20, CAST(N'2022-01-19' AS Date), 1157.0000)
INSERT [dbo].[Orders] ([Order_ID], [Order_Date], [TotalMoney]) VALUES (21, CAST(N'2022-01-19' AS Date), 1365.0000)
INSERT [dbo].[Orders] ([Order_ID], [Order_Date], [TotalMoney]) VALUES (22, CAST(N'2021-12-25' AS Date), 717.6000)
INSERT [dbo].[Orders] ([Order_ID], [Order_Date], [TotalMoney]) VALUES (23, CAST(N'2021-12-25' AS Date), 2340.0000)
SET IDENTITY_INSERT [dbo].[Orders] OFF
GO
INSERT [dbo].[OrdersLine] ([Order_ID], [Book_ID], [Order_Quantity]) VALUES (14, N'A070421B', 10)
INSERT [dbo].[OrdersLine] ([Order_ID], [Book_ID], [Order_Quantity]) VALUES (15, N'E211219F', 15)
INSERT [dbo].[OrdersLine] ([Order_ID], [Book_ID], [Order_Quantity]) VALUES (16, N'G280229H', 20)
INSERT [dbo].[OrdersLine] ([Order_ID], [Book_ID], [Order_Quantity]) VALUES (17, N'C251298D', 5)
INSERT [dbo].[OrdersLine] ([Order_ID], [Book_ID], [Order_Quantity]) VALUES (18, N'Q290245R', 16)
INSERT [dbo].[OrdersLine] ([Order_ID], [Book_ID], [Order_Quantity]) VALUES (19, N'A112233C', 9)
INSERT [dbo].[OrdersLine] ([Order_ID], [Book_ID], [Order_Quantity]) VALUES (20, N'C334455E', 10)
INSERT [dbo].[OrdersLine] ([Order_ID], [Book_ID], [Order_Quantity]) VALUES (21, N'K260222L', 15)
INSERT [dbo].[OrdersLine] ([Order_ID], [Book_ID], [Order_Quantity]) VALUES (22, N'E556677G', 8)
INSERT [dbo].[OrdersLine] ([Order_ID], [Book_ID], [Order_Quantity]) VALUES (23, N'D100179E', 18)
GO
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([Product_ID], [Book_ID], [Centent_Book]) VALUES (1, N'A070421B', N'<b>Tinh Thần Biến</b> là một tiểu thuyết võ hiệp có nội dung về một câu truyện Tiên Hiệp hoành tráng kể về người thanh niên Tần Vũ gian khổ tu luyện, 
							vượt hết khó khăn này đến nguy hiểm khác để lên Thần Giới tìm người yêu.<br/><br/> Tần Vũ đã gặp duyên kỳ ngộ học được Tinh Thần Biến công pháp của Lôi Vệ, 
							gian khổ tu luyện để làm cho người thân mình an toàn, nhờ sự giúp sức của Lan thúc (chú của người yêu) và Nghịch Ương tiên đế để phi thăng lên tiên giới và thần giới,
							nhưng rồi tại thần giới tranh đấu với cả nhà thần vương của Lôi Phạt thành và Lôi Phạt thiên tôn, cuối cùng nhờ sự giúp sức của Lôi Mông 
							(sau này là nhị sư huynh của Tần Vũ và cũng là Lâm Lôi trong truyện Bàn Long cùng tác giả) phát triển lên sau này đã sáng tạo ra Tần Mông vũ trụ của riêng mình.')
INSERT [dbo].[Product] ([Product_ID], [Book_ID], [Centent_Book]) VALUES (2, N'A112233C', N'Sở Dương kiếp trước vì lấy được bí tịch Cửu Kiếp kiếm mà bị cao thủ trong thiên hạ vây giết. Trước khi chết, hắn mới ngộ ra con đường của mình từ 
							trước đến nay là sai. Dưới sự nuối tiếc, tuyệt vọng, hắn đã dùng chính máu trong tim của mình để kích phát ra tuyệt chiêu cuối cùng của Cửu Kiếp kiếm, 
							không ngờ đã làm sống lại kiếm hồn của Cửu Kiếp kiếm. Nhờ năng lực đặc dị của kiếm hồn Cửu Kiếp kiếm, hắn đã quay trở lại thời điểm hắn 
							mới gia nhập môn phái của hắn - Thiên Ngoại lâu. Trùng sinh lại với kiếm hồn Cửu Kiếp kiếm trong người, hắn đã đi trên một con đường mới 
							khác hẳn hoàn toàn với kiếp trước, ân oán tình thù kiếm này sẽ giải quyết như thế nào, hắn đi trên con đường kiếm đạo đỉnh phong như thế 
							nào, kiếm đạo là vô tình hay hữu tình, mời quý độc giả theo dõi bộ truyện sẽ rõ…')
INSERT [dbo].[Product] ([Product_ID], [Book_ID], [Centent_Book]) VALUES (3, N'A121212A', N'<b>Lục Thiếu Du</b>, linh hồn bị xuyên qua đến thế giới khác, nhập vào thân thể của một thiếu gia không có địa vị phải trải qua cuộc sống không khác gì nô bộc.<br/><br/>
							Thế giới này lấy Vũ vi cường, lấy Linh vi tôn, nghe đồn khi võ đạo đỉnh phong, linh đạo đạt đến cực hạn có thể phá toái hư không.<br/><br/>
							Lục Thiếu Du mang theo ký ức từ kiếp trước tái sinh, không cam lòng làm một thiếu gia chẳng khác gì củi mục.')
INSERT [dbo].[Product] ([Product_ID], [Book_ID], [Centent_Book]) VALUES (4, N'A313131D', N'Tác giả đã tạo ra một thế giới rất thần kỳ trong truyện cũng bởi ở nơi này có cường giả nhiều vô số, lại có hoang thú hồng hoang,còn có diệu pháp thần thông, 
							đặc biệt có cả pháp bảo đáng sợ có thể hủy thiên diệt địa. có linh đan thoát thai hoán cốt, có tiên trận bao phủ chư thiên...<br/><br/>
							Nam chính bước ra từ Càn Nguyên vực là một thiếu niên Khương Tư Nam,là một  người mang chí bảo vô thượng, lại còn tu luyện được thần thông tuyệt thế,
							vì bản tâm thủ hộ đã giết ra con đường nghịch thiên.')
INSERT [dbo].[Product] ([Product_ID], [Book_ID], [Centent_Book]) VALUES (5, N'B131313B', N'Truyện của đại thần Vũ Phong có lẽ mọi người đã không xa lạ gì, nếu ai từng đọc qua Linh Vũ Thiên Hạ, Vũ Thần Thiên Hạ… thì sẽ cực kỳ mong đợi tác phẩm Thần Đế này,
							vì nó là tác phẩm thứ tư sau khi thành công vang dội ở 3 tác phẩm trước.<br/><br/>Tác phẩm của Vũ Phong kết thúc luôn cực kỳ có hậu, không khiến người đọc ức chế, mạch truyện khá hài hước,
							cộng thêm con pet bá đạo, tham ăn, háo sắc, có máu thổ phỉ từ trong trứng, sẽ làm chúng ta cảm thấy thoải mái vui vẻ, hơn nữa con tác này tả cảnh tình cảm còn hơn ngôn tình,
							rất cảm động và cuốn hút.')
INSERT [dbo].[Product] ([Product_ID], [Book_ID], [Centent_Book]) VALUES (6, N'B190121C', N'Câu chuyện là một trang sách nói về cuộc đời của một tu luyện giả, bên cạnh đó còn miêu tả cuộc sống đời thường, những suy nghĩ bình thường, nhưng nếu như số mệnh đã
							sắp đặt bản thân phải đi trên một con đường đầy gian khổ và trắc trở thì sao? Con người đặc biệt luôn có số mệnh đặc biệt, bất kể xuất thân, bất kể địa vị.
							Chúng ta hãy cùng dõi theo những bước chân của họ, không chỉ đơn giản là xem những pha đánh nhau đẹp mắt, hay những chiêu thức tráng lệ,
							cũng không phải chỉ để bàn luận đến những âm mưu hay kế sách thâm độc, hèn hạ bỉ ổi, tuyệt vời ra sao. Thứ chúng ta cần là một cái gì đó lớn hơn thế,
							tất cả mọi thứ hòa quyện lại với nhau tạo ra một sự liên kết tuyệt vời, và sự liên kết đó chính là Võ Động Càn Khôn.')
INSERT [dbo].[Product] ([Product_ID], [Book_ID], [Centent_Book]) VALUES (7, N'B223344D', N'Nắm kiếm trong tay, lòng vững như thạch, vượt qua mọi chông gai, thà gãy không cong, dù đứt đoạn vẫn bất khuất, không sợ hãi bất cứ trở ngại nào.<br/><br/>
							Kiếm Đạo Độc Thần mang đến cho người đọc một thế giới kiếm hiệp tu tiên đầy màu sắc. Truyện ở đây có hằng hà sa số các loại kiếm, muôn hình muôn vẻ các thể loại kiếm tu,
							những trận tranh chấp nảy lửa của các thiên tài quái nhân, tất cả chỉ để hướng đến đỉnh phong kiếm đạo, tranh chấp địa vị tối cao!')
INSERT [dbo].[Product] ([Product_ID], [Book_ID], [Centent_Book]) VALUES (8, N'B353535E', N'Người ta thường nói rằng không có bất cứ thứ gì có thể vĩnh hằng nhưng thật ra vẫn còn có một ngoại lệ chưa bao giờ được biết đến! Cùng chiêu mộ đoạn trích trong
							truyện sau đây và tiếp tục khám phá nhé. Song song đó, truyện Vạn Cổ Chí Tôn cũng là tác phẩm được đánh giá cao về mặt nội dung mà bạn không nên bỏ qua.
							<br/><br/>Mạo Nhi Sơn là một ngọn núi ở bên trong Đông Lâm sơn mạch. Ở dưới núi có một thôn làng, dân phong ở đây thuần phác, thường cày ruộng mà sống, đoạn tuyệt với thế giới bên ngoài.')
INSERT [dbo].[Product] ([Product_ID], [Book_ID], [Centent_Book]) VALUES (9, N'C141414C', N'Câu chuyện xoay quanh nhân vật tên là Dương Khai, hắn vốn là một đệ tử thí luyện ở Lăng Tiêu Các. Nhưng thật ra ban đầu hắn chỉ là một tên đệ tử chuyên dùng để sai vặt, quét rác… 
							Cứ ngỡ tương lai của hắn cũng không mấy sáng sủa cho đến khi Dương Khai vô tin nhặt được một bí kíp Hắc thư thần bí. Nó chính là mấu chốt để cuộc đời Dương Khai lật sang một trang mới.
							<br/><br/>Từ một tên sai vặt, tu luyện đánh đổi để bước đến bục danh vọng, trở thành vị anh hùng vang danh tứ phương, người người ca tụng, mỹ nữ bao quanh. 
							Thế gian bắt đầu nổi sóng, một tên quét rác tầm thường có thể trở thành anh hùng trứ danh thiên hạ? Một tên hầu sai vặt thấp hèn lại chiếm luôn cả những mỹ nhân 
							sắc nước hương trời? Vì sao Dương Khai lại được người ta nói đến như vậy?')
INSERT [dbo].[Product] ([Product_ID], [Book_ID], [Centent_Book]) VALUES (10, N'C251298D', N'Tiêu Viêm là một võ giả trẻ có năng khiếu dị bẩm. Năm 9 tuổi, mẹ cậu bị truy sát đến chết, cha cậu giấu bặt chuyện này, Tiêu Viêm gìn giữ chiếc nhẫn mẹ để lại như 
							báu vật không bao giờ rời. Công lực của Tiêu Viêm mãi đến năm 15 tuổi vẫn chưa có tiến triển, gia tộc có hôn ước với cậu từ lâu cũng đến để thoái hôn, 
							khiến Tiêu gia phải chịu nỗi nhục to lớn. Tiêu Viêm một lần tình cờ đánh thức được chủ nhân chiếc nhẫn là Dược Trần lão nhân, dưới sự giúp đỡ của ông, 
							võ công của Tiêu Viêm tiến bộ thần tốc, đồng thời biết được chủ mưu giết hại mẹ mình')
INSERT [dbo].[Product] ([Product_ID], [Book_ID], [Centent_Book]) VALUES (11, N'C334455E', N'Bạn đang đọc truyện <b>Thế Giới Hoàn Mỹ</b> của tác giả Thần Đồng. Đây là một bộ truyện hay thuộc thể loại Huyền Huyễn thế giới hoàn mỹ với nội dung chính là :
							đêm đã về khuya, bóng tối phủ kín khắp nơi, bao trùm lên cảnh vật. Thế nhưng trong núi lại chẳng hề yên tĩnh, tiếng mãnh thú rít gào rung động cả non sông, cây cối rung lên, lá bay tán loạn.
							<br/><br/>Chốn rừng núi mênh mang là nơi hoạt động của vô số mãnh thú hồng hoang cùng những chủng tộc sót lại từ thời Thái Cổ. Tiếng kêu đáng sợ của muôn loài rống lên trong bóng tối, k
							hiến mặt đất như muốn nứt toác ra.
							<br/><br/>Từ trong dãy núi trông xa thấy có thấp thoáng một quầng sáng nhu hòa, tựa như một ngọn nến lập lòe dưới màn đêm đen vô tận, lẩn khuất giữa muôn trùng núi, 
							ánh sáng dường như có thể vụt tắt bất cứ lúc nào.')
INSERT [dbo].[Product] ([Product_ID], [Book_ID], [Centent_Book]) VALUES (12, N'C373737F', N'Thiết Trụ ngồi ở bên con đường nhỏ trong thôn, vẻ mặt ngơ ngẩn nhìn bầu trời xanh thẳm,Thiết Trụ vốn không phải là tên thật của hắn, hắn vốn tên là Vương Lâm bởi vì
							hắn trời sinh thân thể yếu đuối, phụ thân sợ nuôi không được nên cha mẹ hắn đặt tên là Thiết Trụ. Mong hắn khỏe mạnh như một trụ sắt, trở thành một đại trượng phu.
							<br/><br/>Xuất thân từ một gia đình làm nghề mộc, sống trong một gia đình ấm áp. Cha hắn dạy hắn khắc gỗ. Mẹ hắn nấu cho hắn những món ăn ngon. 
							Tứ thúc hiền hòa dành cho hắn những thứ tốt. Cuộc sống êm đềm cho đến khi hắn có được một tiên duyên. Tiên duyên ấy khiến cậu thiếu niên 
							Thiết Trụ hiểu được sự ấm lạnh của lòng người, sự lạnh lùng của nhân thế.')
INSERT [dbo].[Product] ([Product_ID], [Book_ID], [Centent_Book]) VALUES (13, N'D100179E', N'Ta có một ngụm Huyền Hoàng Khí, có thể nuốt thiên địa nhật nguyệt tinh. Lúc đó đường về, đã là một con đường vận mệnh treo ngược. 
							Ngày xưa vinh hoa, như thay đổi khôn lường, một giấc ác mộng dài. Thiếu niên chấp bút, Long Xà bay động. Là vì một vòng quang mang bổ ra dáng vẻ 
							nặng nề chi loạn thế, vấn đỉnh điện ngọc thương khung. Đường báo thù, cùng ta đồng hành.
							<br/><br/>Một ngụm Huyền Hoàng chân khí nhất định nuốt thiên địa nhật nguyệt tinh thần, hùng thị cỏ cây thương sinh huyền huyễn. Thiết họa tịch chiếu, vụ ải ngân câu, 
							bút tẩu du long xông Cửu Châu. Hoành tư thiên hạ, mực vẩy thanh sơn, thôn tính biển hồ nạp trăm sông. Mời bạn đọc truyện và thưởng thức cùng tác giả.')
INSERT [dbo].[Product] ([Product_ID], [Book_ID], [Centent_Book]) VALUES (14, N'D151515D', N'Nội dung câu chuyện Vô Thường xoay quanh nhân vật chính Đường Phong, 15 năm trước Đường Phong vốn là một đệ tử võ giả thiên tài của Đường Môn danh phái, 
							sự nghiệp võ học của hắn đã bị khép lại vĩnh viễn khi một lần nọ hắn đã xả thân cứu 1 đứa bé đang gặp nguy hiểm. Đứa bé được cứu nhưng chính hành động quả cảm của 
							Đường Phong đã khiến hắn bị trọng thương và sống một cuộc đời thực vật suốt 15 năm…Nhưng 15 năm khổ ải trên giường bệnh cũng bắt đầu qua đi….Và câu chuyện mới bắt đầu …')
INSERT [dbo].[Product] ([Product_ID], [Book_ID], [Centent_Book]) VALUES (15, N'D445566F', N'Bạn đang đọc truyện Bất Tử Bất Diệt của tác giả Thần Đồng. Năm 7840 chín nước tại Thiên vũ đại lục nổ ra đại chiến. Trải qua hơn mười năm giao tranh
							kết quả bốn nước bị diệt, năm nước còn lại thì nguyên khí cũng bị tổn thương nghiêm trọng không còn khả năng tiếp tục giao chiến. 
							Vì vậy, cuối cùng giữa năm nước đã ngồi lại và cùng ký hiệp ước không xâm phạm lẫn nhau .')
INSERT [dbo].[Product] ([Product_ID], [Book_ID], [Centent_Book]) VALUES (16, N'E211219F', N'Câu chuyện với nhân vật chính, con một thợ rèn, một thợ rèn trở thành tửu quỷ, vì thê tử đã mất, sẵn sàng lôi cuốn người đọc ngay từ những chương đầu tiên. 
							Đấu La Thế Giới, một đại lục rộng lớn, cư dân đông đúc. Chức nghiệp cao quý nhật tại đây được gọi là Hồn Sư. Mỗi người sinh ra, đều có một vũ hồn bẩm sinh.
							<br/><br/>Vũ hồn có thể là cái cày, cái cuốc, liêm đao (liềm gặt)..thuộc khối công cụ, một đóa hoa cúc, một cành mai...thuộc thực vật hệ đến các vũ hồn cường đại như Tuyết Ảnh Ma Hùng, 
							Tật Phong Ma Lang.... Để có thể trở thành hồn sư, ngoài vũ hồn cường đại, còn cần đến hồn lực để sử dụng vũ hồn đó, vũ hồn càng lớn, hồn lực càng cao, đại biểu cho thực lực mạnh mẽ tại Đấu la đại lục.
')
INSERT [dbo].[Product] ([Product_ID], [Book_ID], [Centent_Book]) VALUES (17, N'E556677G', N'Truyện kể về thiếu niên Giang Nam tự Tử Xuyên vốn xuất thân từ một thư hương thế gia đã tan cửa nát nhà trong trận chiến của 2 vị thần, Giang Nam đã vô tình cứu
							được 1 con hồ ly có thân phận khủng và được nó đưa đến với con đường tu luyện. Một chút giới thiệu về cuộc đời của Giang Nam: “Trẫm, xuất thân bần hàn, 
							ở trong nghịch cảnh phấn đấu, ở trong tuyệt cảnh sinh tồn, hùng cứ Đại La Thiên, chủ chưởng xã tắc, cầm trong tay Thiên Tán Hoa Cái mà định càn khôn. 
							Trẫm cúi đầu không thẹn sinh linh, ngẩng đầu không thẹn Thiên Địa, vấn lòng không thẹn với lương tâm…”')
INSERT [dbo].[Product] ([Product_ID], [Book_ID], [Centent_Book]) VALUES (18, N'F101021G', N'Trong truyện <b>Tuyệt Thế Đường Môn</b> là một nơi đây không có ma pháp, không có đấu khí, cũng không có võ thuật, chỉ có duy nhất thứ gọi là Vũ Hồn. 
							Trên mảnh đất Đấu La Đại Lục, Đường Môn sau vạn năm huy hoàng đã bắt đầu bước vào con đường suy thoái. 
							Một lớp anh tài mới xuất hiện, liệu thế hệ Sử Lai Khắc Thất Quái mới này có chấn hưng được Đường Môn hay không?
							<br/><br/>Bản anh hùng ca về Đường Môn khi xưa có thể tái hiện một lần nữa hay không? Bản thân có Bách vạn niên hồn thú, tay cầm thần cung Nhật 
							Nguyệt Trích Tinh của Tử Linh Thánh Pháp Thần, khi hắn xuất hiện liền tiếp thêm một luồng sinh khí mới cho Đường Môn đã suy yếu. 
							Tất cả bí ẩn dần dần hé mở...Liệu ám khí Đường Môn có thể lại một lần nữa danh chấn thiên hạ không? Huy hoàng của Đường Môn khi xưa phải chăng còn có thể tái hiện?')
INSERT [dbo].[Product] ([Product_ID], [Book_ID], [Centent_Book]) VALUES (19, N'F667788H', N'Trong Tàn Lão thôn, Tư bà bà nhìn ánh nắng chiều khuất dần sau núi mà sốt ruột. Theo vầng mặt trời lặn xuống, một tia nắng cuối cùng biến mất, 
										đất trời đột nhiên vô cùng yên tĩnh, không có bất kỳ âm thanh gì. Bóng đêm huyền huyễn từ phương tây dần dần phủ xuống nơi đây, nuốt chửng núi sông, 
										con đường, cây cối, sau đó tràn đến nhấn chìm Tàn Lão thôn.
										<br/><br/>Bốn góc của Tàn Lão thôn dựng bốn tượng đá cổ xưa, tượng đá loang lổ, niên đại xa xăm, ngay cả Tư bà bà cũng không biết tượng đá này 
										được người phương nào điêu khắc, lúc nào thì dựng ở đây.
										<br/><br/>Bóng đêm phủ xuống, trong bóng tối, bốn tượng đá tỏa ra ánh sáng hư vô ảnh yếu ớt, tượng đá vẫn còn sáng làm cho Tư bà bà và 
										những lão giả trong thôn đều thở phào nhẹ nhõm.
')
INSERT [dbo].[Product] ([Product_ID], [Book_ID], [Centent_Book]) VALUES (20, N'G101010I', N'Lục Cẩn Niên và An Hảo kết hôn dưới sự thúc ép của cha mẹ hai bên. An Hảo cho rằng mặc dù bọn họ thờ ơ nhau ở trước mặt mọi người nhưng sau lưng rồi cũng sẽ quấn quít. 
							Vì vậy vào đêm tân hôn, cô vừa mở miệng liền tuôn một tràng "3 KHÔNG".
							<br/>Không được chạm vào tôi ở nơi công cộng !
							<br/>Không được nói tôi là vợ của anh !
							<br/>Không được cho người khác biết chúng ta sống cùng với nhau !
							<br/>Lục Cẩn Niên mặt không biến đổi nhìn cô, nháy mắt một cái.
							<br/>Không được chạm vào cô ấy ở nơi công cộng thì hắn có có thể vuốt ve trước mặt bao người.
							<br/>Không cho nói là cô ấy là vợ của hắn thì hắn có thể nói hắn là ông xã của cô ấy.
							<br/>Về điều cuối cùng... Trong một cuộc phỏng vấn, hắn nói “Ngày nào tôi cũng ngủ cùng với An Hảo”.')
INSERT [dbo].[Product] ([Product_ID], [Book_ID], [Centent_Book]) VALUES (21, N'G280229H', N'Trong vũ trụ bao la rộng lớn, một quang điểm nho nhỏ lướt qua.
										<br/>Đó là một quang điểm căn bản không làm cho người khác chú ý, dường như là thật lại giống như hư vô.
										<br/>Chỉ là bên trong quang điểm đó có ý thức tồn tại, hay nói chính xác là thần thức.
										<br/>Bởi vì chỉ có thần thức mới có thể phiêu du trong vũ trụ mà không biến mất. Thậm chí, nó còn đang đuổi theo một hướng để tìm kiếm.
										<br/>Thời khắc khi thê tử chết đi, thần thức dật tán, chỉ có chuyển thế trùng sinh, mới có khả năng tái nhập nhân gian.
										<br/>Trên thế giới này không có cái gì hoàn toàn chắc chắn, coi như hắn là Thần Vương, có thể nghịch chuyển thời gian nhưng cũng không thể nghịch chuyển hết thảy
										<br/>Hắn không có lựa chọn khác, hắn chỉ có thể lựa chọn đi tìm nàng. Dù là bỏ đi vài vạn năm tu vi, bỏ đi thân phận một đời Thần Vương.')
INSERT [dbo].[Product] ([Product_ID], [Book_ID], [Centent_Book]) VALUES (22, N'H202020J', N'<b>Mạnh Mẽ Yêu Nhau 100 Ngày</b> là câu truyện teen hay nhất lấy bối cảnh khi cô và anh ngủ cùng một chỗ, sau hai tháng cô mang thai, anh và cô có con mới cưới. 
										"Anh Cố, tôi thích đồ ăn của nhà này." Đầy bếp của nhà ăn này liền trở thành đầu bếp trong nhà vào ngày hôm sau "Anh Cố, tôi thích túi của hàng này." 
										Nhà thiết kế của nhãn hiệu này liền trở thành thiết kế riêng của cô trong đêm đó.
										<br/>Vốn tưởng rằng sau hôn nhân ngôn tình, anh và cô tiếp tục làm người qua đường, không nghĩ tới anh lại cưng chiều cô lên tận trời, 
										chỉ riêng chuyện không cho cô đi làm. Suốt ngày kìm nén phải ở nhà khiến cô phát hoảng, bắt đầu nảy sinh truyện vụng trộm tìm việc. 
										Ai ngờ cô tìm việc ở nơi nào, nơi đó liền đóng cửa. Sau cùng mới biết, là anh phá đám ở sau lưng cô.
')
INSERT [dbo].[Product] ([Product_ID], [Book_ID], [Centent_Book]) VALUES (23, N'H291294I', N'<b>Thái Cổ Thần Vương</b> là Cửu Thiên Đại Lục, trên thiên khung có chín Tinh Hà, hàng tỉ Tinh Thần, đều vì Võ Mệnh Tinh Thần.
							<br/>Võ đạo chi nhân, có thể câu thông Tinh Thần, thức tỉnh Tinh Hồn, thành tu sĩ Võ Mệnh.
							<br/>Truyền thuyết, Võ tu lợi hại nhất Cửu Thiên Đại Lục, mỗi đột phá một cảnh giới, liền có thể mở một Tinh Môn, từ đó câu thông một viên Tinh Thần, 
							cho đến trên Cửu Trọng Thiên, đều có Võ Mệnh Tinh Thần của mình, hóa thân Thái Cổ Thần Vương thông thiên triệt địa.
							Hàng tỉ sinh linh, chư thiên vạn giới hư lộ, Tần Vấn Thiên cười nhìn Thương Thiên, hắn muốn làm viên Tinh Thần sáng nhất thiên không kia.')
INSERT [dbo].[Product] ([Product_ID], [Book_ID], [Centent_Book]) VALUES (24, N'I111221J', N'Tại nơi được xưng là Thần Châu, từ rất lâu đã xuất hiện hai vị đế anh minh hùng võ, tên Diệp Thanh Đế và Đông Hoàng Đại Đế.
							<br/>Người xưa nói rằng, lúc trước ở Thần Châu luôn diễn ra cảnh chiến tranh, các cường quốc thì sẵn san san sát nhau, khiến dân chúng đều rơi vào cảnh loạn lạc.
							<br/>May mắn hai vị đế ấy đã ra tay, cùng chung sức thống nhất, dẹp bọn phản loạn, trả lại sự yên bình lại về với Thần Châu ở Đông Phương.
							<br/>Thế nhưng không hiểu tại sao, Diệp Thanh Đế bỗng nhiên chết đi, không có lấy bất kỳ lời nói hay sự chứng giám. Dù cho có tò mò thế nào thì 
							cũng không ai dám nhắc lại chuyện này, vì Đông Hoàng Đại Đế đã coi cái tên Diệp Thanh Đế là một thứ cấm kỵ.')
INSERT [dbo].[Product] ([Product_ID], [Book_ID], [Centent_Book]) VALUES (25, N'I303030K', N'Truyện <b>Cô Bé Mù</b> của tác giả Tô Mã Lệ kể về Thiếu nữ bị mù, đôi mắt không nhìn thấy gì, lại xui xẻo đụng phải đám học sinh cặn bã chặn lại, 
							ý đồ sàm sỡ cô, còn buông lời thóa mạ, trêu chọc ghê tởm.
							<br/>Cô tức giận tung bột ớt ra, sau đó liền chọn đại một hướng mà chạy.
							<br/>Chính vì không thể nhìn được, càng không biết phương hướng thế nào, nên chỉ kém một chút nữa, cô đã bị một chiếc xe tông phải.
							<br/>Thiếu niên từ trên xe chạy xuống, dáng vẻ không mấy đường hoàng, còn xông tới ôm cô, mắng to:
							<br/>"Cậu mù à! Sao lại chạy trên đường kiểu vậy???!"
							<br/>Đúng vậy, cô là người mù.')
INSERT [dbo].[Product] ([Product_ID], [Book_ID], [Centent_Book]) VALUES (26, N'J050525K', N'Tịch mịch Thần Vương nhóm đi vào Sử Lai Khắc học viện, bắt đầu thành lập thuộc về mình học phái, mỗi người chiêu thu một học viên. Đi qua một phen lịch luyện, 
							bốn tên từ Thần Vương giáo sư đặc thù học viên rốt cục học có thành tựu, chuẩn bị nghênh đón Sử Lai Khắc học viện khai triển trận đầu đại hình trận đấu, mà chờ đợi bọn họ, 
							là đủ loại không tưởng tượng được khảo nghiệm...')
INSERT [dbo].[Product] ([Product_ID], [Book_ID], [Centent_Book]) VALUES (27, N'J404040L', N'Lỗ tai Bạch Lê nóng lên, trái tim cũng không an phận mà đập thình thịch, lòng bàn tay cô đổ mồ hôi, ghé sát điện thoại khẽ thì thào: “... Có phải anh... Uống say rồi không.”
							<br/><br/>“Có uống chút rượu.”
							<br/><br/>Tiếng hít thở của Thẩm Ám gần điện thoại hơn, truyền qua đầu dây bên kia, giống như hơi thở ấm áp xẹt qua vành tai Bạch Lê, khiến cả khuôn mặt cô đỏ bừng, đôi tay đang cầm điện thoại hơi run rẩy.
							<br/>Bên tai lại nghe thấy tiếng cười nhẹ và giọng nói khàn khàn của anh.
							<br/><br/>“Nhưng không đến mức nhận nhầm người đâu.”')
INSERT [dbo].[Product] ([Product_ID], [Book_ID], [Centent_Book]) VALUES (28, N'K260222L', N'Cốt truyện diễn ra ở thế giới của các ma pháp sư và kiếm sĩ. Chàng thanh niên Lâm Lôi Ba Lỗ Khắc sinh ra trong gia đình mang dòng máu truyền thừa của 
							Thanh Long tộc trong Tứ đại thần thú gia tộc. Với thiên phú tu luyện kinh người vươn lên, tới đỉnh cao tại Ngọc Lan đại lục sau đó phi thăng đến Chí cao vị diện 
							tranh đấu với các vị chúa tể-những người đứng đầu của các vị diện này...')
INSERT [dbo].[Product] ([Product_ID], [Book_ID], [Centent_Book]) VALUES (29, N'K505050M', N'Hạ Diệp Chi sững sờ ngồi trước bàn trang điểm, đợi thợ makeup vào trang điểm cho cô.
							<br/><br/>Đột nhiên, cửa phòng bị mở ra, Tiêu Thanh Hà vội vã chạy vào.
							<br/><br/>Bà ta nhìn thấy Hạ Diệp Chi đầu tóc rối bù, trên người mặc một chiếc áo bông dài màu xám u ám, lập tức quở trách, người nhà họ Mạc đều đã đến rồi, sao đến quần áo con còn chưa thay?"
							<br/><br/>Hạ Diệp Chi đẩy đẩy chiếc kính gọng đen trên mũi, mắt rũ xuống thẫn thờ, "Mẹ, mẹ thật sự muốn gả con cho vị hôn phu của chị sao?"')
INSERT [dbo].[Product] ([Product_ID], [Book_ID], [Centent_Book]) VALUES (30, N'L251278M', N'Thâm Hải Ma Thú hô hấp hình thành vĩnh viễn không dừng lại phong bạo...
										<br/>Bước chân của người khổng lồ sống giữa dòng dung nham có thể phá hủy cả ngôi thành....
										<br/>Ác ma vực sâu luôn muốn tiến vào cái thế giới này...
										<br/>Mà thần linh giáng trần, đi lại giữa nhân gian truyền bá sự vinh quanh của họ....
										<br/>Nhưng toàn bộ thế giới lại do đế quốc Long Sơn thống trị. Đây là một đế quốc của con người. Toàn bộ những tri thức uyên 
										bác được cất giữ trong tháp pháp sư cả trăm, ngàn năm.... Các kỵ sĩ tuần tra canh giữ bầu trời, mặt đất và trên biển....
										<br/>Tại tỉnh An Dương của đế quốc có một lãnh địa của quý tộc rất bình thường gọi là Tuyết Ưng lĩnh...
										<br/>Câu chuyện được bắt đầu từ nơi này...')
INSERT [dbo].[Product] ([Product_ID], [Book_ID], [Centent_Book]) VALUES (31, N'M010101O', N'Tại Thần giới gặp phải tai nạn, thiếu niên lại trọng sinh, ở tại Phàm giới.
										<br/>Sau đó chàng cứ bước lên con đường của bản thân, ngày càng cường đại.
										<br/>Tính tình không đổi, sở thích đùa dai càng không bỏ, dám cả gan hố cường giả lừa tài phủ, còn trêu đùa hài tử nộp tài nguyên...
										<br/>Nhưng chàng ân oán phân minh, làm người song phẳng, nhân nghĩa lưỡng toàn.
										<br/>Trăm ngàn trắc trở, nguy nan trùng trùng, cuối cùng vẫn thành công vấn đỉnh tiên lộ.
										<br/>Lục Tộc phân tranh: Nhân Tộc, Yêu Tộc, Tinh Tộc, Ma Tộc, Tiên Tộc, Thần Tộc.')
INSERT [dbo].[Product] ([Product_ID], [Book_ID], [Centent_Book]) VALUES (32, N'M070421N', N'Con trai một vị phú thương từ nhỏ cơ thể đã yếu ớt mang nhiều bệnh, trong lúc đang tìm kiếm cách kéo dài mạng sống, bỗng ngoài ý muốn đi lên con đường tu tiên thăng thiên!
										<br/>Đại Đường thịnh thế, thiên hạ thái bình, mưa thuận gió hoà, bách tính an cư
										<br/>Ngàn năm sau, ma vật thôn thiên, yêu quỷ hoành hành, gào thét khắp nơi.
										<br/>Tây Du tái hiện, Đại Thánh đấu thiên, Thiên Bồng hạ phàm, Quyển Liêm trùng sinh.
										<br/>Xuyên không và luân hồi khó hiểu, hư thực thấp thoáng, thật huyễn đan xen!
										<br/>Là mộng cảnh trong dự ngôn? Hay là hiện thực chưa phát sinh?
										<br/>Hắn có thể đánh vỡ ma chướng mệnh trung chú định, trừ khử đại kiếp Tam Giới chưa phát sinh, cứu vãn muôn dân trong nước lửa hay không?
')
INSERT [dbo].[Product] ([Product_ID], [Book_ID], [Centent_Book]) VALUES (33, N'N020202P', N'Sau khi trọng sinh, trong thâm tâm cô liền thề rằng, nhất định phải đem kẻ từng phản bội, từng bán đứng, từng lợi dụng cô mà dẫm nát dưới chân! 
							Cô không cần, cũng không muốn một lần nữa lại làm một đóa hoa yếu đuối, vô dụng, và ngay lúc này đây, cô phải trở thành một “nữ vương” mị sát tỏa sáng…….
							<br/>Nữ chính tên Bình An, trước khi trọng sinh cô được sống trong sự bảo bọc của cha mình nên được ví như một đóa hoa sống trong nhà kính. 
							<br/>Nam chính là Nghiêm Túc. Nam chính hơn Bình An 10 tuổi, là người đứng đầu tập đoàn Nghiêm Thị. Nghiêm Túc anh tuấn, nhiều tiền nên tất nhiên không thể nào……”sạch” được.')
INSERT [dbo].[Product] ([Product_ID], [Book_ID], [Centent_Book]) VALUES (34, N'N080312O', N'Thần bí trong thôn lạc đi ra thiếu niên thần bí, đạo tâm không có, đạo linh không thấu, đạo thể không thông, lại một lòng cầu đạo, bái nhập Vấn Đạo tông, 
							bước vào một đầu không giống bình thường tu đạo chi lộ!')
INSERT [dbo].[Product] ([Product_ID], [Book_ID], [Centent_Book]) VALUES (35, N'O030303Q', N'Truyện lấy bối cảnh kiếp trước vì báo thù, nàng mất hết tất cả tôn nghiêm, táng tận lương tri tổn thương vô tội.
							<br/><br/>Trùng sinh trở lại, nàng để cho bất cứ kẻ nào thay thế được mình;
							<br/><br/>Bởi vì ta là Tề Hoàn, Tề Hoàn độc nhất vô nhị.
							<br/><br/>Đời này, ta chỉ nguyện mang theo tử tay, hạnh phúc quãng đời cuối cùng.')
INSERT [dbo].[Product] ([Product_ID], [Book_ID], [Centent_Book]) VALUES (36, N'O190425P', N'<b>Đế Bá</b> thuộc thể loại tiên hiệp với nhân vật chính là Lý Thất Dạ một chàng trai bị cưỡng ép phải làm điều mà hắn ta không hề biết điều đó sẽ ra sao. 
										Bị chủ nhân thần bí của Tiên Ma Động cưỡng bức vào một hợp đồng tưởng như chỉ có lợi cho Tiên Ma Động khi Lý Thất Dạ chỉ là một đứa bé mười ba tuổi.
										<br/>Chủ nhân của Tiên Ma Động chuyển hồn phách của Lý Thất Dạ vào một vật do hắn luyện chế (với tên gọi Âm Nha) có hình của một con quạ đen. 
										Dã tâm của chủ nhân của Thiên Ma Động to lớn đến cỡ nào (tác giả chưa cho chúng ta đáp án) thì độc giả vẫn chưa biết, nhưng chỉ biết kẻ này muốn 
										dùng Âm Nha bất tử bay đi khắp Cửu giới, thu nạp tất cả các thông tin, tìm hiểu tất cả các bí mật của trời đất này.')
INSERT [dbo].[Product] ([Product_ID], [Book_ID], [Centent_Book]) VALUES (37, N'P221199Q', N'Đoàn Thiên Vũ - một siêu cấp sát thủ trong thế giới ngầm một lần thi hành nhiệm vụ bị người yêu và tổ chức phản bội, đã đồng quy vụ tận cùng kẻ địch cuối cùng 
										cơ duyên xảo hợp xuyên việt tới dị giới tới Ma Giới. Ở đây, hắn chỉ là một kẻ sống thầm lặng, dưới sự ruồng bỏ của Gia tộc vì cơ thể hắn theo cách nói 
										của Ma Giới là hỗn độn thể chất - Thể chất siêu cấp phế thải không thể tu luyện đấu khí hay ma pháp nào cả. Cuộc sống thầm lặng trôi qua, người trong Gia tộc 
										dường như đã quyên mất sự tồn tại của hắn,nhưng không ai có thể ngờ được rằng trong một lần kì ngộ hắn vô tình gặp được "Hồn Độn Chân Quyết" vốn là một trong những vô thượng pháp quyết.')
INSERT [dbo].[Product] ([Product_ID], [Book_ID], [Centent_Book]) VALUES (38, N'Q290245R', N'Thiên Huyễn đại lục, nhân loại quật khởi, nắm giữ vô số năng lực, tu tiên không phải là mơ ước xa vời, cường giả khắp mọi noi.
										<br/>Thanh Phong là mộ thiếu niên trọng sinh tới thời đại này, còn giữ trong người Thú Thần Quyết, tại thế giới này nhấc lên muôn vàn sóng gió
										<br/>"Thanh Phong, ngươi đã từng bảo vì bọn họ mà có thể hi sinh mạng sống, vậy ngươi có từng nghĩ rằng bọn họ không cần mạng sống của ngươi?"')
INSERT [dbo].[Product] ([Product_ID], [Book_ID], [Centent_Book]) VALUES (39, N'R300320S', N'Kiếp trước, Lam Tuyệt bắt đầu con đường tu chân với thiên phú tứ tinh, linh hồn lực bát cấp. Đại khái không phải cái gì thiên tài hay tiền đồ vô lượng.
										<br/>Kiếp này, nàng bức bản thân tẩy tinh phạt tuỷ, chịu đựng trăm ngàn thống khổ cùng đánh cược sinh mệnh chỉ để cải tạo thiên phú, nhanh chóng bước lên cường lộ.
										<br/>Kiếp trước, Lam Tuyệt là một nữ nhân ôn hoà thiện lương, cứu giúp rất nhiều người. Không tiếc bản thân vì đại nghĩa.
										<br/>Kiếp này, nàng trở nên đa nghi khó lường, tính tình cẩn trọng sâu xa, phàm là người hay vật, có thể vơ vét đều vơ vét không ngượng tay.')
INSERT [dbo].[Product] ([Product_ID], [Book_ID], [Centent_Book]) VALUES (40, N'S050505T', N'Mỗi người đều có bản mạng châu, sau khi thức tỉnh, hoặc là Ý Châu, hoặc là Thể Châu, tựa như một vòng xuyến xoay quanh hai cổ tay. 
										Thiên Châu lại tựa như song bào thai vậy, khi Ý, Thể song châu cùng xuất hiện trên một người, đây là Thiên Châu.
										<br/>Tu luyện Thể Châu giả gọi là Thể Châu Sư, tu luyện Ý Châu giả gọi là Ý Châu Sư, mà tu luyện Thiên Châu giả tất nhiên gọi là Thiên Châu Sư vậy. 
										Thiên Châu Sư cảnh giới cao nhất là Thập Nhị Song Châu, vì thế mà quá trình tu luyện của nó cũng được gọi là Thiên Châu Thập Nhị Biến. 
										Diễn viên của chúng ta chính là một vị tu luyện Thiên Châu Biến, hắn là một cung tiến thủ.')
INSERT [dbo].[Product] ([Product_ID], [Book_ID], [Centent_Book]) VALUES (41, N'X939393X', N'Tại học viện học sinh đến nói, đây là hàng năm trọng yếu nhất khảo hạch, nếu không thể thông qua, liền chỉ có bị đuổi ra khỏi cửa phần. 
										Trong đám người, mười sáu tuổi thiếu niên Thạch Hạo dáng người thon dài. Dù là biết rõ vị thiên tài này hiện tại đã là tàn phế người, nhưng vẫn là có từng đôi ái mộ ánh mắt quăng tới.
										<br/>Cái này tự nhiên để nam học sinh mười phần ăn dấm, chỉ là trước kia bọn hắn chỉ có thể nuốt ở trong bụng, bây giờ liền không ngừng châm chọc
										<br/>Thạch Hạo lạnh lùng, lạnh như vậy trào nóng phúng hắn chín tháng này đã trải qua nghe được đủ nhiều, sớm học xong không nhìn, 
										chỉ là song quyền lại là không nhịn được nắm chặt một chút.')
INSERT [dbo].[Product] ([Product_ID], [Book_ID], [Centent_Book]) VALUES (42, N'Y929292Y', N'Huyền Càn đại lục, tông môn san sát, cường giả vô số. Thiếu niên Chu Hằng dựa vào một thanh đoạn kiếm màu đen thần bí trong đan điền, 
										từ Nguyên Thạch Trấn nho nhỏ đi ra và ở trong đại thế này chiến ra một mảnh thiên địa.
										<br/><br/>Người cùng hung cực ác, giết! Người chèn ép thân hữu ta, giết! Người cản trở ta thành đạo, giết! Đăng thiên lộ đạp khúc hành ca, một kiếm nơi tay, thiên hạ độc tôn!')
INSERT [dbo].[Product] ([Product_ID], [Book_ID], [Centent_Book]) VALUES (43, N'Z919191Z', N'Truyện <b>Thần Đạo Đan Tôn</b> của Cô Đơn Địa Phi nói về Đan Đế Lăng Hàn - Một cường giả vì truy cầu con đường thành thần nên vẫn lạc trên khi sắp chạm tay vào bí ẩn thành thần. 
										Lão thiên dường như không muốn tuyệt đường người nên để hắn trọng sinh về một thiếu niên cùng tên và thật may mắn "Bất Diệt Thiên Kinh" vẫn còn ấn ký trong tâm thức hắn. 
										Từ nay về sau phong vân dũng động, Lăng Hàn phải tranh phong cùng vô số thiên tài, lại bắt đầu một con đường truyền kỳ mới chứng minh với thiên địa: Ta mạnh nhất giữa Vạn Cổ Chư Thiên!')
SET IDENTITY_INSERT [dbo].[Product] OFF
GO
INSERT [dbo].[Publisher] ([Publisher_ID], [Publisher_Name], [Publisher_Address]) VALUES (N'A100B', N'Lisa', N'England')
INSERT [dbo].[Publisher] ([Publisher_ID], [Publisher_Name], [Publisher_Address]) VALUES (N'B105C', N'Ryo', N'China')
INSERT [dbo].[Publisher] ([Publisher_ID], [Publisher_Name], [Publisher_Address]) VALUES (N'C110D', N'Uras', N'Vietnam')
INSERT [dbo].[Publisher] ([Publisher_ID], [Publisher_Name], [Publisher_Address]) VALUES (N'D115E', N'Alis', N'Korea')
INSERT [dbo].[Publisher] ([Publisher_ID], [Publisher_Name], [Publisher_Address]) VALUES (N'E120F', N'Chista', N'Japan')
GO
INSERT [dbo].[Quantity] ([Book_ID], [Quantity_Sold], [Quantity_Stock]) VALUES (N'A070421B', 99, 100)
INSERT [dbo].[Quantity] ([Book_ID], [Quantity_Sold], [Quantity_Stock]) VALUES (N'A112233C', 99, 500)
INSERT [dbo].[Quantity] ([Book_ID], [Quantity_Sold], [Quantity_Stock]) VALUES (N'A121212A', 125, 169)
INSERT [dbo].[Quantity] ([Book_ID], [Quantity_Sold], [Quantity_Stock]) VALUES (N'A313131D', 219, 500)
INSERT [dbo].[Quantity] ([Book_ID], [Quantity_Sold], [Quantity_Stock]) VALUES (N'B131313B', 155, 500)
INSERT [dbo].[Quantity] ([Book_ID], [Quantity_Sold], [Quantity_Stock]) VALUES (N'B190121C', 100, 10)
INSERT [dbo].[Quantity] ([Book_ID], [Quantity_Sold], [Quantity_Stock]) VALUES (N'B223344D', 70, 169)
INSERT [dbo].[Quantity] ([Book_ID], [Quantity_Sold], [Quantity_Stock]) VALUES (N'B353535E', 299, 150)
INSERT [dbo].[Quantity] ([Book_ID], [Quantity_Sold], [Quantity_Stock]) VALUES (N'C141414C', 159, 150)
INSERT [dbo].[Quantity] ([Book_ID], [Quantity_Sold], [Quantity_Stock]) VALUES (N'C251298D', 50, 10)
INSERT [dbo].[Quantity] ([Book_ID], [Quantity_Sold], [Quantity_Stock]) VALUES (N'C334455E', 89, 119)
INSERT [dbo].[Quantity] ([Book_ID], [Quantity_Sold], [Quantity_Stock]) VALUES (N'C373737F', 199, 100)
INSERT [dbo].[Quantity] ([Book_ID], [Quantity_Sold], [Quantity_Stock]) VALUES (N'D100179E', 200, 300)
INSERT [dbo].[Quantity] ([Book_ID], [Quantity_Sold], [Quantity_Stock]) VALUES (N'D151515D', 169, 119)
INSERT [dbo].[Quantity] ([Book_ID], [Quantity_Sold], [Quantity_Stock]) VALUES (N'D445566F', 100, 150)
INSERT [dbo].[Quantity] ([Book_ID], [Quantity_Sold], [Quantity_Stock]) VALUES (N'E211219F', 199, 201)
INSERT [dbo].[Quantity] ([Book_ID], [Quantity_Sold], [Quantity_Stock]) VALUES (N'E556677G', 199, 500)
INSERT [dbo].[Quantity] ([Book_ID], [Quantity_Sold], [Quantity_Stock]) VALUES (N'F101021G', 300, 100)
INSERT [dbo].[Quantity] ([Book_ID], [Quantity_Sold], [Quantity_Stock]) VALUES (N'F667788H', 90, 100)
INSERT [dbo].[Quantity] ([Book_ID], [Quantity_Sold], [Quantity_Stock]) VALUES (N'G101010I', 89, 169)
INSERT [dbo].[Quantity] ([Book_ID], [Quantity_Sold], [Quantity_Stock]) VALUES (N'G280229H', 10, 90)
INSERT [dbo].[Quantity] ([Book_ID], [Quantity_Sold], [Quantity_Stock]) VALUES (N'H202020J', 79, 119)
INSERT [dbo].[Quantity] ([Book_ID], [Quantity_Sold], [Quantity_Stock]) VALUES (N'H291294I', 20, 280)
INSERT [dbo].[Quantity] ([Book_ID], [Quantity_Sold], [Quantity_Stock]) VALUES (N'I111221J', 294, 25)
INSERT [dbo].[Quantity] ([Book_ID], [Quantity_Sold], [Quantity_Stock]) VALUES (N'I303030K', 299, 100)
INSERT [dbo].[Quantity] ([Book_ID], [Quantity_Sold], [Quantity_Stock]) VALUES (N'J050525K', 156, 100)
INSERT [dbo].[Quantity] ([Book_ID], [Quantity_Sold], [Quantity_Stock]) VALUES (N'J404040L', 199, 150)
INSERT [dbo].[Quantity] ([Book_ID], [Quantity_Sold], [Quantity_Stock]) VALUES (N'K260222L', 89, 500)
INSERT [dbo].[Quantity] ([Book_ID], [Quantity_Sold], [Quantity_Stock]) VALUES (N'K505050M', 119, 500)
INSERT [dbo].[Quantity] ([Book_ID], [Quantity_Sold], [Quantity_Stock]) VALUES (N'L251278M', 99, 100)
INSERT [dbo].[Quantity] ([Book_ID], [Quantity_Sold], [Quantity_Stock]) VALUES (N'M010101O', 99, 150)
INSERT [dbo].[Quantity] ([Book_ID], [Quantity_Sold], [Quantity_Stock]) VALUES (N'M070421N', 10, 119)
INSERT [dbo].[Quantity] ([Book_ID], [Quantity_Sold], [Quantity_Stock]) VALUES (N'N020202P', 89, 119)
INSERT [dbo].[Quantity] ([Book_ID], [Quantity_Sold], [Quantity_Stock]) VALUES (N'N080312O', 19, 500)
INSERT [dbo].[Quantity] ([Book_ID], [Quantity_Sold], [Quantity_Stock]) VALUES (N'O030303Q', 105, 100)
INSERT [dbo].[Quantity] ([Book_ID], [Quantity_Sold], [Quantity_Stock]) VALUES (N'O190425P', 30, 150)
INSERT [dbo].[Quantity] ([Book_ID], [Quantity_Sold], [Quantity_Stock]) VALUES (N'P221199Q', 40, 100)
INSERT [dbo].[Quantity] ([Book_ID], [Quantity_Sold], [Quantity_Stock]) VALUES (N'Q290245R', 199, 500)
INSERT [dbo].[Quantity] ([Book_ID], [Quantity_Sold], [Quantity_Stock]) VALUES (N'R300320S', 299, 100)
INSERT [dbo].[Quantity] ([Book_ID], [Quantity_Sold], [Quantity_Stock]) VALUES (N'S050505T', 119, 150)
INSERT [dbo].[Quantity] ([Book_ID], [Quantity_Sold], [Quantity_Stock]) VALUES (N'X939393X', 99, 119)
INSERT [dbo].[Quantity] ([Book_ID], [Quantity_Sold], [Quantity_Stock]) VALUES (N'Y929292Y', 89, 169)
INSERT [dbo].[Quantity] ([Book_ID], [Quantity_Sold], [Quantity_Stock]) VALUES (N'Z919191Z', 69, 100)
GO
INSERT [dbo].[Store] ([Store_ID], [Store_Name], [Store_Address]) VALUES (N'A1101B', N'Shop White', N'Thanh Xuân - Hà Nội')
INSERT [dbo].[Store] ([Store_ID], [Store_Name], [Store_Address]) VALUES (N'B1202C', N'Shop Nana', N'Mỹ Đình - Hà Nội')
INSERT [dbo].[Store] ([Store_ID], [Store_Name], [Store_Address]) VALUES (N'C1303D', N'Shop Mixi', N'Thanh Oai - Hà Nội')
INSERT [dbo].[Store] ([Store_ID], [Store_Name], [Store_Address]) VALUES (N'D1404E', N'Shop Chill', N'Quận 8 - Sài Gòn')
INSERT [dbo].[Store] ([Store_ID], [Store_Name], [Store_Address]) VALUES (N'E1505F', N'Shop Natsu', N'Quận Thanh Khê - Đà Nẵng')
INSERT [dbo].[Store] ([Store_ID], [Store_Name], [Store_Address]) VALUES (N'F1606G', N'Shop Rus', N'Quận 7 - Sài Gòn')
INSERT [dbo].[Store] ([Store_ID], [Store_Name], [Store_Address]) VALUES (N'F1707H', N'Shop Style', N'Huyện Phú Lộc - Thừa Thiên Huế')
GO
INSERT [dbo].[Types] ([Types_ID], [Types_Name]) VALUES (1, N'Tiên Hiệp')
INSERT [dbo].[Types] ([Types_ID], [Types_Name]) VALUES (2, N'Huyền Huyền')
INSERT [dbo].[Types] ([Types_ID], [Types_Name]) VALUES (3, N'Dị Giới')
INSERT [dbo].[Types] ([Types_ID], [Types_Name]) VALUES (4, N'Kiếm Hiệp')
INSERT [dbo].[Types] ([Types_ID], [Types_Name]) VALUES (5, N'Trọng Sinh')
INSERT [dbo].[Types] ([Types_ID], [Types_Name]) VALUES (6, N'Tình Cảm')
GO
ALTER TABLE [dbo].[Book]  WITH CHECK ADD FOREIGN KEY([Book_Types])
REFERENCES [dbo].[Types] ([Types_ID])
GO
ALTER TABLE [dbo].[BookAuthor]  WITH CHECK ADD  CONSTRAINT [fk_BookAuthor_Author_ID] FOREIGN KEY([Author_ID])
REFERENCES [dbo].[Author] ([Author_ID])
GO
ALTER TABLE [dbo].[BookAuthor] CHECK CONSTRAINT [fk_BookAuthor_Author_ID]
GO
ALTER TABLE [dbo].[BookAuthor]  WITH CHECK ADD  CONSTRAINT [fk_BookAuthor_Book_ID] FOREIGN KEY([Book_ID])
REFERENCES [dbo].[Book] ([Book_ID])
GO
ALTER TABLE [dbo].[BookAuthor] CHECK CONSTRAINT [fk_BookAuthor_Book_ID]
GO
ALTER TABLE [dbo].[BookPublisher]  WITH CHECK ADD  CONSTRAINT [fk_BookPublisher_Book_ID] FOREIGN KEY([Book_ID])
REFERENCES [dbo].[Book] ([Book_ID])
GO
ALTER TABLE [dbo].[BookPublisher] CHECK CONSTRAINT [fk_BookPublisher_Book_ID]
GO
ALTER TABLE [dbo].[BookPublisher]  WITH CHECK ADD  CONSTRAINT [fk_BookPublisher_Publisher_ID] FOREIGN KEY([Publisher_ID])
REFERENCES [dbo].[Publisher] ([Publisher_ID])
GO
ALTER TABLE [dbo].[BookPublisher] CHECK CONSTRAINT [fk_BookPublisher_Publisher_ID]
GO
ALTER TABLE [dbo].[BookStore]  WITH CHECK ADD  CONSTRAINT [fk_BookStore_Book_ID] FOREIGN KEY([Book_ID])
REFERENCES [dbo].[Book] ([Book_ID])
GO
ALTER TABLE [dbo].[BookStore] CHECK CONSTRAINT [fk_BookStore_Book_ID]
GO
ALTER TABLE [dbo].[BookStore]  WITH CHECK ADD  CONSTRAINT [fk_BookStore_Store_ID] FOREIGN KEY([Store_ID])
REFERENCES [dbo].[Store] ([Store_ID])
GO
ALTER TABLE [dbo].[BookStore] CHECK CONSTRAINT [fk_BookStore_Store_ID]
GO
ALTER TABLE [dbo].[OrdersLine]  WITH CHECK ADD  CONSTRAINT [fk_OrderLine_Book_ID] FOREIGN KEY([Book_ID])
REFERENCES [dbo].[Book] ([Book_ID])
GO
ALTER TABLE [dbo].[OrdersLine] CHECK CONSTRAINT [fk_OrderLine_Book_ID]
GO
ALTER TABLE [dbo].[OrdersLine]  WITH CHECK ADD  CONSTRAINT [fk_OrderLine_Order_ID] FOREIGN KEY([Order_ID])
REFERENCES [dbo].[Orders] ([Order_ID])
GO
ALTER TABLE [dbo].[OrdersLine] CHECK CONSTRAINT [fk_OrderLine_Order_ID]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [fk_Product_Book_ID] FOREIGN KEY([Book_ID])
REFERENCES [dbo].[Book] ([Book_ID])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [fk_Product_Book_ID]
GO
ALTER TABLE [dbo].[Quantity]  WITH CHECK ADD  CONSTRAINT [fk_Quantity_Book_ID] FOREIGN KEY([Book_ID])
REFERENCES [dbo].[Book] ([Book_ID])
GO
ALTER TABLE [dbo].[Quantity] CHECK CONSTRAINT [fk_Quantity_Book_ID]
GO
