USE [MenuDemo]
GO
/****** Object:  Table [dbo].[T受注]    Script Date: 2025/04/26 11:01:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T受注](
	[受注Id] [int] IDENTITY(1,1) NOT NULL,
	[得意先Id] [int] NOT NULL,
	[得意先名] [nvarchar](100) NOT NULL,
	[受注日] [date] NOT NULL,
	[合計金額] [decimal](10, 0) NOT NULL,
	[Is売上済み] [bit] NOT NULL,
	[備考] [nvarchar](255) NULL,
	[Version] [int] NOT NULL,
 CONSTRAINT [PK_T受注] PRIMARY KEY CLUSTERED 
(
	[受注Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T障害ログ]    Script Date: 2025/04/26 11:01:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T障害ログ](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[発生日時] [datetime] NOT NULL,
	[画面名] [nvarchar](100) NULL,
	[処理名] [nvarchar](100) NULL,
	[メッセージ] [nvarchar](4000) NULL,
	[スタックトレース] [nvarchar](max) NULL,
	[クライアント情報] [nvarchar](100) NULL,
	[備考] [nvarchar](500) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T得意先]    Script Date: 2025/04/26 11:01:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T得意先](
	[得意先Id] [int] IDENTITY(1,1) NOT NULL,
	[得意先名] [nvarchar](100) NOT NULL,
	[住所] [nvarchar](200) NULL,
	[電話番号] [nvarchar](20) NULL,
	[メール] [nvarchar](100) NULL,
	[Is削除済み] [bit] NOT NULL,
	[備考] [nvarchar](255) NULL,
	[Version] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[得意先Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[T受注] ON 
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (1, 433, N'山田水産合同会社', CAST(N'2024-09-28' AS Date), CAST(804772 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (2, 21, N'株式会社山田ガス', CAST(N'2024-12-02' AS Date), CAST(546110 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (3, 208, N'田中水産株式会社', CAST(N'2024-11-09' AS Date), CAST(509748 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (4, 299, N'合同会社山下電気', CAST(N'2024-12-23' AS Date), CAST(539202 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (5, 145, N'有限会社青木水産', CAST(N'2025-02-01' AS Date), CAST(802518 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (6, 317, N'合同会社中島電気', CAST(N'2024-12-06' AS Date), CAST(963938 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (7, 159, N'佐藤食品有限会社', CAST(N'2025-02-22' AS Date), CAST(775284 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (8, 461, N'小林運輸有限会社', CAST(N'2024-04-28' AS Date), CAST(356236 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (9, 287, N'橋本保険合同会社', CAST(N'2025-02-21' AS Date), CAST(380977 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (10, 162, N'佐藤ガス有限会社', CAST(N'2024-06-05' AS Date), CAST(681532 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (11, 495, N'合同会社佐藤食品', CAST(N'2024-07-05' AS Date), CAST(510181 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (12, 444, N'清水電気有限会社', CAST(N'2024-07-21' AS Date), CAST(283145 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (13, 413, N'藤原通信合同会社', CAST(N'2024-07-07' AS Date), CAST(970489 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (14, 48, N'株式会社鈴木通信', CAST(N'2024-09-21' AS Date), CAST(754754 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (15, 314, N'藤井農林有限会社', CAST(N'2024-08-04' AS Date), CAST(878287 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (16, 125, N'中村食品有限会社', CAST(N'2024-10-29' AS Date), CAST(747822 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (17, 98, N'合同会社田中通信', CAST(N'2024-06-27' AS Date), CAST(242473 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (18, 412, N'株式会社佐藤食品', CAST(N'2025-01-31' AS Date), CAST(852194 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (19, 47, N'有限会社中村銀行', CAST(N'2025-03-03' AS Date), CAST(345601 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (20, 56, N'有限会社藤田食品', CAST(N'2024-11-10' AS Date), CAST(588045 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (21, 362, N'株式会社田中印刷', CAST(N'2025-02-09' AS Date), CAST(584033 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (22, 418, N'株式会社田中印刷', CAST(N'2024-07-11' AS Date), CAST(223072 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (23, 228, N'加藤印刷株式会社', CAST(N'2025-02-26' AS Date), CAST(635252 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (24, 163, N'小林運輸有限会社', CAST(N'2024-06-23' AS Date), CAST(263867 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (25, 95, N'有限会社山本ガス', CAST(N'2025-01-07' AS Date), CAST(871370 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (26, 17, N'佐藤運輸株式会社', CAST(N'2024-06-04' AS Date), CAST(698557 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (27, 244, N'鈴木農林株式会社', CAST(N'2025-03-09' AS Date), CAST(104187 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (28, 449, N'田中建設合同会社', CAST(N'2025-01-27' AS Date), CAST(978235 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (29, 432, N'中村通信合同会社', CAST(N'2025-03-03' AS Date), CAST(951802 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (30, 429, N'清水建設有限会社', CAST(N'2024-04-17' AS Date), CAST(560055 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (31, 268, N'高橋情報合同会社', CAST(N'2024-12-14' AS Date), CAST(900750 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (32, 459, N'青木農林合同会社', CAST(N'2024-05-01' AS Date), CAST(628451 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (33, 297, N'中村通信合同会社', CAST(N'2024-11-24' AS Date), CAST(482449 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (34, 339, N'合同会社西村情報', CAST(N'2024-05-20' AS Date), CAST(744239 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (35, 43, N'太田情報合同会社', CAST(N'2024-10-29' AS Date), CAST(652549 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (36, 250, N'合同会社山田水産', CAST(N'2024-06-17' AS Date), CAST(670757 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (37, 433, N'山田水産合同会社', CAST(N'2025-01-06' AS Date), CAST(264841 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (38, 375, N'合同会社高橋銀行', CAST(N'2024-11-26' AS Date), CAST(132824 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (39, 191, N'有限会社松田通信', CAST(N'2025-01-16' AS Date), CAST(358689 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (40, 418, N'株式会社田中印刷', CAST(N'2025-03-13' AS Date), CAST(115494 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (41, 438, N'前田印刷有限会社', CAST(N'2024-04-21' AS Date), CAST(239400 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (42, 419, N'坂本通信株式会社', CAST(N'2024-06-24' AS Date), CAST(675013 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (43, 14, N'有限会社小林情報', CAST(N'2025-02-09' AS Date), CAST(675845 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (44, 311, N'高橋通信有限会社', CAST(N'2024-06-23' AS Date), CAST(135509 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (45, 47, N'有限会社中村銀行', CAST(N'2024-10-06' AS Date), CAST(884349 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (46, 19, N'株式会社青木水産', CAST(N'2024-06-07' AS Date), CAST(32687 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (47, 493, N'山田建設合同会社', CAST(N'2025-01-09' AS Date), CAST(762996 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (48, 246, N'佐藤保険株式会社', CAST(N'2024-12-27' AS Date), CAST(772477 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (49, 480, N'中島銀行有限会社', CAST(N'2024-05-01' AS Date), CAST(33889 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (50, 318, N'有限会社村上情報', CAST(N'2025-02-21' AS Date), CAST(886507 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (51, 36, N'佐々木食品株式会社', CAST(N'2024-12-21' AS Date), CAST(85467 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (52, 180, N'井上印刷合同会社', CAST(N'2024-09-02' AS Date), CAST(199077 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (53, 258, N'株式会社中村建設', CAST(N'2024-08-17' AS Date), CAST(51291 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (54, 359, N'伊藤保険株式会社', CAST(N'2024-09-25' AS Date), CAST(219039 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (55, 184, N'合同会社山田電気', CAST(N'2024-08-16' AS Date), CAST(889049 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (56, 358, N'小川運輸有限会社', CAST(N'2024-05-04' AS Date), CAST(223295 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (57, 404, N'株式会社中村印刷', CAST(N'2024-05-02' AS Date), CAST(175893 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (58, 176, N'有限会社山田通信', CAST(N'2024-07-16' AS Date), CAST(272864 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (59, 306, N'太田通信株式会社', CAST(N'2024-08-30' AS Date), CAST(707938 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (60, 7, N'山崎電気合同会社', CAST(N'2024-08-15' AS Date), CAST(724374 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (61, 461, N'小林運輸有限会社', CAST(N'2024-06-26' AS Date), CAST(927299 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (62, 333, N'有限会社近藤食品', CAST(N'2024-10-13' AS Date), CAST(417520 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (63, 79, N'合同会社加藤ガス', CAST(N'2024-06-30' AS Date), CAST(734380 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (64, 235, N'有限会社鈴木通信', CAST(N'2025-03-04' AS Date), CAST(362234 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (65, 279, N'鈴木運輸株式会社', CAST(N'2024-11-21' AS Date), CAST(151387 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (66, 391, N'松田保険有限会社', CAST(N'2024-08-10' AS Date), CAST(379335 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (67, 345, N'合同会社小川銀行', CAST(N'2024-10-12' AS Date), CAST(628951 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (68, 367, N'鈴木保険株式会社', CAST(N'2024-11-06' AS Date), CAST(416865 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (69, 425, N'斎藤電気有限会社', CAST(N'2024-05-15' AS Date), CAST(94644 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (70, 305, N'近藤情報株式会社', CAST(N'2025-01-05' AS Date), CAST(742517 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (71, 82, N'有限会社山本運輸', CAST(N'2024-12-12' AS Date), CAST(243935 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (72, 194, N'有限会社鈴木運輸', CAST(N'2024-04-15' AS Date), CAST(927947 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (73, 17, N'佐藤運輸株式会社', CAST(N'2024-09-20' AS Date), CAST(924031 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (74, 396, N'株式会社山崎銀行', CAST(N'2024-05-09' AS Date), CAST(753446 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (75, 85, N'斉藤鉱業合同会社', CAST(N'2024-08-28' AS Date), CAST(76989 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (76, 360, N'小林食品有限会社', CAST(N'2025-01-23' AS Date), CAST(478047 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (77, 465, N'岡田建設合同会社', CAST(N'2024-06-30' AS Date), CAST(643316 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (78, 453, N'佐藤通信株式会社', CAST(N'2025-03-25' AS Date), CAST(528607 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (79, 160, N'有限会社渡辺食品', CAST(N'2024-08-17' AS Date), CAST(62278 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (80, 97, N'合同会社佐藤通信', CAST(N'2024-07-07' AS Date), CAST(673841 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (81, 429, N'清水建設有限会社', CAST(N'2025-02-06' AS Date), CAST(25444 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (82, 487, N'村上農林株式会社', CAST(N'2024-05-01' AS Date), CAST(447764 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (83, 2, N'吉田情報有限会社', CAST(N'2024-12-25' AS Date), CAST(24985 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (84, 422, N'中川通信有限会社', CAST(N'2024-05-03' AS Date), CAST(564010 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (85, 98, N'合同会社田中通信', CAST(N'2025-02-12' AS Date), CAST(647911 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (86, 448, N'株式会社山本銀行', CAST(N'2024-11-10' AS Date), CAST(303583 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (87, 52, N'株式会社佐藤農林', CAST(N'2024-08-13' AS Date), CAST(905419 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (88, 322, N'藤原保険有限会社', CAST(N'2025-03-03' AS Date), CAST(32906 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (89, 468, N'福田水産株式会社', CAST(N'2024-08-25' AS Date), CAST(848676 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (90, 442, N'合同会社小林電気', CAST(N'2024-12-03' AS Date), CAST(149901 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (91, 59, N'中村情報有限会社', CAST(N'2025-01-24' AS Date), CAST(301933 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (92, 22, N'株式会社前田食品', CAST(N'2025-03-24' AS Date), CAST(225729 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (93, 286, N'合同会社佐藤保険', CAST(N'2024-11-03' AS Date), CAST(394716 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (94, 434, N'佐藤情報合同会社', CAST(N'2024-04-19' AS Date), CAST(647111 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (95, 365, N'山口食品株式会社', CAST(N'2024-05-19' AS Date), CAST(956560 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (96, 328, N'佐藤印刷株式会社', CAST(N'2024-09-03' AS Date), CAST(400541 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (97, 107, N'佐藤食品合同会社', CAST(N'2024-10-03' AS Date), CAST(625645 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (98, 5, N'長谷川農林株式会社', CAST(N'2025-02-02' AS Date), CAST(168359 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (99, 171, N'合同会社前田水産', CAST(N'2024-10-23' AS Date), CAST(837979 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (100, 368, N'山田鉱業株式会社', CAST(N'2025-02-25' AS Date), CAST(364687 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (101, 22, N'株式会社前田食品', CAST(N'2024-11-26' AS Date), CAST(181820 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (102, 299, N'合同会社山下電気', CAST(N'2024-11-16' AS Date), CAST(388438 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (103, 281, N'有限会社鈴木印刷', CAST(N'2025-02-06' AS Date), CAST(317659 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (104, 245, N'鈴木銀行株式会社', CAST(N'2024-12-12' AS Date), CAST(989112 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (105, 158, N'合同会社伊藤ガス', CAST(N'2025-01-12' AS Date), CAST(908667 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (106, 155, N'合同会社佐藤食品', CAST(N'2024-09-19' AS Date), CAST(886147 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (107, 154, N'青木食品有限会社', CAST(N'2024-09-13' AS Date), CAST(123929 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (108, 288, N'有限会社佐藤鉱業', CAST(N'2024-08-10' AS Date), CAST(507029 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (109, 431, N'株式会社西村通信', CAST(N'2024-10-20' AS Date), CAST(140364 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (110, 60, N'有限会社佐々木農林', CAST(N'2024-04-20' AS Date), CAST(531912 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (111, 20, N'吉田電気株式会社', CAST(N'2024-11-10' AS Date), CAST(361358 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (112, 471, N'岡田印刷合同会社', CAST(N'2025-01-18' AS Date), CAST(667186 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (113, 413, N'藤原通信合同会社', CAST(N'2024-05-21' AS Date), CAST(101144 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (114, 414, N'有限会社坂本情報', CAST(N'2025-03-01' AS Date), CAST(217660 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (115, 32, N'株式会社山田銀行', CAST(N'2024-09-28' AS Date), CAST(18232 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (116, 202, N'田中通信合同会社', CAST(N'2024-07-03' AS Date), CAST(554214 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (117, 230, N'鈴木通信株式会社', CAST(N'2024-08-06' AS Date), CAST(836580 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (118, 217, N'松田保険合同会社', CAST(N'2025-03-02' AS Date), CAST(396223 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (119, 134, N'合同会社高橋銀行', CAST(N'2024-06-18' AS Date), CAST(824848 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (120, 221, N'渡辺電気有限会社', CAST(N'2025-01-05' AS Date), CAST(385935 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (121, 33, N'山本電気株式会社', CAST(N'2024-04-19' AS Date), CAST(38960 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (122, 386, N'山田情報株式会社', CAST(N'2024-05-02' AS Date), CAST(221485 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (123, 255, N'高橋銀行株式会社', CAST(N'2024-09-22' AS Date), CAST(278938 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (124, 329, N'有限会社高橋情報', CAST(N'2025-03-23' AS Date), CAST(846169 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (125, 320, N'合同会社加藤食品', CAST(N'2025-01-29' AS Date), CAST(119712 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (126, 235, N'有限会社鈴木通信', CAST(N'2024-10-02' AS Date), CAST(389209 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (127, 54, N'高橋印刷有限会社', CAST(N'2024-06-12' AS Date), CAST(521601 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (128, 289, N'松田鉱業有限会社', CAST(N'2024-09-18' AS Date), CAST(679372 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (129, 450, N'有限会社森運輸', CAST(N'2024-07-21' AS Date), CAST(529470 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (130, 427, N'株式会社藤田通信', CAST(N'2024-08-01' AS Date), CAST(532868 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (131, 278, N'合同会社前田情報', CAST(N'2024-06-05' AS Date), CAST(986552 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (132, 5, N'長谷川農林株式会社', CAST(N'2024-10-21' AS Date), CAST(749868 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (133, 419, N'坂本通信株式会社', CAST(N'2024-10-31' AS Date), CAST(47191 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (134, 448, N'株式会社山本銀行', CAST(N'2024-12-03' AS Date), CAST(641857 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (135, 432, N'中村通信合同会社', CAST(N'2024-10-01' AS Date), CAST(621265 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (136, 368, N'山田鉱業株式会社', CAST(N'2024-04-17' AS Date), CAST(856258 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (137, 34, N'株式会社小林食品', CAST(N'2025-03-01' AS Date), CAST(551618 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (138, 34, N'株式会社小林食品', CAST(N'2024-12-19' AS Date), CAST(146833 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (139, 154, N'青木食品有限会社', CAST(N'2025-04-06' AS Date), CAST(805762 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (140, 170, N'有限会社伊藤通信', CAST(N'2025-01-21' AS Date), CAST(849537 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (141, 445, N'株式会社岡本電気', CAST(N'2024-05-13' AS Date), CAST(493115 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (142, 259, N'近藤建設株式会社', CAST(N'2024-09-30' AS Date), CAST(954861 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (143, 294, N'井上食品有限会社', CAST(N'2025-02-26' AS Date), CAST(721533 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (144, 383, N'株式会社松本ガス', CAST(N'2024-09-07' AS Date), CAST(959779 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (145, 149, N'有限会社小川水産', CAST(N'2024-07-13' AS Date), CAST(954912 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (146, 423, N'山本電気有限会社', CAST(N'2024-08-10' AS Date), CAST(896562 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (147, 312, N'株式会社田中通信', CAST(N'2024-06-17' AS Date), CAST(254917 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (148, 337, N'有限会社林農林', CAST(N'2025-04-13' AS Date), CAST(786727 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (149, 155, N'合同会社佐藤食品', CAST(N'2024-07-28' AS Date), CAST(607967 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (150, 171, N'合同会社前田水産', CAST(N'2025-03-11' AS Date), CAST(527482 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (151, 483, N'清水保険有限会社', CAST(N'2024-11-09' AS Date), CAST(820004 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (152, 197, N'岡田ガス株式会社', CAST(N'2024-09-29' AS Date), CAST(75283 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (153, 329, N'有限会社高橋情報', CAST(N'2025-02-07' AS Date), CAST(260559 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (154, 374, N'株式会社渡辺ガス', CAST(N'2024-10-24' AS Date), CAST(68224 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (155, 247, N'木村ガス有限会社', CAST(N'2024-09-12' AS Date), CAST(157749 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (156, 456, N'株式会社山崎建設', CAST(N'2024-06-09' AS Date), CAST(762026 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (157, 345, N'合同会社小川銀行', CAST(N'2024-04-21' AS Date), CAST(168726 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (158, 211, N'株式会社福田建設', CAST(N'2025-03-26' AS Date), CAST(651488 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (159, 198, N'鈴木食品株式会社', CAST(N'2024-08-22' AS Date), CAST(59317 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (160, 242, N'有限会社渡辺食品', CAST(N'2025-01-26' AS Date), CAST(31210 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (161, 307, N'合同会社森銀行', CAST(N'2024-06-01' AS Date), CAST(149148 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (162, 54, N'高橋印刷有限会社', CAST(N'2024-04-20' AS Date), CAST(585818 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (163, 100, N'有限会社松本電気', CAST(N'2024-09-29' AS Date), CAST(831472 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (164, 57, N'合同会社林銀行', CAST(N'2025-03-14' AS Date), CAST(649756 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (165, 315, N'田中農林株式会社', CAST(N'2024-05-25' AS Date), CAST(989281 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (166, 334, N'株式会社鈴木印刷', CAST(N'2025-02-09' AS Date), CAST(725684 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (167, 404, N'株式会社中村印刷', CAST(N'2025-02-07' AS Date), CAST(966074 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (168, 410, N'有限会社山田鉱業', CAST(N'2024-11-14' AS Date), CAST(971426 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (169, 266, N'山口食品有限会社', CAST(N'2025-01-07' AS Date), CAST(50039 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (170, 228, N'加藤印刷株式会社', CAST(N'2024-10-05' AS Date), CAST(803369 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (171, 234, N'田中運輸株式会社', CAST(N'2024-10-13' AS Date), CAST(837912 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (172, 490, N'清水印刷合同会社', CAST(N'2025-03-22' AS Date), CAST(955739 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (173, 249, N'小林水産合同会社', CAST(N'2024-12-04' AS Date), CAST(954841 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (174, 484, N'山下ガス有限会社', CAST(N'2024-07-21' AS Date), CAST(708887 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (175, 118, N'伊藤水産有限会社', CAST(N'2025-02-25' AS Date), CAST(824054 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (176, 260, N'池田情報合同会社', CAST(N'2024-11-08' AS Date), CAST(128955 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (177, 219, N'合同会社佐藤通信', CAST(N'2024-06-28' AS Date), CAST(452558 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (178, 480, N'中島銀行有限会社', CAST(N'2025-02-19' AS Date), CAST(445831 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (179, 51, N'有限会社三浦運輸', CAST(N'2024-09-13' AS Date), CAST(821407 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (180, 376, N'株式会社小川銀行', CAST(N'2025-03-29' AS Date), CAST(839783 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (181, 221, N'渡辺電気有限会社', CAST(N'2024-04-27' AS Date), CAST(447276 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (182, 255, N'高橋銀行株式会社', CAST(N'2024-10-29' AS Date), CAST(767641 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (183, 41, N'合同会社山口電気', CAST(N'2024-10-15' AS Date), CAST(83745 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (184, 184, N'合同会社山田電気', CAST(N'2024-04-24' AS Date), CAST(40804 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (185, 179, N'有限会社加藤情報', CAST(N'2025-01-12' AS Date), CAST(20448 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (186, 420, N'福田保険有限会社', CAST(N'2024-10-08' AS Date), CAST(83943 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (187, 107, N'佐藤食品合同会社', CAST(N'2025-04-12' AS Date), CAST(224738 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (188, 383, N'株式会社松本ガス', CAST(N'2025-04-10' AS Date), CAST(317508 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (189, 354, N'合同会社吉田建設', CAST(N'2025-04-01' AS Date), CAST(988099 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (190, 440, N'長谷川ガス株式会社', CAST(N'2025-01-31' AS Date), CAST(206075 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (191, 58, N'合同会社西村鉱業', CAST(N'2024-08-12' AS Date), CAST(371181 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (192, 67, N'小林建設有限会社', CAST(N'2025-03-30' AS Date), CAST(228229 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (193, 172, N'株式会社高橋銀行', CAST(N'2024-08-14' AS Date), CAST(316846 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (194, 480, N'中島銀行有限会社', CAST(N'2024-07-04' AS Date), CAST(676805 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (195, 95, N'有限会社山本ガス', CAST(N'2024-06-14' AS Date), CAST(94734 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (196, 274, N'田中印刷株式会社', CAST(N'2024-06-20' AS Date), CAST(332712 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (197, 193, N'森農林合同会社', CAST(N'2025-01-28' AS Date), CAST(141319 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (198, 162, N'佐藤ガス有限会社', CAST(N'2024-07-27' AS Date), CAST(264634 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (199, 387, N'有限会社松本電気', CAST(N'2025-01-09' AS Date), CAST(315198 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (200, 215, N'山本農林株式会社', CAST(N'2024-05-09' AS Date), CAST(58502 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (201, 308, N'株式会社小林保険', CAST(N'2025-04-03' AS Date), CAST(422930 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (202, 360, N'小林食品有限会社', CAST(N'2025-03-07' AS Date), CAST(148433 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (203, 154, N'青木食品有限会社', CAST(N'2024-07-06' AS Date), CAST(446993 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (204, 303, N'株式会社加藤鉱業', CAST(N'2024-09-09' AS Date), CAST(322505 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (205, 44, N'有限会社田中保険', CAST(N'2024-12-07' AS Date), CAST(476418 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (206, 327, N'有限会社小林通信', CAST(N'2024-07-17' AS Date), CAST(70667 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (207, 210, N'森建設有限会社', CAST(N'2025-04-09' AS Date), CAST(447492 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (208, 226, N'小川通信合同会社', CAST(N'2024-12-30' AS Date), CAST(399647 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (209, 488, N'株式会社福田農林', CAST(N'2024-08-15' AS Date), CAST(105479 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (210, 408, N'佐藤鉱業株式会社', CAST(N'2025-02-17' AS Date), CAST(300424 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (211, 286, N'合同会社佐藤保険', CAST(N'2024-06-07' AS Date), CAST(731630 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (212, 408, N'佐藤鉱業株式会社', CAST(N'2024-04-19' AS Date), CAST(477837 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (213, 95, N'有限会社山本ガス', CAST(N'2024-09-10' AS Date), CAST(462687 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (214, 127, N'有限会社鈴木通信', CAST(N'2024-08-24' AS Date), CAST(366922 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (215, 182, N'渡辺建設合同会社', CAST(N'2024-08-20' AS Date), CAST(672193 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (216, 248, N'有限会社斎藤ガス', CAST(N'2024-12-30' AS Date), CAST(319045 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (217, 426, N'藤田水産合同会社', CAST(N'2024-04-21' AS Date), CAST(480903 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (218, 4, N'株式会社近藤銀行', CAST(N'2024-12-23' AS Date), CAST(323062 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (219, 394, N'森運輸有限会社', CAST(N'2024-05-26' AS Date), CAST(325788 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (220, 218, N'合同会社伊藤ガス', CAST(N'2024-04-17' AS Date), CAST(797850 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (221, 48, N'株式会社鈴木通信', CAST(N'2024-05-01' AS Date), CAST(531854 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (222, 279, N'鈴木運輸株式会社', CAST(N'2024-09-18' AS Date), CAST(303693 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (223, 62, N'青木農林有限会社', CAST(N'2024-11-26' AS Date), CAST(936645 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (224, 1, N'前田電気株式会社', CAST(N'2024-12-03' AS Date), CAST(427782 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (225, 228, N'加藤印刷株式会社', CAST(N'2025-02-20' AS Date), CAST(792815 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (226, 182, N'渡辺建設合同会社', CAST(N'2024-11-19' AS Date), CAST(923622 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (227, 305, N'近藤情報株式会社', CAST(N'2025-03-01' AS Date), CAST(47173 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (228, 406, N'高橋印刷有限会社', CAST(N'2024-11-30' AS Date), CAST(330448 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (229, 61, N'鈴木食品合同会社', CAST(N'2024-07-16' AS Date), CAST(911202 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (230, 457, N'株式会社山崎鉱業', CAST(N'2025-01-20' AS Date), CAST(81400 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (231, 441, N'有限会社山崎保険', CAST(N'2024-11-16' AS Date), CAST(306482 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (232, 294, N'井上食品有限会社', CAST(N'2024-07-20' AS Date), CAST(667603 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (233, 273, N'青木農林合同会社', CAST(N'2025-02-19' AS Date), CAST(440759 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (234, 380, N'株式会社中島食品', CAST(N'2024-11-22' AS Date), CAST(316450 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (235, 191, N'有限会社松田通信', CAST(N'2024-06-27' AS Date), CAST(669356 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (236, 81, N'合同会社吉田農林', CAST(N'2025-02-09' AS Date), CAST(740890 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (237, 196, N'株式会社石川銀行', CAST(N'2024-09-20' AS Date), CAST(629773 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (238, 72, N'合同会社石井印刷', CAST(N'2024-07-01' AS Date), CAST(710719 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (239, 182, N'渡辺建設合同会社', CAST(N'2024-05-25' AS Date), CAST(505625 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (240, 112, N'高橋運輸有限会社', CAST(N'2024-08-12' AS Date), CAST(522604 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (241, 253, N'合同会社伊藤通信', CAST(N'2024-05-15' AS Date), CAST(73147 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (242, 154, N'青木食品有限会社', CAST(N'2025-01-30' AS Date), CAST(791408 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (243, 27, N'加藤水産合同会社', CAST(N'2024-05-30' AS Date), CAST(236192 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (244, 182, N'渡辺建設合同会社', CAST(N'2024-08-15' AS Date), CAST(419957 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (245, 434, N'佐藤情報合同会社', CAST(N'2024-07-18' AS Date), CAST(79685 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (246, 352, N'山下運輸株式会社', CAST(N'2024-05-06' AS Date), CAST(424308 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (247, 185, N'清水運輸有限会社', CAST(N'2025-03-23' AS Date), CAST(131794 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (248, 139, N'田中水産有限会社', CAST(N'2024-05-21' AS Date), CAST(743673 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (249, 373, N'佐藤農林合同会社', CAST(N'2024-12-18' AS Date), CAST(157513 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (250, 98, N'合同会社田中通信', CAST(N'2025-02-19' AS Date), CAST(465101 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (251, 367, N'鈴木保険株式会社', CAST(N'2024-10-26' AS Date), CAST(412789 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (252, 170, N'有限会社伊藤通信', CAST(N'2024-09-10' AS Date), CAST(689482 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (253, 76, N'合同会社伊藤食品', CAST(N'2024-08-27' AS Date), CAST(988564 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (254, 269, N'合同会社松本食品', CAST(N'2024-11-03' AS Date), CAST(145500 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (255, 467, N'有限会社佐々木鉱業', CAST(N'2025-01-08' AS Date), CAST(475698 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (256, 405, N'有限会社山田食品', CAST(N'2024-09-26' AS Date), CAST(458046 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (257, 200, N'中川印刷合同会社', CAST(N'2024-12-22' AS Date), CAST(844229 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (258, 225, N'株式会社高橋食品', CAST(N'2024-12-30' AS Date), CAST(625021 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (259, 464, N'坂本ガス有限会社', CAST(N'2024-09-27' AS Date), CAST(44895 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (260, 325, N'阿部通信有限会社', CAST(N'2025-03-01' AS Date), CAST(923319 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (261, 187, N'合同会社伊藤情報', CAST(N'2025-03-15' AS Date), CAST(789262 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (262, 120, N'加藤電気株式会社', CAST(N'2024-06-05' AS Date), CAST(321979 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (263, 361, N'株式会社藤原印刷', CAST(N'2024-07-25' AS Date), CAST(797996 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (264, 395, N'三浦印刷株式会社', CAST(N'2024-10-15' AS Date), CAST(441418 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (265, 28, N'小林印刷有限会社', CAST(N'2024-05-25' AS Date), CAST(740653 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (266, 298, N'株式会社鈴木運輸', CAST(N'2024-08-24' AS Date), CAST(524014 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (267, 361, N'株式会社藤原印刷', CAST(N'2024-08-13' AS Date), CAST(235883 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (268, 137, N'吉田情報合同会社', CAST(N'2025-03-23' AS Date), CAST(55935 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (269, 84, N'有限会社小林ガス', CAST(N'2024-10-16' AS Date), CAST(14062 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (270, 336, N'合同会社山本ガス', CAST(N'2025-04-10' AS Date), CAST(157227 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (271, 403, N'高橋農林有限会社', CAST(N'2024-09-06' AS Date), CAST(723560 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (272, 497, N'佐々木農林株式会社', CAST(N'2024-06-06' AS Date), CAST(425775 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (273, 233, N'合同会社渡辺情報', CAST(N'2025-01-05' AS Date), CAST(365995 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (274, 311, N'高橋通信有限会社', CAST(N'2025-03-01' AS Date), CAST(843397 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (275, 166, N'岡田情報合同会社', CAST(N'2024-07-13' AS Date), CAST(487882 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (276, 131, N'合同会社石川通信', CAST(N'2025-03-30' AS Date), CAST(557346 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (277, 98, N'合同会社田中通信', CAST(N'2024-10-07' AS Date), CAST(94007 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (278, 446, N'高橋電気株式会社', CAST(N'2024-07-19' AS Date), CAST(372542 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (279, 429, N'清水建設有限会社', CAST(N'2024-12-31' AS Date), CAST(273483 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (280, 160, N'有限会社渡辺食品', CAST(N'2024-07-23' AS Date), CAST(911769 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (281, 131, N'合同会社石川通信', CAST(N'2024-08-10' AS Date), CAST(370647 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (282, 23, N'田中食品有限会社', CAST(N'2024-11-08' AS Date), CAST(989562 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (283, 5, N'長谷川農林株式会社', CAST(N'2024-08-21' AS Date), CAST(529360 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (284, 25, N'有限会社加藤通信', CAST(N'2024-09-14' AS Date), CAST(527558 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (285, 226, N'小川通信合同会社', CAST(N'2025-02-12' AS Date), CAST(99774 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (286, 124, N'佐藤農林株式会社', CAST(N'2025-02-22' AS Date), CAST(876401 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (287, 212, N'株式会社太田運輸', CAST(N'2024-12-25' AS Date), CAST(472044 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (288, 419, N'坂本通信株式会社', CAST(N'2024-09-07' AS Date), CAST(596165 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (289, 21, N'株式会社山田ガス', CAST(N'2025-01-11' AS Date), CAST(271858 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (290, 113, N'株式会社阿部鉱業', CAST(N'2025-02-07' AS Date), CAST(891285 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (291, 479, N'山崎鉱業合同会社', CAST(N'2024-10-15' AS Date), CAST(345121 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (292, 55, N'有限会社高橋農林', CAST(N'2024-07-02' AS Date), CAST(953325 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (293, 313, N'有限会社山口食品', CAST(N'2024-07-10' AS Date), CAST(837366 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (294, 365, N'山口食品株式会社', CAST(N'2024-11-13' AS Date), CAST(825230 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (295, 264, N'前田情報合同会社', CAST(N'2024-06-08' AS Date), CAST(494523 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (296, 140, N'合同会社加藤農林', CAST(N'2024-12-16' AS Date), CAST(27362 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (297, 315, N'田中農林株式会社', CAST(N'2024-04-14' AS Date), CAST(113704 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (298, 376, N'株式会社小川銀行', CAST(N'2024-09-13' AS Date), CAST(270858 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (299, 146, N'福田農林株式会社', CAST(N'2024-05-11' AS Date), CAST(16752 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (300, 440, N'長谷川ガス株式会社', CAST(N'2025-03-19' AS Date), CAST(137710 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (301, 331, N'合同会社斎藤建設', CAST(N'2024-11-25' AS Date), CAST(133988 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (302, 118, N'伊藤水産有限会社', CAST(N'2024-05-03' AS Date), CAST(761356 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (303, 114, N'中村ガス株式会社', CAST(N'2024-12-12' AS Date), CAST(77934 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (304, 346, N'鈴木建設合同会社', CAST(N'2024-10-28' AS Date), CAST(254950 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (305, 322, N'藤原保険有限会社', CAST(N'2024-08-11' AS Date), CAST(310764 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (306, 71, N'吉田電気合同会社', CAST(N'2025-04-06' AS Date), CAST(589991 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (307, 188, N'合同会社山口食品', CAST(N'2024-06-18' AS Date), CAST(675652 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (308, 416, N'木村銀行合同会社', CAST(N'2025-02-06' AS Date), CAST(929433 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (309, 80, N'合同会社田中食品', CAST(N'2025-01-13' AS Date), CAST(545271 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (310, 70, N'有限会社清水印刷', CAST(N'2024-12-29' AS Date), CAST(829403 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (311, 292, N'株式会社山田農林', CAST(N'2024-04-22' AS Date), CAST(233826 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (312, 376, N'株式会社小川銀行', CAST(N'2025-02-05' AS Date), CAST(865820 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (313, 390, N'林鉱業有限会社', CAST(N'2024-09-29' AS Date), CAST(380632 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (314, 323, N'森銀行合同会社', CAST(N'2024-08-01' AS Date), CAST(954567 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (315, 316, N'合同会社山崎水産', CAST(N'2025-03-31' AS Date), CAST(562007 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (316, 251, N'合同会社高橋建設', CAST(N'2024-08-23' AS Date), CAST(333694 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (317, 491, N'合同会社中川運輸', CAST(N'2024-12-22' AS Date), CAST(592507 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (318, 339, N'合同会社西村情報', CAST(N'2024-08-03' AS Date), CAST(858546 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (319, 280, N'有限会社田中農林', CAST(N'2024-11-04' AS Date), CAST(748432 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (320, 133, N'藤原農林株式会社', CAST(N'2025-02-02' AS Date), CAST(643660 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (321, 361, N'株式会社藤原印刷', CAST(N'2025-01-06' AS Date), CAST(871611 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (322, 403, N'高橋農林有限会社', CAST(N'2024-11-15' AS Date), CAST(412749 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (323, 107, N'佐藤食品合同会社', CAST(N'2025-03-25' AS Date), CAST(340466 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (324, 176, N'有限会社山田通信', CAST(N'2024-08-31' AS Date), CAST(710902 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (325, 134, N'合同会社高橋銀行', CAST(N'2024-10-19' AS Date), CAST(714207 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (326, 157, N'有限会社吉田運輸', CAST(N'2025-04-05' AS Date), CAST(383668 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (327, 375, N'合同会社高橋銀行', CAST(N'2024-05-26' AS Date), CAST(168561 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (328, 12, N'有限会社加藤印刷', CAST(N'2024-08-05' AS Date), CAST(668327 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (329, 13, N'西村保険合同会社', CAST(N'2024-12-11' AS Date), CAST(57147 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (330, 116, N'株式会社清水水産', CAST(N'2024-05-14' AS Date), CAST(352536 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (331, 421, N'近藤ガス有限会社', CAST(N'2025-03-13' AS Date), CAST(371683 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (332, 70, N'有限会社清水印刷', CAST(N'2024-12-24' AS Date), CAST(480775 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (333, 73, N'合同会社阿部建設', CAST(N'2024-10-12' AS Date), CAST(337105 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (334, 333, N'有限会社近藤食品', CAST(N'2024-10-27' AS Date), CAST(773430 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (335, 196, N'株式会社石川銀行', CAST(N'2025-04-09' AS Date), CAST(439165 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (336, 274, N'田中印刷株式会社', CAST(N'2024-07-15' AS Date), CAST(853684 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (337, 389, N'株式会社高橋鉱業', CAST(N'2025-03-23' AS Date), CAST(602160 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (338, 210, N'森建設有限会社', CAST(N'2024-09-26' AS Date), CAST(189637 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (339, 257, N'合同会社青木保険', CAST(N'2025-02-02' AS Date), CAST(662050 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (340, 41, N'合同会社山口電気', CAST(N'2024-10-27' AS Date), CAST(258911 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (341, 127, N'有限会社鈴木通信', CAST(N'2025-04-02' AS Date), CAST(855641 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (342, 381, N'株式会社佐藤食品', CAST(N'2024-04-28' AS Date), CAST(598679 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (343, 368, N'山田鉱業株式会社', CAST(N'2025-03-04' AS Date), CAST(457927 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (344, 318, N'有限会社村上情報', CAST(N'2024-05-27' AS Date), CAST(489735 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (345, 315, N'田中農林株式会社', CAST(N'2024-06-09' AS Date), CAST(51994 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (346, 175, N'有限会社西村運輸', CAST(N'2024-10-03' AS Date), CAST(38591 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (347, 255, N'高橋銀行株式会社', CAST(N'2025-02-27' AS Date), CAST(385773 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (348, 344, N'青木食品株式会社', CAST(N'2025-01-26' AS Date), CAST(490370 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (349, 260, N'池田情報合同会社', CAST(N'2024-10-13' AS Date), CAST(180167 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (350, 173, N'藤田情報株式会社', CAST(N'2024-11-26' AS Date), CAST(852346 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (351, 484, N'山下ガス有限会社', CAST(N'2024-09-24' AS Date), CAST(25502 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (352, 272, N'株式会社佐藤農林', CAST(N'2024-11-17' AS Date), CAST(587187 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (353, 18, N'株式会社斎藤鉱業', CAST(N'2024-07-15' AS Date), CAST(608211 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (354, 479, N'山崎鉱業合同会社', CAST(N'2024-04-27' AS Date), CAST(50161 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (355, 203, N'松本通信株式会社', CAST(N'2025-02-11' AS Date), CAST(433392 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (356, 254, N'合同会社近藤印刷', CAST(N'2025-03-18' AS Date), CAST(31688 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (357, 379, N'有限会社岡田農林', CAST(N'2025-03-27' AS Date), CAST(276254 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (358, 352, N'山下運輸株式会社', CAST(N'2024-12-28' AS Date), CAST(809641 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (359, 198, N'鈴木食品株式会社', CAST(N'2024-12-06' AS Date), CAST(229120 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (360, 290, N'有限会社山崎保険', CAST(N'2024-10-27' AS Date), CAST(853893 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (361, 301, N'合同会社伊藤食品', CAST(N'2024-05-03' AS Date), CAST(765063 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (362, 84, N'有限会社小林ガス', CAST(N'2025-01-25' AS Date), CAST(356720 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (363, 300, N'有限会社遠藤鉱業', CAST(N'2025-03-18' AS Date), CAST(602308 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (364, 488, N'株式会社福田農林', CAST(N'2024-10-19' AS Date), CAST(390835 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (365, 321, N'松本印刷有限会社', CAST(N'2024-11-14' AS Date), CAST(348692 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (366, 401, N'有限会社阿部鉱業', CAST(N'2024-09-19' AS Date), CAST(639882 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (367, 88, N'合同会社小林印刷', CAST(N'2025-04-13' AS Date), CAST(836634 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (368, 292, N'株式会社山田農林', CAST(N'2025-03-22' AS Date), CAST(473354 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (369, 175, N'有限会社西村運輸', CAST(N'2025-04-09' AS Date), CAST(766678 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (370, 466, N'有限会社山本保険', CAST(N'2024-05-08' AS Date), CAST(868141 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (371, 383, N'株式会社松本ガス', CAST(N'2024-06-04' AS Date), CAST(206770 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (372, 282, N'伊藤保険合同会社', CAST(N'2024-09-08' AS Date), CAST(302245 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (373, 272, N'株式会社佐藤農林', CAST(N'2025-01-17' AS Date), CAST(76361 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (374, 297, N'中村通信合同会社', CAST(N'2025-02-16' AS Date), CAST(997395 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (375, 387, N'有限会社松本電気', CAST(N'2024-09-03' AS Date), CAST(288668 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (376, 146, N'福田農林株式会社', CAST(N'2025-04-07' AS Date), CAST(459528 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (377, 485, N'合同会社阿部情報', CAST(N'2024-12-02' AS Date), CAST(573998 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (378, 176, N'有限会社山田通信', CAST(N'2025-01-06' AS Date), CAST(749846 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (379, 406, N'高橋印刷有限会社', CAST(N'2025-01-31' AS Date), CAST(895775 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (380, 385, N'高橋印刷有限会社', CAST(N'2024-07-26' AS Date), CAST(172878 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (381, 185, N'清水運輸有限会社', CAST(N'2024-08-19' AS Date), CAST(48135 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (382, 326, N'佐藤保険合同会社', CAST(N'2024-06-03' AS Date), CAST(847263 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (383, 461, N'小林運輸有限会社', CAST(N'2025-04-05' AS Date), CAST(389817 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (384, 349, N'石井印刷合同会社', CAST(N'2025-01-04' AS Date), CAST(671554 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (385, 322, N'藤原保険有限会社', CAST(N'2024-04-20' AS Date), CAST(531131 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (386, 375, N'合同会社高橋銀行', CAST(N'2024-12-07' AS Date), CAST(609322 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (387, 141, N'株式会社高橋電気', CAST(N'2025-01-09' AS Date), CAST(804898 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (388, 40, N'合同会社前田印刷', CAST(N'2024-06-24' AS Date), CAST(479950 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (389, 381, N'株式会社佐藤食品', CAST(N'2024-04-13' AS Date), CAST(481496 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (390, 491, N'合同会社中川運輸', CAST(N'2025-01-07' AS Date), CAST(182476 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (391, 473, N'有限会社小林ガス', CAST(N'2025-03-11' AS Date), CAST(983064 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (392, 325, N'阿部通信有限会社', CAST(N'2024-09-23' AS Date), CAST(996071 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (393, 130, N'合同会社佐々木鉱業', CAST(N'2024-09-02' AS Date), CAST(934620 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (394, 313, N'有限会社山口食品', CAST(N'2024-10-28' AS Date), CAST(105031 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (395, 16, N'合同会社吉田保険', CAST(N'2024-08-04' AS Date), CAST(21502 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (396, 104, N'合同会社中村通信', CAST(N'2024-09-22' AS Date), CAST(415405 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (397, 398, N'渡辺建設合同会社', CAST(N'2024-05-23' AS Date), CAST(666033 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (398, 357, N'有限会社加藤建設', CAST(N'2025-03-25' AS Date), CAST(620993 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (399, 182, N'渡辺建設合同会社', CAST(N'2024-06-26' AS Date), CAST(142973 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (400, 168, N'有限会社中村通信', CAST(N'2025-04-01' AS Date), CAST(427430 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (401, 472, N'渡辺鉱業合同会社', CAST(N'2024-07-20' AS Date), CAST(151914 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (402, 42, N'有限会社高橋水産', CAST(N'2024-06-28' AS Date), CAST(916964 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (403, 185, N'清水運輸有限会社', CAST(N'2025-04-11' AS Date), CAST(82743 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (404, 368, N'山田鉱業株式会社', CAST(N'2025-02-16' AS Date), CAST(714010 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (405, 23, N'田中食品有限会社', CAST(N'2024-11-03' AS Date), CAST(983217 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (406, 162, N'佐藤ガス有限会社', CAST(N'2024-09-24' AS Date), CAST(959241 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (407, 392, N'有限会社松田運輸', CAST(N'2024-05-23' AS Date), CAST(298445 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (408, 344, N'青木食品株式会社', CAST(N'2025-01-31' AS Date), CAST(634598 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (409, 207, N'村上運輸合同会社', CAST(N'2024-11-08' AS Date), CAST(546338 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (410, 84, N'有限会社小林ガス', CAST(N'2025-02-08' AS Date), CAST(946199 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (411, 467, N'有限会社佐々木鉱業', CAST(N'2024-08-10' AS Date), CAST(749574 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (412, 374, N'株式会社渡辺ガス', CAST(N'2024-07-21' AS Date), CAST(55582 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (413, 487, N'村上農林株式会社', CAST(N'2025-01-11' AS Date), CAST(371442 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (414, 42, N'有限会社高橋水産', CAST(N'2024-07-01' AS Date), CAST(192898 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (415, 104, N'合同会社中村通信', CAST(N'2024-12-01' AS Date), CAST(353868 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (416, 401, N'有限会社阿部鉱業', CAST(N'2024-12-02' AS Date), CAST(552570 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (417, 466, N'有限会社山本保険', CAST(N'2025-01-24' AS Date), CAST(803428 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (418, 283, N'合同会社山田電気', CAST(N'2025-01-25' AS Date), CAST(50476 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (419, 329, N'有限会社高橋情報', CAST(N'2024-07-25' AS Date), CAST(45437 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (420, 419, N'坂本通信株式会社', CAST(N'2025-03-08' AS Date), CAST(212256 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (421, 313, N'有限会社山口食品', CAST(N'2024-12-12' AS Date), CAST(861724 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (422, 268, N'高橋情報合同会社', CAST(N'2025-01-22' AS Date), CAST(753996 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (423, 468, N'福田水産株式会社', CAST(N'2024-05-13' AS Date), CAST(151428 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (424, 396, N'株式会社山崎銀行', CAST(N'2024-07-03' AS Date), CAST(69941 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (425, 421, N'近藤ガス有限会社', CAST(N'2024-07-22' AS Date), CAST(370062 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (426, 417, N'合同会社清水銀行', CAST(N'2025-03-04' AS Date), CAST(119032 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (427, 312, N'株式会社田中通信', CAST(N'2024-10-15' AS Date), CAST(607975 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (428, 172, N'株式会社高橋銀行', CAST(N'2024-10-02' AS Date), CAST(547289 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (429, 431, N'株式会社西村通信', CAST(N'2024-05-23' AS Date), CAST(134619 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (430, 163, N'小林運輸有限会社', CAST(N'2025-04-02' AS Date), CAST(201469 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (431, 10, N'合同会社松本運輸', CAST(N'2024-10-23' AS Date), CAST(938973 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (432, 23, N'田中食品有限会社', CAST(N'2024-09-14' AS Date), CAST(686743 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (433, 358, N'小川運輸有限会社', CAST(N'2024-11-05' AS Date), CAST(845470 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (434, 467, N'有限会社佐々木鉱業', CAST(N'2025-03-18' AS Date), CAST(639616 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (435, 184, N'合同会社山田電気', CAST(N'2025-03-05' AS Date), CAST(438056 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (436, 226, N'小川通信合同会社', CAST(N'2024-10-14' AS Date), CAST(643488 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (437, 345, N'合同会社小川銀行', CAST(N'2024-11-06' AS Date), CAST(600071 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (438, 212, N'株式会社太田運輸', CAST(N'2025-01-11' AS Date), CAST(42179 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (439, 411, N'吉田運輸有限会社', CAST(N'2024-11-29' AS Date), CAST(209746 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (440, 33, N'山本電気株式会社', CAST(N'2024-10-12' AS Date), CAST(110983 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (441, 14, N'有限会社小林情報', CAST(N'2024-10-16' AS Date), CAST(32373 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (442, 207, N'村上運輸合同会社', CAST(N'2024-06-02' AS Date), CAST(734117 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (443, 166, N'岡田情報合同会社', CAST(N'2024-08-23' AS Date), CAST(839167 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (444, 244, N'鈴木農林株式会社', CAST(N'2025-03-03' AS Date), CAST(909653 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (445, 275, N'有限会社阿部銀行', CAST(N'2024-09-20' AS Date), CAST(839139 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (446, 15, N'斎藤鉱業有限会社', CAST(N'2024-05-17' AS Date), CAST(550923 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (447, 429, N'清水建設有限会社', CAST(N'2025-03-03' AS Date), CAST(359818 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (448, 490, N'清水印刷合同会社', CAST(N'2025-02-22' AS Date), CAST(504280 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (449, 79, N'合同会社加藤ガス', CAST(N'2024-07-23' AS Date), CAST(665917 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (450, 492, N'高橋電気株式会社', CAST(N'2025-03-26' AS Date), CAST(10761 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (451, 173, N'藤田情報株式会社', CAST(N'2025-01-23' AS Date), CAST(584913 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (452, 83, N'合同会社阿部保険', CAST(N'2025-01-14' AS Date), CAST(827182 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (453, 328, N'佐藤印刷株式会社', CAST(N'2024-04-30' AS Date), CAST(264365 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (454, 485, N'合同会社阿部情報', CAST(N'2025-04-01' AS Date), CAST(516374 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (455, 23, N'田中食品有限会社', CAST(N'2024-12-19' AS Date), CAST(261962 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (456, 169, N'田中食品株式会社', CAST(N'2025-01-16' AS Date), CAST(259757 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (457, 116, N'株式会社清水水産', CAST(N'2025-01-20' AS Date), CAST(931010 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (458, 238, N'木村通信合同会社', CAST(N'2024-10-09' AS Date), CAST(929089 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (459, 198, N'鈴木食品株式会社', CAST(N'2024-06-28' AS Date), CAST(818199 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (460, 84, N'有限会社小林ガス', CAST(N'2024-06-19' AS Date), CAST(15910 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (461, 368, N'山田鉱業株式会社', CAST(N'2025-01-15' AS Date), CAST(166110 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (462, 13, N'西村保険合同会社', CAST(N'2024-10-30' AS Date), CAST(544865 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (463, 20, N'吉田電気株式会社', CAST(N'2025-03-20' AS Date), CAST(824868 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (464, 294, N'井上食品有限会社', CAST(N'2024-06-04' AS Date), CAST(164869 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (465, 345, N'合同会社小川銀行', CAST(N'2024-10-01' AS Date), CAST(835966 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (466, 215, N'山本農林株式会社', CAST(N'2024-09-02' AS Date), CAST(605637 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (467, 365, N'山口食品株式会社', CAST(N'2024-12-08' AS Date), CAST(977349 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (468, 187, N'合同会社伊藤情報', CAST(N'2024-07-26' AS Date), CAST(237187 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (469, 38, N'株式会社山田鉱業', CAST(N'2025-02-06' AS Date), CAST(437565 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (470, 495, N'合同会社佐藤食品', CAST(N'2025-02-23' AS Date), CAST(462503 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (471, 126, N'山崎鉱業合同会社', CAST(N'2024-08-15' AS Date), CAST(410303 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (472, 470, N'加藤電気合同会社', CAST(N'2024-09-23' AS Date), CAST(261715 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (473, 204, N'佐藤建設合同会社', CAST(N'2024-06-20' AS Date), CAST(82370 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (474, 142, N'有限会社山田鉱業', CAST(N'2024-07-18' AS Date), CAST(399857 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (475, 310, N'合同会社吉田情報', CAST(N'2024-06-04' AS Date), CAST(827464 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (476, 449, N'田中建設合同会社', CAST(N'2024-12-13' AS Date), CAST(299702 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (477, 313, N'有限会社山口食品', CAST(N'2024-10-31' AS Date), CAST(919464 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (478, 494, N'株式会社伊藤情報', CAST(N'2024-05-28' AS Date), CAST(121841 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (479, 74, N'合同会社井上ガス', CAST(N'2024-04-13' AS Date), CAST(421492 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (480, 394, N'森運輸有限会社', CAST(N'2024-09-10' AS Date), CAST(776511 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (481, 222, N'合同会社山下運輸', CAST(N'2025-02-19' AS Date), CAST(757839 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (482, 310, N'合同会社吉田情報', CAST(N'2024-08-20' AS Date), CAST(179218 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (483, 175, N'有限会社西村運輸', CAST(N'2024-08-14' AS Date), CAST(441065 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (484, 303, N'株式会社加藤鉱業', CAST(N'2024-11-19' AS Date), CAST(808837 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (485, 478, N'合同会社伊藤印刷', CAST(N'2024-10-07' AS Date), CAST(372199 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (486, 322, N'藤原保険有限会社', CAST(N'2024-10-12' AS Date), CAST(813347 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (487, 323, N'森銀行合同会社', CAST(N'2024-07-22' AS Date), CAST(800029 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (488, 101, N'有限会社中島通信', CAST(N'2024-12-03' AS Date), CAST(195490 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (489, 152, N'阿部電気株式会社', CAST(N'2024-10-01' AS Date), CAST(675240 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (490, 150, N'合同会社藤井食品', CAST(N'2024-07-05' AS Date), CAST(462159 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (491, 350, N'渡辺通信有限会社', CAST(N'2024-09-15' AS Date), CAST(292139 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (492, 373, N'佐藤農林合同会社', CAST(N'2024-12-28' AS Date), CAST(373727 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (493, 68, N'有限会社遠藤通信', CAST(N'2025-02-16' AS Date), CAST(652912 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (494, 85, N'斉藤鉱業合同会社', CAST(N'2025-03-29' AS Date), CAST(461493 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (495, 238, N'木村通信合同会社', CAST(N'2025-03-06' AS Date), CAST(683075 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (496, 399, N'合同会社伊藤通信', CAST(N'2024-09-08' AS Date), CAST(581382 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (497, 87, N'村上情報有限会社', CAST(N'2025-01-25' AS Date), CAST(227541 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (498, 117, N'株式会社鈴木ガス', CAST(N'2025-03-29' AS Date), CAST(560820 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (499, 420, N'福田保険有限会社', CAST(N'2024-08-04' AS Date), CAST(384314 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (500, 367, N'鈴木保険株式会社', CAST(N'2024-10-24' AS Date), CAST(727427 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (501, 411, N'吉田運輸有限会社', CAST(N'2024-09-16' AS Date), CAST(820990 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (502, 461, N'小林運輸有限会社', CAST(N'2025-01-22' AS Date), CAST(369109 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (503, 273, N'青木農林合同会社', CAST(N'2024-04-23' AS Date), CAST(161603 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (504, 379, N'有限会社岡田農林', CAST(N'2024-07-03' AS Date), CAST(330069 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (505, 451, N'有限会社加藤水産', CAST(N'2024-10-02' AS Date), CAST(373359 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (506, 486, N'高橋通信合同会社', CAST(N'2024-08-15' AS Date), CAST(546395 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (507, 494, N'株式会社伊藤情報', CAST(N'2024-09-16' AS Date), CAST(436034 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (508, 350, N'渡辺通信有限会社', CAST(N'2025-01-25' AS Date), CAST(164818 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (509, 299, N'合同会社山下電気', CAST(N'2024-06-13' AS Date), CAST(674851 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (510, 357, N'有限会社加藤建設', CAST(N'2024-05-17' AS Date), CAST(741980 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (511, 306, N'太田通信株式会社', CAST(N'2024-05-19' AS Date), CAST(642429 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (512, 137, N'吉田情報合同会社', CAST(N'2024-04-26' AS Date), CAST(777473 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (513, 193, N'森農林合同会社', CAST(N'2025-03-01' AS Date), CAST(841885 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (514, 6, N'鈴木農林合同会社', CAST(N'2025-02-13' AS Date), CAST(945761 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (515, 419, N'坂本通信株式会社', CAST(N'2024-08-10' AS Date), CAST(343818 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (516, 347, N'中島建設有限会社', CAST(N'2024-08-25' AS Date), CAST(397023 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (517, 342, N'松本農林株式会社', CAST(N'2024-08-07' AS Date), CAST(861535 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (518, 473, N'有限会社小林ガス', CAST(N'2025-01-22' AS Date), CAST(598927 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (519, 400, N'井上通信有限会社', CAST(N'2024-07-27' AS Date), CAST(975544 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (520, 14, N'有限会社小林情報', CAST(N'2024-05-19' AS Date), CAST(900834 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (521, 450, N'有限会社森運輸', CAST(N'2024-07-23' AS Date), CAST(438764 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (522, 225, N'株式会社高橋食品', CAST(N'2024-04-16' AS Date), CAST(726878 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (523, 136, N'青木電気株式会社', CAST(N'2025-04-03' AS Date), CAST(625973 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (524, 471, N'岡田印刷合同会社', CAST(N'2024-09-27' AS Date), CAST(189657 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (525, 290, N'有限会社山崎保険', CAST(N'2025-03-17' AS Date), CAST(970765 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (526, 476, N'合同会社橋本水産', CAST(N'2025-02-28' AS Date), CAST(685342 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (527, 172, N'株式会社高橋銀行', CAST(N'2024-12-15' AS Date), CAST(541413 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (528, 21, N'株式会社山田ガス', CAST(N'2024-08-11' AS Date), CAST(660120 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (529, 138, N'石川鉱業有限会社', CAST(N'2024-07-28' AS Date), CAST(524095 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (530, 243, N'合同会社三浦通信', CAST(N'2024-11-29' AS Date), CAST(199811 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (531, 277, N'福田銀行有限会社', CAST(N'2024-10-09' AS Date), CAST(177289 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (532, 437, N'斎藤建設合同会社', CAST(N'2024-06-06' AS Date), CAST(882000 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (533, 234, N'田中運輸株式会社', CAST(N'2025-03-09' AS Date), CAST(81818 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (534, 202, N'田中通信合同会社', CAST(N'2024-06-28' AS Date), CAST(439897 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (535, 136, N'青木電気株式会社', CAST(N'2024-08-10' AS Date), CAST(250804 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (536, 152, N'阿部電気株式会社', CAST(N'2025-01-31' AS Date), CAST(386924 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (537, 71, N'吉田電気合同会社', CAST(N'2024-05-11' AS Date), CAST(916034 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (538, 422, N'中川通信有限会社', CAST(N'2024-05-08' AS Date), CAST(153454 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (539, 4, N'株式会社近藤銀行', CAST(N'2025-03-28' AS Date), CAST(913910 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (540, 286, N'合同会社佐藤保険', CAST(N'2024-04-20' AS Date), CAST(802031 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (541, 366, N'株式会社鈴木運輸', CAST(N'2024-04-25' AS Date), CAST(122244 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (542, 287, N'橋本保険合同会社', CAST(N'2024-10-18' AS Date), CAST(927195 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (543, 447, N'藤田銀行有限会社', CAST(N'2025-02-23' AS Date), CAST(729049 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (544, 124, N'佐藤農林株式会社', CAST(N'2024-12-18' AS Date), CAST(531919 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (545, 141, N'株式会社高橋電気', CAST(N'2024-12-19' AS Date), CAST(19407 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (546, 182, N'渡辺建設合同会社', CAST(N'2024-07-27' AS Date), CAST(981523 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (547, 47, N'有限会社中村銀行', CAST(N'2025-03-05' AS Date), CAST(329569 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (548, 116, N'株式会社清水水産', CAST(N'2024-10-07' AS Date), CAST(409677 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (549, 119, N'株式会社小川鉱業', CAST(N'2024-11-17' AS Date), CAST(991354 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (550, 381, N'株式会社佐藤食品', CAST(N'2024-08-10' AS Date), CAST(702065 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (551, 145, N'有限会社青木水産', CAST(N'2024-09-29' AS Date), CAST(652165 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (552, 426, N'藤田水産合同会社', CAST(N'2025-02-11' AS Date), CAST(430680 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (553, 257, N'合同会社青木保険', CAST(N'2024-08-15' AS Date), CAST(249754 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (554, 324, N'田中電気合同会社', CAST(N'2024-10-12' AS Date), CAST(462903 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (555, 184, N'合同会社山田電気', CAST(N'2024-09-20' AS Date), CAST(814597 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (556, 444, N'清水電気有限会社', CAST(N'2025-02-19' AS Date), CAST(513030 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (557, 62, N'青木農林有限会社', CAST(N'2024-08-28' AS Date), CAST(171759 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (558, 478, N'合同会社伊藤印刷', CAST(N'2024-12-10' AS Date), CAST(789429 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (559, 476, N'合同会社橋本水産', CAST(N'2024-10-22' AS Date), CAST(533559 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (560, 57, N'合同会社林銀行', CAST(N'2024-04-30' AS Date), CAST(412555 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (561, 238, N'木村通信合同会社', CAST(N'2024-07-25' AS Date), CAST(494206 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (562, 346, N'鈴木建設合同会社', CAST(N'2024-09-21' AS Date), CAST(536618 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (563, 250, N'合同会社山田水産', CAST(N'2024-12-15' AS Date), CAST(339802 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (564, 48, N'株式会社鈴木通信', CAST(N'2024-08-15' AS Date), CAST(342550 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (565, 457, N'株式会社山崎鉱業', CAST(N'2024-12-18' AS Date), CAST(870635 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (566, 25, N'有限会社加藤通信', CAST(N'2024-06-23' AS Date), CAST(818836 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (567, 209, N'有限会社渡辺鉱業', CAST(N'2025-02-25' AS Date), CAST(286260 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (568, 372, N'三浦通信株式会社', CAST(N'2024-10-28' AS Date), CAST(197245 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (569, 93, N'合同会社遠藤銀行', CAST(N'2024-04-21' AS Date), CAST(391843 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (570, 120, N'加藤電気株式会社', CAST(N'2025-03-22' AS Date), CAST(18485 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (571, 274, N'田中印刷株式会社', CAST(N'2025-04-11' AS Date), CAST(145954 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (572, 421, N'近藤ガス有限会社', CAST(N'2024-06-08' AS Date), CAST(645310 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (573, 42, N'有限会社高橋水産', CAST(N'2024-08-18' AS Date), CAST(217309 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (574, 267, N'井上印刷合同会社', CAST(N'2024-05-30' AS Date), CAST(897209 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (575, 35, N'小林運輸株式会社', CAST(N'2024-07-13' AS Date), CAST(195739 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (576, 117, N'株式会社鈴木ガス', CAST(N'2024-09-13' AS Date), CAST(410481 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (577, 414, N'有限会社坂本情報', CAST(N'2025-04-13' AS Date), CAST(466983 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (578, 196, N'株式会社石川銀行', CAST(N'2025-03-23' AS Date), CAST(655672 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (579, 15, N'斎藤鉱業有限会社', CAST(N'2024-06-19' AS Date), CAST(373927 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (580, 424, N'合同会社松本保険', CAST(N'2024-10-23' AS Date), CAST(720073 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (581, 329, N'有限会社高橋情報', CAST(N'2025-02-04' AS Date), CAST(634848 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (582, 129, N'青木運輸有限会社', CAST(N'2025-02-20' AS Date), CAST(759566 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (583, 140, N'合同会社加藤農林', CAST(N'2025-04-01' AS Date), CAST(735982 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (584, 318, N'有限会社村上情報', CAST(N'2024-05-11' AS Date), CAST(152505 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (585, 107, N'佐藤食品合同会社', CAST(N'2024-06-24' AS Date), CAST(702088 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (586, 104, N'合同会社中村通信', CAST(N'2024-09-10' AS Date), CAST(542689 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (587, 287, N'橋本保険合同会社', CAST(N'2025-02-18' AS Date), CAST(736795 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (588, 64, N'合同会社田中建設', CAST(N'2024-07-27' AS Date), CAST(946658 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (589, 241, N'山崎食品株式会社', CAST(N'2025-01-12' AS Date), CAST(486999 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (590, 66, N'佐藤銀行株式会社', CAST(N'2024-09-12' AS Date), CAST(276793 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (591, 41, N'合同会社山口電気', CAST(N'2024-06-28' AS Date), CAST(539992 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (592, 420, N'福田保険有限会社', CAST(N'2024-12-15' AS Date), CAST(485845 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (593, 180, N'井上印刷合同会社', CAST(N'2024-08-10' AS Date), CAST(822877 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (594, 13, N'西村保険合同会社', CAST(N'2024-08-28' AS Date), CAST(768554 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (595, 283, N'合同会社山田電気', CAST(N'2024-09-18' AS Date), CAST(811329 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (596, 115, N'株式会社斉藤鉱業', CAST(N'2024-09-06' AS Date), CAST(262769 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (597, 245, N'鈴木銀行株式会社', CAST(N'2024-08-13' AS Date), CAST(157841 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (598, 226, N'小川通信合同会社', CAST(N'2024-11-19' AS Date), CAST(387463 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (599, 307, N'合同会社森銀行', CAST(N'2025-01-27' AS Date), CAST(881974 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (600, 97, N'合同会社佐藤通信', CAST(N'2024-11-11' AS Date), CAST(988079 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (601, 485, N'合同会社阿部情報', CAST(N'2025-03-14' AS Date), CAST(172641 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (602, 19, N'株式会社青木水産', CAST(N'2024-10-24' AS Date), CAST(922298 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (603, 393, N'山本水産株式会社', CAST(N'2024-08-17' AS Date), CAST(419258 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (604, 211, N'株式会社福田建設', CAST(N'2024-08-02' AS Date), CAST(211380 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (605, 201, N'佐藤運輸合同会社', CAST(N'2025-03-20' AS Date), CAST(835278 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (606, 455, N'斉藤食品株式会社', CAST(N'2024-04-29' AS Date), CAST(880115 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (607, 371, N'有限会社渡辺電気', CAST(N'2024-10-28' AS Date), CAST(202102 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (608, 78, N'石川保険株式会社', CAST(N'2024-05-24' AS Date), CAST(732190 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (609, 461, N'小林運輸有限会社', CAST(N'2024-05-09' AS Date), CAST(608460 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (610, 307, N'合同会社森銀行', CAST(N'2024-08-31' AS Date), CAST(44505 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (611, 250, N'合同会社山田水産', CAST(N'2024-06-08' AS Date), CAST(894500 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (612, 285, N'佐藤運輸合同会社', CAST(N'2025-01-03' AS Date), CAST(10539 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (613, 32, N'株式会社山田銀行', CAST(N'2025-02-04' AS Date), CAST(264646 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (614, 448, N'株式会社山本銀行', CAST(N'2024-05-03' AS Date), CAST(649602 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (615, 339, N'合同会社西村情報', CAST(N'2024-04-28' AS Date), CAST(124351 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (616, 474, N'近藤水産株式会社', CAST(N'2024-05-18' AS Date), CAST(674865 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (617, 454, N'中川鉱業株式会社', CAST(N'2024-04-29' AS Date), CAST(364575 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (618, 351, N'山田運輸合同会社', CAST(N'2025-01-05' AS Date), CAST(181139 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (619, 286, N'合同会社佐藤保険', CAST(N'2024-10-13' AS Date), CAST(762359 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (620, 201, N'佐藤運輸合同会社', CAST(N'2024-09-01' AS Date), CAST(705450 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (621, 434, N'佐藤情報合同会社', CAST(N'2024-08-17' AS Date), CAST(80593 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (622, 113, N'株式会社阿部鉱業', CAST(N'2025-02-14' AS Date), CAST(798154 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (623, 489, N'合同会社佐々木保険', CAST(N'2024-09-24' AS Date), CAST(496412 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (624, 457, N'株式会社山崎鉱業', CAST(N'2024-10-07' AS Date), CAST(748424 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (625, 11, N'中村印刷合同会社', CAST(N'2024-09-18' AS Date), CAST(227393 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (626, 438, N'前田印刷有限会社', CAST(N'2024-09-14' AS Date), CAST(623913 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (627, 277, N'福田銀行有限会社', CAST(N'2024-12-27' AS Date), CAST(674145 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (628, 492, N'高橋電気株式会社', CAST(N'2024-05-06' AS Date), CAST(153006 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (629, 159, N'佐藤食品有限会社', CAST(N'2024-10-01' AS Date), CAST(580336 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (630, 41, N'合同会社山口電気', CAST(N'2024-06-08' AS Date), CAST(775965 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (631, 386, N'山田情報株式会社', CAST(N'2025-04-06' AS Date), CAST(223863 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (632, 316, N'合同会社山崎水産', CAST(N'2024-10-11' AS Date), CAST(337243 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (633, 382, N'有限会社小川印刷', CAST(N'2025-04-02' AS Date), CAST(814638 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (634, 315, N'田中農林株式会社', CAST(N'2025-03-30' AS Date), CAST(626453 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (635, 79, N'合同会社加藤ガス', CAST(N'2024-08-18' AS Date), CAST(280944 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (636, 304, N'佐藤鉱業合同会社', CAST(N'2024-08-28' AS Date), CAST(301983 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (637, 196, N'株式会社石川銀行', CAST(N'2024-09-29' AS Date), CAST(792215 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (638, 117, N'株式会社鈴木ガス', CAST(N'2024-06-15' AS Date), CAST(286700 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (639, 23, N'田中食品有限会社', CAST(N'2025-01-24' AS Date), CAST(340863 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (640, 33, N'山本電気株式会社', CAST(N'2024-07-18' AS Date), CAST(512729 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (641, 164, N'有限会社渡辺鉱業', CAST(N'2024-09-28' AS Date), CAST(774582 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (642, 60, N'有限会社佐々木農林', CAST(N'2024-09-03' AS Date), CAST(646648 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (643, 390, N'林鉱業有限会社', CAST(N'2025-01-31' AS Date), CAST(938156 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (644, 61, N'鈴木食品合同会社', CAST(N'2024-04-17' AS Date), CAST(460647 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (645, 17, N'佐藤運輸株式会社', CAST(N'2024-05-26' AS Date), CAST(295206 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (646, 197, N'岡田ガス株式会社', CAST(N'2025-02-13' AS Date), CAST(370522 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (647, 192, N'株式会社後藤情報', CAST(N'2024-06-02' AS Date), CAST(852090 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (648, 382, N'有限会社小川印刷', CAST(N'2024-07-10' AS Date), CAST(578245 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (649, 174, N'有限会社田中保険', CAST(N'2024-07-24' AS Date), CAST(589061 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (650, 83, N'合同会社阿部保険', CAST(N'2024-08-03' AS Date), CAST(869310 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (651, 327, N'有限会社小林通信', CAST(N'2024-12-02' AS Date), CAST(357687 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (652, 177, N'渡辺銀行合同会社', CAST(N'2025-02-22' AS Date), CAST(653254 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (653, 490, N'清水印刷合同会社', CAST(N'2025-03-10' AS Date), CAST(273741 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (654, 267, N'井上印刷合同会社', CAST(N'2025-03-06' AS Date), CAST(913063 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (655, 249, N'小林水産合同会社', CAST(N'2025-03-27' AS Date), CAST(555496 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (656, 178, N'斎藤情報合同会社', CAST(N'2025-02-23' AS Date), CAST(594884 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (657, 91, N'合同会社小川情報', CAST(N'2024-04-23' AS Date), CAST(705585 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (658, 205, N'高橋食品株式会社', CAST(N'2024-12-31' AS Date), CAST(648353 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (659, 179, N'有限会社加藤情報', CAST(N'2025-01-23' AS Date), CAST(292250 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (660, 499, N'合同会社山本農林', CAST(N'2024-07-07' AS Date), CAST(903670 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (661, 111, N'田中電気株式会社', CAST(N'2024-08-18' AS Date), CAST(878450 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (662, 66, N'佐藤銀行株式会社', CAST(N'2024-11-23' AS Date), CAST(598353 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (663, 43, N'太田情報合同会社', CAST(N'2024-05-10' AS Date), CAST(869131 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (664, 158, N'合同会社伊藤ガス', CAST(N'2024-04-17' AS Date), CAST(830027 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (665, 18, N'株式会社斎藤鉱業', CAST(N'2025-03-01' AS Date), CAST(651427 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (666, 150, N'合同会社藤井食品', CAST(N'2025-02-14' AS Date), CAST(184569 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (667, 104, N'合同会社中村通信', CAST(N'2024-07-25' AS Date), CAST(591616 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (668, 443, N'合同会社加藤鉱業', CAST(N'2024-08-27' AS Date), CAST(103227 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (669, 258, N'株式会社中村建設', CAST(N'2024-07-15' AS Date), CAST(881874 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (670, 63, N'有限会社山本建設', CAST(N'2025-03-03' AS Date), CAST(632403 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (671, 166, N'岡田情報合同会社', CAST(N'2025-01-14' AS Date), CAST(320972 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (672, 322, N'藤原保険有限会社', CAST(N'2024-09-02' AS Date), CAST(716353 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (673, 17, N'佐藤運輸株式会社', CAST(N'2025-04-02' AS Date), CAST(886082 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (674, 327, N'有限会社小林通信', CAST(N'2024-11-27' AS Date), CAST(89873 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (675, 163, N'小林運輸有限会社', CAST(N'2024-07-07' AS Date), CAST(695235 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (676, 25, N'有限会社加藤通信', CAST(N'2024-04-16' AS Date), CAST(270899 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (677, 133, N'藤原農林株式会社', CAST(N'2024-06-12' AS Date), CAST(68812 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (678, 215, N'山本農林株式会社', CAST(N'2024-11-21' AS Date), CAST(620720 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (679, 130, N'合同会社佐々木鉱業', CAST(N'2024-11-04' AS Date), CAST(964756 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (680, 456, N'株式会社山崎建設', CAST(N'2024-08-27' AS Date), CAST(752671 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (681, 217, N'松田保険合同会社', CAST(N'2024-10-04' AS Date), CAST(187771 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (682, 119, N'株式会社小川鉱業', CAST(N'2024-04-17' AS Date), CAST(857181 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (683, 197, N'岡田ガス株式会社', CAST(N'2025-03-29' AS Date), CAST(260074 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (684, 158, N'合同会社伊藤ガス', CAST(N'2025-02-22' AS Date), CAST(874512 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (685, 463, N'木村ガス株式会社', CAST(N'2025-02-07' AS Date), CAST(468929 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (686, 458, N'田中鉱業株式会社', CAST(N'2024-10-10' AS Date), CAST(561009 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (687, 64, N'合同会社田中建設', CAST(N'2024-07-18' AS Date), CAST(268509 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (688, 145, N'有限会社青木水産', CAST(N'2024-11-27' AS Date), CAST(433851 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (689, 242, N'有限会社渡辺食品', CAST(N'2024-04-21' AS Date), CAST(992294 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (690, 85, N'斉藤鉱業合同会社', CAST(N'2024-04-15' AS Date), CAST(940000 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (691, 104, N'合同会社中村通信', CAST(N'2024-12-07' AS Date), CAST(168492 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (692, 410, N'有限会社山田鉱業', CAST(N'2024-11-10' AS Date), CAST(837189 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (693, 96, N'合同会社遠藤ガス', CAST(N'2024-07-05' AS Date), CAST(272562 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (694, 93, N'合同会社遠藤銀行', CAST(N'2024-12-15' AS Date), CAST(916168 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (695, 474, N'近藤水産株式会社', CAST(N'2024-04-17' AS Date), CAST(999452 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (696, 125, N'中村食品有限会社', CAST(N'2024-07-01' AS Date), CAST(145077 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (697, 382, N'有限会社小川印刷', CAST(N'2024-12-08' AS Date), CAST(559469 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (698, 409, N'合同会社前田建設', CAST(N'2024-04-16' AS Date), CAST(788027 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (699, 370, N'林食品合同会社', CAST(N'2024-08-21' AS Date), CAST(838356 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (700, 32, N'株式会社山田銀行', CAST(N'2024-09-15' AS Date), CAST(185961 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (701, 259, N'近藤建設株式会社', CAST(N'2024-09-27' AS Date), CAST(232811 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (702, 274, N'田中印刷株式会社', CAST(N'2024-07-18' AS Date), CAST(527139 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (703, 65, N'有限会社田中運輸', CAST(N'2025-02-28' AS Date), CAST(568690 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (704, 461, N'小林運輸有限会社', CAST(N'2025-03-03' AS Date), CAST(21059 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (705, 382, N'有限会社小川印刷', CAST(N'2024-09-23' AS Date), CAST(482261 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (706, 212, N'株式会社太田運輸', CAST(N'2024-10-19' AS Date), CAST(703986 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (707, 133, N'藤原農林株式会社', CAST(N'2025-03-05' AS Date), CAST(945881 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (708, 301, N'合同会社伊藤食品', CAST(N'2024-12-10' AS Date), CAST(786753 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (709, 440, N'長谷川ガス株式会社', CAST(N'2025-03-21' AS Date), CAST(808601 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (710, 262, N'遠藤水産合同会社', CAST(N'2025-03-10' AS Date), CAST(736791 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (711, 128, N'山口保険有限会社', CAST(N'2024-08-26' AS Date), CAST(754635 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (712, 308, N'株式会社小林保険', CAST(N'2024-05-28' AS Date), CAST(932889 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (713, 7, N'山崎電気合同会社', CAST(N'2024-06-11' AS Date), CAST(164912 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (714, 342, N'松本農林株式会社', CAST(N'2024-10-12' AS Date), CAST(394854 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (715, 257, N'合同会社青木保険', CAST(N'2024-05-20' AS Date), CAST(731717 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (716, 69, N'株式会社三浦電気', CAST(N'2025-04-02' AS Date), CAST(512738 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (717, 312, N'株式会社田中通信', CAST(N'2024-09-22' AS Date), CAST(365862 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (718, 155, N'合同会社佐藤食品', CAST(N'2024-08-31' AS Date), CAST(156089 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (719, 420, N'福田保険有限会社', CAST(N'2024-11-13' AS Date), CAST(993105 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (720, 179, N'有限会社加藤情報', CAST(N'2024-05-22' AS Date), CAST(642386 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (721, 203, N'松本通信株式会社', CAST(N'2024-06-21' AS Date), CAST(430763 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (722, 346, N'鈴木建設合同会社', CAST(N'2024-06-28' AS Date), CAST(894259 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (723, 97, N'合同会社佐藤通信', CAST(N'2024-09-05' AS Date), CAST(236896 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (724, 264, N'前田情報合同会社', CAST(N'2025-01-18' AS Date), CAST(544414 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (725, 414, N'有限会社坂本情報', CAST(N'2024-06-12' AS Date), CAST(552515 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (726, 470, N'加藤電気合同会社', CAST(N'2024-10-21' AS Date), CAST(281554 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (727, 155, N'合同会社佐藤食品', CAST(N'2024-08-23' AS Date), CAST(960384 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (728, 405, N'有限会社山田食品', CAST(N'2025-01-04' AS Date), CAST(279475 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (729, 354, N'合同会社吉田建設', CAST(N'2025-03-09' AS Date), CAST(29166 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (730, 306, N'太田通信株式会社', CAST(N'2025-02-20' AS Date), CAST(907247 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (731, 407, N'清水通信有限会社', CAST(N'2025-04-13' AS Date), CAST(875558 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (732, 482, N'合同会社後藤保険', CAST(N'2025-01-09' AS Date), CAST(658180 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (733, 465, N'岡田建設合同会社', CAST(N'2024-05-10' AS Date), CAST(387885 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (734, 5, N'長谷川農林株式会社', CAST(N'2024-05-03' AS Date), CAST(698563 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (735, 11, N'中村印刷合同会社', CAST(N'2024-06-06' AS Date), CAST(970992 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (736, 426, N'藤田水産合同会社', CAST(N'2024-11-06' AS Date), CAST(872013 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (737, 202, N'田中通信合同会社', CAST(N'2024-08-01' AS Date), CAST(784204 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (738, 440, N'長谷川ガス株式会社', CAST(N'2024-10-14' AS Date), CAST(102077 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (739, 401, N'有限会社阿部鉱業', CAST(N'2025-02-13' AS Date), CAST(743469 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (740, 394, N'森運輸有限会社', CAST(N'2025-01-15' AS Date), CAST(24966 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (741, 181, N'村上ガス有限会社', CAST(N'2024-12-28' AS Date), CAST(922895 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (742, 101, N'有限会社中島通信', CAST(N'2024-11-01' AS Date), CAST(203436 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (743, 255, N'高橋銀行株式会社', CAST(N'2024-05-12' AS Date), CAST(168488 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (744, 301, N'合同会社伊藤食品', CAST(N'2024-05-27' AS Date), CAST(996265 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (745, 464, N'坂本ガス有限会社', CAST(N'2025-04-12' AS Date), CAST(66788 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (746, 460, N'有限会社斉藤電気', CAST(N'2024-06-08' AS Date), CAST(42873 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (747, 258, N'株式会社中村建設', CAST(N'2025-03-01' AS Date), CAST(449689 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (748, 170, N'有限会社伊藤通信', CAST(N'2024-05-24' AS Date), CAST(970625 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (749, 366, N'株式会社鈴木運輸', CAST(N'2025-03-13' AS Date), CAST(365600 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (750, 162, N'佐藤ガス有限会社', CAST(N'2024-05-12' AS Date), CAST(793311 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (751, 249, N'小林水産合同会社', CAST(N'2024-08-10' AS Date), CAST(648551 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (752, 139, N'田中水産有限会社', CAST(N'2024-05-18' AS Date), CAST(91684 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (753, 412, N'株式会社佐藤食品', CAST(N'2025-01-22' AS Date), CAST(951665 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (754, 263, N'合同会社伊藤保険', CAST(N'2024-12-02' AS Date), CAST(596076 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (755, 312, N'株式会社田中通信', CAST(N'2024-08-27' AS Date), CAST(451742 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (756, 312, N'株式会社田中通信', CAST(N'2024-09-11' AS Date), CAST(813508 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (757, 352, N'山下運輸株式会社', CAST(N'2024-05-12' AS Date), CAST(862396 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (758, 300, N'有限会社遠藤鉱業', CAST(N'2025-02-15' AS Date), CAST(889467 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (759, 383, N'株式会社松本ガス', CAST(N'2024-08-10' AS Date), CAST(318497 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (760, 351, N'山田運輸合同会社', CAST(N'2024-09-08' AS Date), CAST(284965 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (761, 402, N'石川保険合同会社', CAST(N'2025-02-16' AS Date), CAST(676143 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (762, 261, N'有限会社近藤印刷', CAST(N'2024-07-13' AS Date), CAST(850764 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (763, 5, N'長谷川農林株式会社', CAST(N'2025-03-24' AS Date), CAST(647353 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (764, 499, N'合同会社山本農林', CAST(N'2025-02-02' AS Date), CAST(941507 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (765, 209, N'有限会社渡辺鉱業', CAST(N'2024-09-28' AS Date), CAST(831894 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (766, 454, N'中川鉱業株式会社', CAST(N'2025-03-31' AS Date), CAST(338507 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (767, 44, N'有限会社田中保険', CAST(N'2024-04-19' AS Date), CAST(421084 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (768, 25, N'有限会社加藤通信', CAST(N'2024-12-27' AS Date), CAST(442454 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (769, 25, N'有限会社加藤通信', CAST(N'2024-06-11' AS Date), CAST(830003 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (770, 68, N'有限会社遠藤通信', CAST(N'2024-07-01' AS Date), CAST(776658 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (771, 209, N'有限会社渡辺鉱業', CAST(N'2024-09-18' AS Date), CAST(945384 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (772, 381, N'株式会社佐藤食品', CAST(N'2024-08-28' AS Date), CAST(931040 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (773, 288, N'有限会社佐藤鉱業', CAST(N'2025-02-07' AS Date), CAST(685536 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (774, 302, N'株式会社伊藤保険', CAST(N'2025-01-17' AS Date), CAST(881139 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (775, 296, N'有限会社藤井ガス', CAST(N'2024-08-16' AS Date), CAST(311788 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (776, 130, N'合同会社佐々木鉱業', CAST(N'2024-12-26' AS Date), CAST(432721 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (777, 443, N'合同会社加藤鉱業', CAST(N'2024-05-23' AS Date), CAST(914141 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (778, 269, N'合同会社松本食品', CAST(N'2025-03-09' AS Date), CAST(928766 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (779, 328, N'佐藤印刷株式会社', CAST(N'2024-11-19' AS Date), CAST(172011 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (780, 427, N'株式会社藤田通信', CAST(N'2024-07-28' AS Date), CAST(151120 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (781, 489, N'合同会社佐々木保険', CAST(N'2024-10-25' AS Date), CAST(16736 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (782, 429, N'清水建設有限会社', CAST(N'2025-01-29' AS Date), CAST(356307 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (783, 45, N'吉田運輸合同会社', CAST(N'2024-10-05' AS Date), CAST(227166 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (784, 231, N'加藤電気株式会社', CAST(N'2024-10-26' AS Date), CAST(725438 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (785, 241, N'山崎食品株式会社', CAST(N'2024-07-13' AS Date), CAST(562018 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (786, 42, N'有限会社高橋水産', CAST(N'2024-11-03' AS Date), CAST(470069 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (787, 398, N'渡辺建設合同会社', CAST(N'2024-09-19' AS Date), CAST(578547 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (788, 283, N'合同会社山田電気', CAST(N'2024-09-07' AS Date), CAST(553845 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (789, 465, N'岡田建設合同会社', CAST(N'2024-12-22' AS Date), CAST(160704 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (790, 425, N'斎藤電気有限会社', CAST(N'2024-07-26' AS Date), CAST(338614 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (791, 451, N'有限会社加藤水産', CAST(N'2025-03-08' AS Date), CAST(160128 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (792, 18, N'株式会社斎藤鉱業', CAST(N'2024-09-29' AS Date), CAST(685845 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (793, 341, N'伊藤運輸有限会社', CAST(N'2025-03-10' AS Date), CAST(559830 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (794, 290, N'有限会社山崎保険', CAST(N'2024-11-10' AS Date), CAST(379343 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (795, 206, N'小川ガス合同会社', CAST(N'2024-06-15' AS Date), CAST(864497 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (796, 381, N'株式会社佐藤食品', CAST(N'2024-05-06' AS Date), CAST(958692 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (797, 263, N'合同会社伊藤保険', CAST(N'2024-10-19' AS Date), CAST(253579 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (798, 372, N'三浦通信株式会社', CAST(N'2024-09-29' AS Date), CAST(829621 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (799, 176, N'有限会社山田通信', CAST(N'2024-07-25' AS Date), CAST(17229 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (800, 295, N'株式会社小林通信', CAST(N'2025-03-05' AS Date), CAST(508381 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (801, 189, N'株式会社佐藤保険', CAST(N'2024-09-03' AS Date), CAST(813822 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (802, 280, N'有限会社田中農林', CAST(N'2025-04-01' AS Date), CAST(553877 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (803, 499, N'合同会社山本農林', CAST(N'2025-03-24' AS Date), CAST(607588 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (804, 21, N'株式会社山田ガス', CAST(N'2024-10-08' AS Date), CAST(198552 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (805, 138, N'石川鉱業有限会社', CAST(N'2024-08-08' AS Date), CAST(516610 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (806, 1, N'前田電気株式会社', CAST(N'2024-05-17' AS Date), CAST(816982 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (807, 336, N'合同会社山本ガス', CAST(N'2024-05-13' AS Date), CAST(510606 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (808, 350, N'渡辺通信有限会社', CAST(N'2025-01-21' AS Date), CAST(976805 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (809, 390, N'林鉱業有限会社', CAST(N'2024-08-11' AS Date), CAST(561465 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (810, 427, N'株式会社藤田通信', CAST(N'2024-09-28' AS Date), CAST(739120 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (811, 351, N'山田運輸合同会社', CAST(N'2024-06-20' AS Date), CAST(517191 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (812, 468, N'福田水産株式会社', CAST(N'2025-03-31' AS Date), CAST(751542 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (813, 320, N'合同会社加藤食品', CAST(N'2024-06-10' AS Date), CAST(876008 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (814, 314, N'藤井農林有限会社', CAST(N'2024-08-30' AS Date), CAST(340561 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (815, 221, N'渡辺電気有限会社', CAST(N'2024-06-27' AS Date), CAST(816825 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (816, 263, N'合同会社伊藤保険', CAST(N'2024-09-06' AS Date), CAST(420456 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (817, 189, N'株式会社佐藤保険', CAST(N'2024-09-30' AS Date), CAST(319558 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (818, 109, N'株式会社鈴木農林', CAST(N'2024-12-04' AS Date), CAST(263543 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (819, 483, N'清水保険有限会社', CAST(N'2024-08-23' AS Date), CAST(259735 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (820, 320, N'合同会社加藤食品', CAST(N'2024-05-24' AS Date), CAST(163578 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (821, 125, N'中村食品有限会社', CAST(N'2025-01-30' AS Date), CAST(895080 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (822, 282, N'伊藤保険合同会社', CAST(N'2025-01-15' AS Date), CAST(572585 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (823, 458, N'田中鉱業株式会社', CAST(N'2024-08-28' AS Date), CAST(513130 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (824, 355, N'株式会社山崎通信', CAST(N'2025-01-11' AS Date), CAST(639485 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (825, 310, N'合同会社吉田情報', CAST(N'2024-12-07' AS Date), CAST(754396 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (826, 277, N'福田銀行有限会社', CAST(N'2024-08-02' AS Date), CAST(958689 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (827, 151, N'有限会社藤田運輸', CAST(N'2024-09-26' AS Date), CAST(296714 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (828, 182, N'渡辺建設合同会社', CAST(N'2024-09-17' AS Date), CAST(340641 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (829, 23, N'田中食品有限会社', CAST(N'2025-01-05' AS Date), CAST(216570 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (830, 434, N'佐藤情報合同会社', CAST(N'2024-07-02' AS Date), CAST(490597 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (831, 129, N'青木運輸有限会社', CAST(N'2024-07-31' AS Date), CAST(311744 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (832, 215, N'山本農林株式会社', CAST(N'2024-11-04' AS Date), CAST(899713 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (833, 28, N'小林印刷有限会社', CAST(N'2025-02-14' AS Date), CAST(945907 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (834, 172, N'株式会社高橋銀行', CAST(N'2025-01-22' AS Date), CAST(809967 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (835, 315, N'田中農林株式会社', CAST(N'2024-07-01' AS Date), CAST(469405 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (836, 281, N'有限会社鈴木印刷', CAST(N'2024-09-13' AS Date), CAST(904173 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (837, 192, N'株式会社後藤情報', CAST(N'2024-12-22' AS Date), CAST(719251 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (838, 372, N'三浦通信株式会社', CAST(N'2025-03-03' AS Date), CAST(838771 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (839, 260, N'池田情報合同会社', CAST(N'2025-04-05' AS Date), CAST(906021 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (840, 490, N'清水印刷合同会社', CAST(N'2024-06-12' AS Date), CAST(110417 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (841, 11, N'中村印刷合同会社', CAST(N'2025-03-23' AS Date), CAST(837008 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (842, 422, N'中川通信有限会社', CAST(N'2024-11-05' AS Date), CAST(105922 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (843, 364, N'藤田建設合同会社', CAST(N'2025-02-07' AS Date), CAST(819676 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (844, 143, N'西村運輸合同会社', CAST(N'2024-11-13' AS Date), CAST(176457 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (845, 303, N'株式会社加藤鉱業', CAST(N'2024-12-19' AS Date), CAST(153554 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (846, 449, N'田中建設合同会社', CAST(N'2024-12-18' AS Date), CAST(280405 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (847, 404, N'株式会社中村印刷', CAST(N'2024-11-09' AS Date), CAST(162325 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (848, 105, N'株式会社村上食品', CAST(N'2025-03-04' AS Date), CAST(152974 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (849, 499, N'合同会社山本農林', CAST(N'2025-01-10' AS Date), CAST(218535 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (850, 180, N'井上印刷合同会社', CAST(N'2024-07-12' AS Date), CAST(700477 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (851, 348, N'合同会社太田水産', CAST(N'2025-02-08' AS Date), CAST(802052 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (852, 42, N'有限会社高橋水産', CAST(N'2024-04-20' AS Date), CAST(657966 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (853, 406, N'高橋印刷有限会社', CAST(N'2024-06-11' AS Date), CAST(782264 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (854, 3, N'斉藤ガス株式会社', CAST(N'2025-01-30' AS Date), CAST(873934 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (855, 380, N'株式会社中島食品', CAST(N'2024-06-22' AS Date), CAST(718259 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (856, 215, N'山本農林株式会社', CAST(N'2025-02-07' AS Date), CAST(162540 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (857, 276, N'有限会社山田食品', CAST(N'2025-03-23' AS Date), CAST(537770 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (858, 487, N'村上農林株式会社', CAST(N'2024-12-22' AS Date), CAST(712346 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (859, 234, N'田中運輸株式会社', CAST(N'2024-11-02' AS Date), CAST(706425 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (860, 119, N'株式会社小川鉱業', CAST(N'2024-05-16' AS Date), CAST(678297 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (861, 346, N'鈴木建設合同会社', CAST(N'2024-04-16' AS Date), CAST(207913 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (862, 180, N'井上印刷合同会社', CAST(N'2024-08-06' AS Date), CAST(295377 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (863, 276, N'有限会社山田食品', CAST(N'2024-06-16' AS Date), CAST(306457 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (864, 147, N'合同会社佐藤銀行', CAST(N'2024-07-05' AS Date), CAST(421530 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (865, 90, N'加藤印刷有限会社', CAST(N'2024-10-03' AS Date), CAST(129322 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (866, 265, N'後藤建設合同会社', CAST(N'2025-02-02' AS Date), CAST(760472 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (867, 74, N'合同会社井上ガス', CAST(N'2024-09-09' AS Date), CAST(284305 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (868, 390, N'林鉱業有限会社', CAST(N'2025-01-13' AS Date), CAST(784965 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (869, 136, N'青木電気株式会社', CAST(N'2024-08-31' AS Date), CAST(352938 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (870, 263, N'合同会社伊藤保険', CAST(N'2025-03-18' AS Date), CAST(371049 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (871, 377, N'渡辺食品合同会社', CAST(N'2024-09-29' AS Date), CAST(586274 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (872, 396, N'株式会社山崎銀行', CAST(N'2024-04-15' AS Date), CAST(757055 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (873, 336, N'合同会社山本ガス', CAST(N'2025-03-27' AS Date), CAST(330226 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (874, 265, N'後藤建設合同会社', CAST(N'2024-06-23' AS Date), CAST(446062 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (875, 240, N'小林印刷有限会社', CAST(N'2024-12-30' AS Date), CAST(420440 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (876, 50, N'佐々木水産合同会社', CAST(N'2024-07-13' AS Date), CAST(431647 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (877, 260, N'池田情報合同会社', CAST(N'2024-05-04' AS Date), CAST(499228 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (878, 17, N'佐藤運輸株式会社', CAST(N'2024-12-31' AS Date), CAST(254328 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (879, 49, N'有限会社中村通信', CAST(N'2024-06-11' AS Date), CAST(406342 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (880, 36, N'佐々木食品株式会社', CAST(N'2024-07-07' AS Date), CAST(232947 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (881, 112, N'高橋運輸有限会社', CAST(N'2024-08-05' AS Date), CAST(105270 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (882, 474, N'近藤水産株式会社', CAST(N'2025-02-21' AS Date), CAST(548133 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (883, 310, N'合同会社吉田情報', CAST(N'2025-01-04' AS Date), CAST(586965 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (884, 308, N'株式会社小林保険', CAST(N'2024-09-23' AS Date), CAST(916731 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (885, 345, N'合同会社小川銀行', CAST(N'2024-08-15' AS Date), CAST(681140 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (886, 180, N'井上印刷合同会社', CAST(N'2024-10-19' AS Date), CAST(816207 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (887, 360, N'小林食品有限会社', CAST(N'2024-05-19' AS Date), CAST(46348 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (888, 226, N'小川通信合同会社', CAST(N'2024-12-24' AS Date), CAST(553107 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (889, 423, N'山本電気有限会社', CAST(N'2025-04-10' AS Date), CAST(160311 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (890, 233, N'合同会社渡辺情報', CAST(N'2024-08-15' AS Date), CAST(105848 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (891, 428, N'山本銀行有限会社', CAST(N'2024-05-16' AS Date), CAST(314106 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (892, 169, N'田中食品株式会社', CAST(N'2024-05-08' AS Date), CAST(950858 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (893, 450, N'有限会社森運輸', CAST(N'2024-05-05' AS Date), CAST(102989 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (894, 424, N'合同会社松本保険', CAST(N'2024-08-02' AS Date), CAST(398569 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (895, 118, N'伊藤水産有限会社', CAST(N'2025-02-03' AS Date), CAST(439242 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (896, 439, N'有限会社鈴木保険', CAST(N'2025-04-04' AS Date), CAST(518475 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (897, 74, N'合同会社井上ガス', CAST(N'2024-07-23' AS Date), CAST(895611 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (898, 379, N'有限会社岡田農林', CAST(N'2024-05-02' AS Date), CAST(162660 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (899, 261, N'有限会社近藤印刷', CAST(N'2024-10-31' AS Date), CAST(345747 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (900, 185, N'清水運輸有限会社', CAST(N'2025-01-05' AS Date), CAST(219955 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (901, 267, N'井上印刷合同会社', CAST(N'2024-04-21' AS Date), CAST(454433 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (902, 203, N'松本通信株式会社', CAST(N'2025-03-26' AS Date), CAST(159656 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (903, 40, N'合同会社前田印刷', CAST(N'2024-11-17' AS Date), CAST(670025 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (904, 270, N'合同会社加藤建設', CAST(N'2025-01-07' AS Date), CAST(880420 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (905, 180, N'井上印刷合同会社', CAST(N'2025-01-24' AS Date), CAST(623842 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (906, 449, N'田中建設合同会社', CAST(N'2024-06-24' AS Date), CAST(460249 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (907, 380, N'株式会社中島食品', CAST(N'2024-12-26' AS Date), CAST(132446 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (908, 72, N'合同会社石井印刷', CAST(N'2024-08-30' AS Date), CAST(970569 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (909, 480, N'中島銀行有限会社', CAST(N'2025-01-12' AS Date), CAST(889789 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (910, 154, N'青木食品有限会社', CAST(N'2024-08-16' AS Date), CAST(610727 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (911, 350, N'渡辺通信有限会社', CAST(N'2024-10-08' AS Date), CAST(688834 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (912, 52, N'株式会社佐藤農林', CAST(N'2024-08-03' AS Date), CAST(267569 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (913, 16, N'合同会社吉田保険', CAST(N'2024-04-15' AS Date), CAST(726793 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (914, 239, N'合同会社森食品', CAST(N'2024-12-01' AS Date), CAST(782931 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (915, 360, N'小林食品有限会社', CAST(N'2024-06-30' AS Date), CAST(841520 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (916, 84, N'有限会社小林ガス', CAST(N'2024-12-13' AS Date), CAST(665678 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (917, 348, N'合同会社太田水産', CAST(N'2024-06-20' AS Date), CAST(773105 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (918, 489, N'合同会社佐々木保険', CAST(N'2024-08-02' AS Date), CAST(691768 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (919, 7, N'山崎電気合同会社', CAST(N'2024-12-19' AS Date), CAST(160514 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (920, 443, N'合同会社加藤鉱業', CAST(N'2024-05-22' AS Date), CAST(171843 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (921, 35, N'小林運輸株式会社', CAST(N'2025-02-18' AS Date), CAST(303012 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (922, 139, N'田中水産有限会社', CAST(N'2024-05-30' AS Date), CAST(500559 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (923, 297, N'中村通信合同会社', CAST(N'2024-09-11' AS Date), CAST(53519 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (924, 73, N'合同会社阿部建設', CAST(N'2024-08-25' AS Date), CAST(71459 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (925, 171, N'合同会社前田水産', CAST(N'2024-12-04' AS Date), CAST(678206 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (926, 200, N'中川印刷合同会社', CAST(N'2025-04-02' AS Date), CAST(320886 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (927, 109, N'株式会社鈴木農林', CAST(N'2025-02-27' AS Date), CAST(631337 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (928, 127, N'有限会社鈴木通信', CAST(N'2024-07-20' AS Date), CAST(233345 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (929, 164, N'有限会社渡辺鉱業', CAST(N'2025-04-08' AS Date), CAST(812387 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (930, 216, N'株式会社渡辺保険', CAST(N'2024-06-21' AS Date), CAST(554495 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (931, 364, N'藤田建設合同会社', CAST(N'2024-10-26' AS Date), CAST(760496 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (932, 474, N'近藤水産株式会社', CAST(N'2025-01-01' AS Date), CAST(322726 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (933, 228, N'加藤印刷株式会社', CAST(N'2024-05-16' AS Date), CAST(676565 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (934, 122, N'井上情報有限会社', CAST(N'2024-05-17' AS Date), CAST(284541 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (935, 44, N'有限会社田中保険', CAST(N'2024-10-07' AS Date), CAST(161999 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (936, 14, N'有限会社小林情報', CAST(N'2024-09-28' AS Date), CAST(684572 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (937, 27, N'加藤水産合同会社', CAST(N'2024-05-25' AS Date), CAST(824466 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (938, 262, N'遠藤水産合同会社', CAST(N'2024-05-30' AS Date), CAST(819463 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (939, 240, N'小林印刷有限会社', CAST(N'2024-06-05' AS Date), CAST(893901 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (940, 83, N'合同会社阿部保険', CAST(N'2025-04-10' AS Date), CAST(289747 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (941, 430, N'合同会社後藤食品', CAST(N'2024-09-28' AS Date), CAST(752345 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (942, 102, N'有限会社阿部運輸', CAST(N'2024-08-08' AS Date), CAST(932968 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (943, 136, N'青木電気株式会社', CAST(N'2024-07-24' AS Date), CAST(433790 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (944, 312, N'株式会社田中通信', CAST(N'2024-08-02' AS Date), CAST(291157 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (945, 356, N'有限会社藤原通信', CAST(N'2025-04-06' AS Date), CAST(227840 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (946, 134, N'合同会社高橋銀行', CAST(N'2024-04-16' AS Date), CAST(751302 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (947, 337, N'有限会社林農林', CAST(N'2025-03-29' AS Date), CAST(467259 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (948, 166, N'岡田情報合同会社', CAST(N'2024-05-30' AS Date), CAST(765573 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (949, 170, N'有限会社伊藤通信', CAST(N'2024-09-15' AS Date), CAST(827220 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (950, 493, N'山田建設合同会社', CAST(N'2024-05-20' AS Date), CAST(139945 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (951, 184, N'合同会社山田電気', CAST(N'2024-08-15' AS Date), CAST(472848 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (952, 352, N'山下運輸株式会社', CAST(N'2024-10-14' AS Date), CAST(458462 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (953, 210, N'森建設有限会社', CAST(N'2024-10-09' AS Date), CAST(622450 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (954, 45, N'吉田運輸合同会社', CAST(N'2024-07-02' AS Date), CAST(849695 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (955, 68, N'有限会社遠藤通信', CAST(N'2025-02-23' AS Date), CAST(26308 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (956, 336, N'合同会社山本ガス', CAST(N'2024-08-11' AS Date), CAST(258977 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (957, 327, N'有限会社小林通信', CAST(N'2025-02-23' AS Date), CAST(452349 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (958, 346, N'鈴木建設合同会社', CAST(N'2024-11-13' AS Date), CAST(639965 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (959, 155, N'合同会社佐藤食品', CAST(N'2024-11-22' AS Date), CAST(562431 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (960, 286, N'合同会社佐藤保険', CAST(N'2024-05-06' AS Date), CAST(720702 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (961, 1, N'前田電気株式会社', CAST(N'2025-01-30' AS Date), CAST(11595 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (962, 174, N'有限会社田中保険', CAST(N'2024-10-23' AS Date), CAST(484307 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (963, 125, N'中村食品有限会社', CAST(N'2024-10-04' AS Date), CAST(934351 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (964, 134, N'合同会社高橋銀行', CAST(N'2024-07-08' AS Date), CAST(189523 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (965, 205, N'高橋食品株式会社', CAST(N'2025-04-06' AS Date), CAST(118269 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (966, 55, N'有限会社高橋農林', CAST(N'2024-10-27' AS Date), CAST(769921 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (967, 160, N'有限会社渡辺食品', CAST(N'2024-07-09' AS Date), CAST(130626 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (968, 456, N'株式会社山崎建設', CAST(N'2025-02-25' AS Date), CAST(117328 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (969, 380, N'株式会社中島食品', CAST(N'2025-03-13' AS Date), CAST(267776 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (970, 351, N'山田運輸合同会社', CAST(N'2025-01-19' AS Date), CAST(476165 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (971, 85, N'斉藤鉱業合同会社', CAST(N'2024-08-18' AS Date), CAST(280357 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (972, 226, N'小川通信合同会社', CAST(N'2024-04-18' AS Date), CAST(882148 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (973, 288, N'有限会社佐藤鉱業', CAST(N'2024-10-02' AS Date), CAST(27124 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (974, 52, N'株式会社佐藤農林', CAST(N'2024-11-06' AS Date), CAST(96889 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (975, 107, N'佐藤食品合同会社', CAST(N'2024-12-03' AS Date), CAST(768424 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (976, 118, N'伊藤水産有限会社', CAST(N'2024-08-19' AS Date), CAST(686470 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (977, 96, N'合同会社遠藤ガス', CAST(N'2024-09-08' AS Date), CAST(680876 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (978, 302, N'株式会社伊藤保険', CAST(N'2024-09-10' AS Date), CAST(641739 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (979, 146, N'福田農林株式会社', CAST(N'2024-10-18' AS Date), CAST(548040 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (980, 243, N'合同会社三浦通信', CAST(N'2024-05-27' AS Date), CAST(904357 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (981, 451, N'有限会社加藤水産', CAST(N'2024-12-05' AS Date), CAST(371325 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (982, 398, N'渡辺建設合同会社', CAST(N'2025-01-20' AS Date), CAST(205565 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (983, 461, N'小林運輸有限会社', CAST(N'2024-08-20' AS Date), CAST(349281 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (984, 191, N'有限会社松田通信', CAST(N'2024-08-14' AS Date), CAST(662108 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (985, 346, N'鈴木建設合同会社', CAST(N'2024-12-08' AS Date), CAST(32035 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (986, 236, N'有限会社斉藤通信', CAST(N'2024-07-23' AS Date), CAST(868313 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (987, 102, N'有限会社阿部運輸', CAST(N'2024-09-26' AS Date), CAST(744018 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (988, 283, N'合同会社山田電気', CAST(N'2025-02-04' AS Date), CAST(44521 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (989, 212, N'株式会社太田運輸', CAST(N'2024-08-17' AS Date), CAST(840539 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (990, 189, N'株式会社佐藤保険', CAST(N'2025-04-07' AS Date), CAST(216986 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (991, 35, N'小林運輸株式会社', CAST(N'2024-08-05' AS Date), CAST(147913 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (992, 369, N'株式会社井上ガス', CAST(N'2024-07-22' AS Date), CAST(737174 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (993, 315, N'田中農林株式会社', CAST(N'2024-11-22' AS Date), CAST(227959 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (994, 220, N'斎藤銀行合同会社', CAST(N'2025-04-02' AS Date), CAST(581006 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (995, 368, N'山田鉱業株式会社', CAST(N'2024-10-20' AS Date), CAST(785150 AS Decimal(10, 0)), 0, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (996, 102, N'有限会社阿部運輸', CAST(N'2024-06-02' AS Date), CAST(319503 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (997, 230, N'鈴木通信株式会社', CAST(N'2024-04-18' AS Date), CAST(548787 AS Decimal(10, 0)), 1, NULL, 1)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (998, 463, N'木村ガス株式会社', CAST(N'2025-03-25' AS Date), CAST(100255 AS Decimal(10, 0)), 1, N'', 2)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (999, 4, N'株式会社近藤銀行', CAST(N'2024-05-19' AS Date), CAST(442551 AS Decimal(10, 0)), 1, N'', 2)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (1000, 118, N'伊藤水産有限会社', CAST(N'2024-05-18' AS Date), CAST(830001 AS Decimal(10, 0)), 0, N'テストデータ受注Id=1000', 5)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (1006, 152, N'阿部電気株式会社', CAST(N'2025-04-15' AS Date), CAST(600001 AS Decimal(10, 0)), 0, N'', 3)
GO
INSERT [dbo].[T受注] ([受注Id], [得意先Id], [得意先名], [受注日], [合計金額], [Is売上済み], [備考], [Version]) VALUES (1010, 501, N'ハカマタソフト', CAST(N'2025-04-17' AS Date), CAST(123456 AS Decimal(10, 0)), 0, N'', 3)
GO
SET IDENTITY_INSERT [dbo].[T受注] OFF
GO
SET IDENTITY_INSERT [dbo].[T障害ログ] ON 
GO
INSERT [dbo].[T障害ログ] ([Id], [発生日時], [画面名], [処理名], [メッセージ], [スタックトレース], [クライアント情報], [備考]) VALUES (3, CAST(N'2025-04-17T04:03:33.530' AS DateTime), N'Form受注', N'ExportToExcel', N'TEST Excelの表示ができません。', N'   at WinFormsMenuDemo.Controls.ExcelExportButton.ExportToExcel() in D:\Dev\＠WinForm\WinFormsMenuDemo\WinFormsMenuDemo\Controls\ExcelExportButton.cs:line 43', N'PC-MASAY-01 / masay', N'')
GO
INSERT [dbo].[T障害ログ] ([Id], [発生日時], [画面名], [処理名], [メッセージ], [スタックトレース], [クライアント情報], [備考]) VALUES (4, CAST(N'2025-04-18T06:14:42.743' AS DateTime), N'不明', N'HandleException', N'No service for type ''WinFormsMenuDemo.Views.FormMain'' has been registered.', N'   at Microsoft.Extensions.DependencyInjection.ServiceProviderServiceExtensions.GetRequiredService(IServiceProvider provider, Type serviceType)
   at Microsoft.Extensions.DependencyInjection.ServiceProviderServiceExtensions.GetRequiredService[T](IServiceProvider provider)
   at WinFormsMenuDemo.Program.Main() in D:\Dev\＠WinForm\WinFormsMenuDemo\WinFormsMenuDemo\Program.cs:line 29', N'PC-MASAY-01 / masay', N'グローバル例外ハンドラ')
GO
INSERT [dbo].[T障害ログ] ([Id], [発生日時], [画面名], [処理名], [メッセージ], [スタックトレース], [クライアント情報], [備考]) VALUES (5, CAST(N'2025-04-18T06:21:29.463' AS DateTime), N'不明', N'LogException', N'TEST Search受注', N'   at WinFormsMenuDemo.Presenters.受注Presenter.Search受注(Object sender, EventArgs e) in D:\Dev\＠WinForm\WinFormsMenuDemo\WinFormsMenuDemo\Presenters\受注Presenter.cs:line 45
   at WinFormsMenuDemo.Views.Form受注.<AssociateAndRaiseViewEvents>b__59_0(Object <p0>, EventArgs <p1>) in D:\Dev\＠WinForm\WinFormsMenuDemo\WinFormsMenuDemo\Views\Form受注.cs:line 143
   at System.Windows.Forms.Button.OnClick(EventArgs e)
   at System.Windows.Forms.Button.OnMouseUp(MouseEventArgs mevent)
   at System.Windows.Forms.Control.WmMouseUp(Message& m, MouseButtons button, Int32 clicks)
   at System.Windows.Forms.Control.WndProc(Message& m)
   at System.Windows.Forms.ButtonBase.WndProc(Message& m)
   at System.Windows.Forms.NativeWindow.Callback(HWND hWnd, MessageId msg, WPARAM wparam, LPARAM lparam)', N'PC-MASAY-01 / masay', N'')
GO
INSERT [dbo].[T障害ログ] ([Id], [発生日時], [画面名], [処理名], [メッセージ], [スタックトレース], [クライアント情報], [備考]) VALUES (6, CAST(N'2025-04-18T08:56:57.823' AS DateTime), N'不明', N'LogException', N'Could not find the resource "WinFormsMenuDemo.Views.FormMain.resources" among the resources "WinFormsMenuDemo.Controls.BottomBarControl.resources", "WinFormsMenuDemo.Controls.ExcelExportButton.resources", "WinFormsMenuDemo.Controls.SelectableGridView.resources", "WinFormsMenuDemo.Controls.ToastPanel.resources", "WinFormsMenuDemo.Controls.TopBarControl.resources", "WinFormsMenuDemo.Properties.Resources.resources", "WinFormsMenuDemo.Views.FormFactory.resources", "WinFormsMenuDemo.Views.FormWelcome.resources", "WinFormsMenuDemo.Views.Form受注.resources", "WinFormsMenuDemo.Views.Form得意先.resources", ... embedded in the assembly "WinFormsMenuDemo", nor among the resources in any satellite assemblies for the specified culture. Perhaps the resources were embedded with an incorrect name.', N'   at System.Resources.ManifestBasedResourceGroveler.HandleResourceStreamMissing(String fileName)
   at System.Resources.ManifestBasedResourceGroveler.GrovelForResourceSet(CultureInfo culture, Dictionary`2 localResourceSets, Boolean tryParents, Boolean createIfNotExists)
   at System.Resources.ResourceManager.InternalGetResourceSet(CultureInfo culture, Boolean createIfNotExists, Boolean tryParents)
   at System.Resources.ResourceManager.GetObject(String name, CultureInfo culture, Boolean wrapUnmanagedMemStream)
   at WinFormsMenuDemo.Views.FormMain.InitializeComponent() in D:\Dev\＠WinForm\WinFormsMenuDemo\WinFormsMenuDemo\Views\FormMain.Designer.cs:line 331
   at WinFormsMenuDemo.Views.FormMain..ctor() in D:\Dev\＠WinForm\WinFormsMenuDemo\WinFormsMenuDemo\Views\FormMain.cs:line 59
   at WinFormsMenuDemo.Program.Main() in D:\Dev\＠WinForm\WinFormsMenuDemo\WinFormsMenuDemo\Program.cs:line 28', N'PC-MASAY-01 / masay', N'')
GO
INSERT [dbo].[T障害ログ] ([Id], [発生日時], [画面名], [処理名], [メッセージ], [スタックトレース], [クライアント情報], [備考]) VALUES (7, CAST(N'2025-04-18T08:57:51.967' AS DateTime), N'不明', N'LogException', N'Could not find the resource "WinFormsMenuDemo.Views.FormMain.resources" among the resources "WinFormsMenuDemo.Controls.BottomBarControl.resources", "WinFormsMenuDemo.Controls.ExcelExportButton.resources", "WinFormsMenuDemo.Controls.SelectableGridView.resources", "WinFormsMenuDemo.Controls.ToastPanel.resources", "WinFormsMenuDemo.Controls.TopBarControl.resources", "WinFormsMenuDemo.Properties.Resources.resources", "WinFormsMenuDemo.Views.FormFactory.resources", "WinFormsMenuDemo.Views.FormWelcome.resources", "WinFormsMenuDemo.Views.Form受注.resources", "WinFormsMenuDemo.Views.Form得意先.resources", ... embedded in the assembly "WinFormsMenuDemo", nor among the resources in any satellite assemblies for the specified culture. Perhaps the resources were embedded with an incorrect name.', N'   at System.Resources.ManifestBasedResourceGroveler.HandleResourceStreamMissing(String fileName)
   at System.Resources.ManifestBasedResourceGroveler.GrovelForResourceSet(CultureInfo culture, Dictionary`2 localResourceSets, Boolean tryParents, Boolean createIfNotExists)
   at System.Resources.ResourceManager.InternalGetResourceSet(CultureInfo culture, Boolean createIfNotExists, Boolean tryParents)
   at System.Resources.ResourceManager.GetObject(String name, CultureInfo culture, Boolean wrapUnmanagedMemStream)
   at WinFormsMenuDemo.Views.FormMain.InitializeComponent() in D:\Dev\＠WinForm\WinFormsMenuDemo\WinFormsMenuDemo\Views\FormMain.Designer.cs:line 331
   at WinFormsMenuDemo.Views.FormMain..ctor() in D:\Dev\＠WinForm\WinFormsMenuDemo\WinFormsMenuDemo\Views\FormMain.cs:line 59
   at WinFormsMenuDemo.Program.Main() in D:\Dev\＠WinForm\WinFormsMenuDemo\WinFormsMenuDemo\Program.cs:line 28', N'PC-MASAY-01 / masay', N'')
GO
INSERT [dbo].[T障害ログ] ([Id], [発生日時], [画面名], [処理名], [メッセージ], [スタックトレース], [クライアント情報], [備考]) VALUES (8, CAST(N'2025-04-18T08:58:46.197' AS DateTime), N'不明', N'LogException', N'Could not find the resource "WinFormsMenuDemo.Views.FormMain.resources" among the resources "WinFormsMenuDemo.Controls.BottomBarControl.resources", "WinFormsMenuDemo.Controls.ExcelExportButton.resources", "WinFormsMenuDemo.Controls.SelectableGridView.resources", "WinFormsMenuDemo.Controls.ToastPanel.resources", "WinFormsMenuDemo.Controls.TopBarControl.resources", "WinFormsMenuDemo.Properties.Resources.resources", "WinFormsMenuDemo.Views.FormFactory.resources", "WinFormsMenuDemo.Views.FormWelcome.resources", "WinFormsMenuDemo.Views.Form受注.resources", "WinFormsMenuDemo.Views.Form得意先.resources", ... embedded in the assembly "WinFormsMenuDemo", nor among the resources in any satellite assemblies for the specified culture. Perhaps the resources were embedded with an incorrect name.', N'   at System.Resources.ManifestBasedResourceGroveler.HandleResourceStreamMissing(String fileName)
   at System.Resources.ManifestBasedResourceGroveler.GrovelForResourceSet(CultureInfo culture, Dictionary`2 localResourceSets, Boolean tryParents, Boolean createIfNotExists)
   at System.Resources.ResourceManager.InternalGetResourceSet(CultureInfo culture, Boolean createIfNotExists, Boolean tryParents)
   at System.Resources.ResourceManager.GetObject(String name, CultureInfo culture, Boolean wrapUnmanagedMemStream)
   at WinFormsMenuDemo.Views.FormMain.InitializeComponent() in D:\Dev\＠WinForm\WinFormsMenuDemo\WinFormsMenuDemo\Views\FormMain.Designer.cs:line 331
   at WinFormsMenuDemo.Views.FormMain..ctor() in D:\Dev\＠WinForm\WinFormsMenuDemo\WinFormsMenuDemo\Views\FormMain.cs:line 59
   at WinFormsMenuDemo.Program.Main() in D:\Dev\＠WinForm\WinFormsMenuDemo\WinFormsMenuDemo\Program.cs:line 28', N'PC-MASAY-01 / masay', N'')
GO
INSERT [dbo].[T障害ログ] ([Id], [発生日時], [画面名], [処理名], [メッセージ], [スタックトレース], [クライアント情報], [備考]) VALUES (9, CAST(N'2025-04-18T09:41:37.743' AS DateTime), N'Form障害ログ', N'HandleWithErrorLogging', N'''{'' 付近に不適切な構文があります。', N'   at Microsoft.Data.SqlClient.SqlConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   at Microsoft.Data.SqlClient.SqlInternalConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   at Microsoft.Data.SqlClient.TdsParser.ThrowExceptionAndWarning(TdsParserStateObject stateObj, SqlCommand command, Boolean callerHasConnectionLock, Boolean asyncClose)
   at Microsoft.Data.SqlClient.TdsParser.TryRun(RunBehavior runBehavior, SqlCommand cmdHandler, SqlDataReader dataStream, BulkCopySimpleResultSet bulkCopyHandler, TdsParserStateObject stateObj, Boolean& dataReady)
   at Microsoft.Data.SqlClient.SqlDataReader.TryConsumeMetaData()
   at Microsoft.Data.SqlClient.SqlDataReader.get_MetaData()
   at Microsoft.Data.SqlClient.SqlCommand.FinishExecuteReader(SqlDataReader ds, RunBehavior runBehavior, String resetOptionsString, Boolean isInternal, Boolean forDescribeParameterEncryption, Boolean shouldCacheForAlwaysEncrypted)
   at Microsoft.Data.SqlClient.SqlCommand.RunExecuteReaderTds(CommandBehavior cmdBehavior, RunBehavior runBehavior, Boolean returnStream, Boolean isAsync, Int32 timeout, Task& task, Boolean asyncWrite, Boolean inRetry, SqlDataReader ds, Boolean describeParameterEncryptionRequest)
   at Microsoft.Data.SqlClient.SqlCommand.RunExecuteReader(CommandBehavior cmdBehavior, RunBehavior runBehavior, Boolean returnStream, TaskCompletionSource`1 completion, Int32 timeout, Task& task, Boolean& usedCache, Boolean asyncWrite, Boolean inRetry, String method)
   at Microsoft.Data.SqlClient.SqlCommand.RunExecuteReader(CommandBehavior cmdBehavior, RunBehavior runBehavior, Boolean returnStream, String method)
   at Microsoft.Data.SqlClient.SqlCommand.ExecuteReader(CommandBehavior behavior)
   at Microsoft.Data.SqlClient.SqlCommand.ExecuteReader()
   at WinFormsMenuDemo.Repositories.障害ログRepository.GetAll() in D:\Dev\＠WinForm\WinFormsMenuDemo\WinFormsMenuDemo\Repositories\障害ログRepository.cs:line 62
   at WinFormsMenuDemo.Presenters.障害ログPresenter.<LoadAll障害ログ>b__6_0() in D:\Dev\＠WinForm\WinFormsMenuDemo\WinFormsMenuDemo\Presenters\障害ログPresenter.cs:line 50
   at WinFormsMenuDemo.Presenters.障害ログPresenter.HandleWithErrorLogging(Action action) in D:\Dev\＠WinForm\WinFormsMenuDemo\WinFormsMenuDemo\Presenters\障害ログPresenter.cs:line 38', N'PC-MASAY-01 / masay', N'')
GO
INSERT [dbo].[T障害ログ] ([Id], [発生日時], [画面名], [処理名], [メッセージ], [スタックトレース], [クライアント情報], [備考]) VALUES (10, CAST(N'2025-04-18T09:46:48.850' AS DateTime), N'Form障害ログ', N'HandleWithErrorLogging', N'この Connection に関連付けられている DataReader が既に開かれています。これを最初に閉じる必要があります。', N'   at Microsoft.Data.SqlClient.SqlInternalConnectionTds.ValidateConnectionForExecute(SqlCommand command)
   at Microsoft.Data.SqlClient.SqlConnection.ValidateConnectionForExecute(String method, SqlCommand command)
   at Microsoft.Data.SqlClient.SqlCommand.ValidateCommand(Boolean isAsync, String method)
   at Microsoft.Data.SqlClient.SqlCommand.RunExecuteReader(CommandBehavior cmdBehavior, RunBehavior runBehavior, Boolean returnStream, TaskCompletionSource`1 completion, Int32 timeout, Task& task, Boolean& usedCache, Boolean asyncWrite, Boolean inRetry, String method)
   at Microsoft.Data.SqlClient.SqlCommand.RunExecuteReader(CommandBehavior cmdBehavior, RunBehavior runBehavior, Boolean returnStream, String method)
   at Microsoft.Data.SqlClient.SqlCommand.ExecuteScalar()
   at WinFormsMenuDemo.Repositories.障害ログRepository.GetAll() in D:\Dev\＠WinForm\WinFormsMenuDemo\WinFormsMenuDemo\Repositories\障害ログRepository.cs:line 88
   at WinFormsMenuDemo.Presenters.障害ログPresenter.<LoadAll障害ログ>b__6_0() in D:\Dev\＠WinForm\WinFormsMenuDemo\WinFormsMenuDemo\Presenters\障害ログPresenter.cs:line 50
   at WinFormsMenuDemo.Presenters.障害ログPresenter.HandleWithErrorLogging(Action action) in D:\Dev\＠WinForm\WinFormsMenuDemo\WinFormsMenuDemo\Presenters\障害ログPresenter.cs:line 38', N'PC-MASAY-01 / masay', N'')
GO
SET IDENTITY_INSERT [dbo].[T障害ログ] OFF
GO
SET IDENTITY_INSERT [dbo].[T得意先] ON 
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (1, N'前田電気株式会社', N'岡山県立川市高輪20丁目16番12号 下吉羽コート421', N'090-8924-1157', N'ryosuke59@yamazaki.net', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (2, N'吉田情報有限会社', N'徳島県横浜市都筑区東和町6丁目24番13号', N'070-9753-5139', N'sotarookada@yamada.com', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (3, N'斉藤ガス株式会社', N'徳島県安房郡鋸南町箭坪36丁目11番18号 権現堂コート719', N'59-3423-2094', N'suzukiyumiko@gmail.com', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (4, N'株式会社近藤銀行', N'大分県渋谷区松が谷18丁目17番8号 アーバン高田馬場775', N'070-5917-9533', N'shota35@ogawa.jp', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (5, N'長谷川農林株式会社', N'新潟県富津市三ノ輪39丁目22番3号 パレス箭坪991', N'15-1090-3217', N'fukudaatsushi@inoue.com', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (6, N'鈴木農林合同会社', N'愛知県荒川区柿木沢4丁目17番15号 長畑ハイツ345', N'92-3022-5841', N'akirayamada@yahoo.com', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (7, N'山崎電気合同会社', N'群馬県小平市東和町30丁目24番3号 日比谷公園パレス237', N'090-9459-9246', N'satotakuma@hotmail.com', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (8, N'高橋建設合同会社', N'滋賀県西多摩郡奥多摩町大京町3丁目13番19号 高田馬場パレス714', N'080-7878-9007', N'rei06@gmail.com', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (9, N'合同会社高橋水産', N'大分県豊島区外神田1丁目7番1号 丹勢コート319', N'080-4421-7610', N'hogawa@yahoo.com', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (10, N'合同会社松本運輸', N'愛知県匝瑳市渡辺18丁目1番2号 パレス権現堂855', N'070-9776-5823', N'akira22@yahoo.com', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (11, N'中村印刷合同会社', N'静岡県小笠原村中小来川3丁目9番6号', N'080-9456-8241', N'kazuyayamamoto@hotmail.com', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (12, N'有限会社加藤印刷', N'大阪府南房総市南赤田36丁目16番16号 平河町パーク717', N'04-5229-6111', N'kazuyakobayashi@suzuki.org', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (13, N'西村保険合同会社', N'大分県山武郡芝山町箪笥町6丁目12番8号 クレスト卯の里351', N'070-0873-1764', N'nakagawatsubasa@shimizu.com', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (14, N'有限会社小林情報', N'福島県福生市蔵前10丁目19番13号', N'87-5773-8930', N'mituru08@gmail.com', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (15, N'斎藤鉱業有限会社', N'山梨県大島町上野公園5丁目26番3号 コート長畑320', N'090-0752-2758', N'kimuramai@hotmail.com', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (16, N'合同会社吉田保険', N'山梨県調布市大京町31丁目26番13号', N'080-0024-8945', N'tishii@fujita.jp', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (17, N'佐藤運輸株式会社', N'山梨県新島村日比谷公園4丁目2番16号', N'27-9125-6097', N'esato@gmail.com', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (18, N'株式会社斎藤鉱業', N'岐阜県南房総市丸の内ＪＰタワー13丁目13番16号 ハイツ日光951', N'090-2641-8306', N'yumiko37@yahoo.com', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (19, N'株式会社青木水産', N'石川県横浜市泉区独鈷沢34丁目22番19号 下吉羽アーバン886', N'090-1269-6116', N'katosotaro@ishikawa.com', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (20, N'吉田電気株式会社', N'岐阜県利島村花島6丁目12番3号 箭坪パーク552', N'070-3519-2303', N'yamamotomikako@sato.net', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (21, N'株式会社山田ガス', N'鹿児島県川崎市多摩区細野9丁目1番7号 勝どきパーク448', N'090-2911-8942', N'junokada@yahoo.com', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (22, N'株式会社前田食品', N'大阪府羽村市中鉢石町9丁目20番1号 白金ハイツ264', N'29-6451-3758', N'akato@fujiwara.jp', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (23, N'田中食品有限会社', N'千葉県横浜市神奈川区美原町18丁目4番18号', N'080-7626-6237', N'yukiyamada@hotmail.com', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (24, N'有限会社前田食品', N'宮崎県練馬区今戸1丁目7番10号', N'070-4892-6717', N'bwatanabe@suzuki.com', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (25, N'有限会社加藤通信', N'京都府板橋区南郷屋17丁目12番10号 アーバン細竹144', N'090-1832-1644', N'kumikosuzuki@miura.jp', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (26, N'山本印刷合同会社', N'栃木県印旛郡印旛村箭坪8丁目13番13号 シャルム豊町576', N'080-7785-7074', N'nsato@ito.jp', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (27, N'加藤水産合同会社', N'大分県横浜市港南区方京26丁目1番12号', N'070-1904-4329', N'shoheiyoshida@hotmail.com', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (28, N'小林印刷有限会社', N'大分県荒川区横林29丁目23番5号 コート外神田327', N'090-6676-3373', N'osato@suzuki.com', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (29, N'佐藤運輸合同会社', N'新潟県東大和市九段南40丁目3番17号', N'090-5670-8869', N'ewatanabe@gmail.com', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (30, N'渡辺水産株式会社', N'愛知県八千代市羽折町42丁目1番5号', N'070-6396-8373', N'saitokenichi@yahoo.com', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (31, N'松本印刷有限会社', N'広島県富津市鍛冶ケ沢24丁目3番7号', N'090-3344-4864', N'miki30@yahoo.com', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (32, N'株式会社山田銀行', N'宮城県横浜市都筑区虎ノ門虎ノ門ヒルズ森タワー32丁目15番15号 百村ハイツ312', N'37-9168-6023', N'junkondo@yahoo.com', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (33, N'山本電気株式会社', N'山梨県東大和市竜泉13丁目23番10号 シャルム花川戸844', N'080-0191-2633', N'nakajimakaori@yahoo.com', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (34, N'株式会社小林食品', N'香川県江東区千塚35丁目22番10号', N'080-3184-5357', N'junokada@hotmail.com', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (35, N'小林運輸株式会社', N'京都府印旛郡酒々井町押上33丁目3番5号', N'080-7933-2365', N'gaoki@shimizu.com', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (36, N'佐々木食品株式会社', N'徳島県稲城市氏家新田32丁目26番16号', N'090-1429-6354', N'tanakamituru@hotmail.com', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (37, N'有限会社石井運輸', N'熊本県羽村市外国府間17丁目12番6号 クレスト所野980', N'080-5070-0300', N'kyosuke05@matsuda.jp', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (38, N'株式会社山田鉱業', N'長野県印旛郡栄町一ツ橋27丁目13番1号 虎ノ門クレスト091', N'62-0829-8215', N'naokiota@miura.com', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (39, N'合同会社鈴木通信', N'福岡県東久留米市池之端10丁目20番20号', N'070-4560-0715', N'reiito@yahoo.com', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (40, N'合同会社前田印刷', N'島根県川崎市中原区白金1丁目10番17号 鶴ヶ丘コート089', N'090-0761-6570', N'yui04@ikeda.org', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (41, N'合同会社山口電気', N'神奈川県匝瑳市一ツ橋16丁目19番18号 六番町コーポ509', N'070-9255-4457', N'aokamoto@gmail.com', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (42, N'有限会社高橋水産', N'鳥取県横浜市青葉区平須賀40丁目7番3号 コート箪笥町282', N'070-2918-8966', N'hiroshi06@hotmail.com', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (43, N'太田情報合同会社', N'岐阜県台東区鍛冶ケ沢28丁目26番5号 パレス橋場965', N'08-6930-5823', N'vsato@gmail.com', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (44, N'有限会社田中保険', N'秋田県東村山市秋葉原16丁目24番15号 橋場ハイツ271', N'64-4659-5140', N'maedatakuma@yahoo.com', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (45, N'吉田運輸合同会社', N'滋賀県西多摩郡檜原村中小来川38丁目15番12号 コーポ脚折067', N'080-0195-5013', N'bsato@yamamoto.com', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (46, N'加藤鉱業合同会社', N'京都府横浜市港南区麹町33丁目2番6号', N'080-2708-0862', N'suzukitaro@yahoo.com', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (47, N'有限会社中村銀行', N'石川県府中市浅草橋10丁目25番15号 渡辺パレス805', N'070-3793-7825', N'dfujita@inoue.jp', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (48, N'株式会社鈴木通信', N'香川県練馬区日比谷公園25丁目17番12号 百村コーポ022', N'070-5930-6046', N'yukinishimura@nishimura.jp', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (49, N'有限会社中村通信', N'大分県中央区浅草橋27丁目6番1号 浅草橋クレスト615', N'070-1050-2690', N'vogawa@hotmail.com', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (50, N'佐々木水産合同会社', N'石川県鎌ケ谷市東浅草7丁目27番3号 日比谷公園パーク702', N'090-0065-2822', N'hanakomori@ota.jp', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (51, N'有限会社三浦運輸', N'京都府富津市外国府間16丁目21番10号 パーク小入532', N'75-9269-0290', N'sotarosato@yahoo.com', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (52, N'株式会社佐藤農林', N'福岡県大網白里市渡辺25丁目26番1号 シティ戸塚町325', N'080-8612-6951', N'yito@gmail.com', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (53, N'伊藤ガス有限会社', N'秋田県横浜市磯子区花島18丁目17番12号 コート土沢340', N'090-6180-2606', N'tnishimura@yahoo.com', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (54, N'高橋印刷有限会社', N'埼玉県国立市脚折町33丁目4番12号 丸の内ＪＰタワーコーポ780', N'080-4295-4604', N'ikedahideki@yahoo.com', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (55, N'有限会社高橋農林', N'愛知県印旛郡本埜村轟28丁目19番13号 シャルム二つ室688', N'080-2232-3082', N'nanami45@hotmail.com', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (56, N'有限会社藤田食品', N'静岡県東久留米市西浅草22丁目18番5号', N'84-3656-7846', N'ikedasotaro@gmail.com', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (57, N'合同会社林銀行', N'福島県西多摩郡檜原村権現堂39丁目21番20号 コート無栗屋926', N'070-0015-7517', N'maaya73@gmail.com', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (58, N'合同会社西村鉱業', N'長崎県横浜市港北区卯の里34丁目14番20号', N'080-7640-9262', N'fujiikenichi@hotmail.com', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (59, N'中村情報有限会社', N'鳥取県清瀬市南郷屋18丁目27番17号', N'86-7423-8524', N'esuzuki@sasaki.jp', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (60, N'有限会社佐々木農林', N'群馬県品川区松浦町9丁目22番2号 豊町コート006', N'17-8551-0337', N'tomoya07@yahoo.com', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (61, N'鈴木食品合同会社', N'新潟県神津島村月島25丁目25番5号 天神島クレスト754', N'92-1658-7355', N'yuki64@gmail.com', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (62, N'青木農林有限会社', N'愛知県川崎市幸区長間12丁目11番16号', N'080-1667-8799', N'fyamaguchi@ito.com', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (63, N'有限会社山本建設', N'宮城県東村山市長畑27丁目3番9号 木立パーク125', N'070-3006-8021', N'nakajimatakuma@kondo.jp', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (64, N'合同会社田中建設', N'大阪府大田区上野桜木1丁目14番7号', N'09-4095-5572', N'shohei14@sato.com', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (65, N'有限会社田中運輸', N'東京都豊島区橋場33丁目4番18号 美原町シャルム877', N'080-7852-6461', N'reiito@yahoo.com', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (66, N'佐藤銀行株式会社', N'京都府川崎市多摩区秋葉原15丁目14番8号 クレスト雷門237', N'090-5792-8134', N'takahashiosamu@nakamura.com', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (67, N'小林建設有限会社', N'東京都印旛郡本埜村白金4丁目26番11号 東上野アーバン288', N'29-7939-7037', N'akirasato@gmail.com', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (68, N'有限会社遠藤通信', N'熊本県西多摩郡瑞穂町美原町34丁目14番10号', N'090-7325-8576', N'rei12@gmail.com', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (69, N'株式会社三浦電気', N'鹿児島県町田市幸手24丁目23番2号 土沢シティ169', N'83-0287-4688', N'saitomomoko@sasaki.com', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (70, N'有限会社清水印刷', N'山形県三宅島三宅村土沢16丁目20番1号 花川戸パーク741', N'43-6685-3941', N'miturushimizu@kimura.com', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (71, N'吉田電気合同会社', N'茨城県荒川区湯宮10丁目1番4号', N'30-4461-5459', N'nakamurasayuri@sato.jp', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (72, N'合同会社石井印刷', N'愛知県富里市大京町5丁目9番19号', N'070-8192-7083', N'inouemiki@gmail.com', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (73, N'合同会社阿部建設', N'東京都狛江市富久町23丁目6番9号 四番町コート375', N'080-4801-5450', N'yamamotoshota@takahashi.org', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (74, N'合同会社井上ガス', N'大阪府三鷹市三ノ輪27丁目4番3号', N'52-4364-0004', N'mituru84@sato.net', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (75, N'有限会社林保険', N'大阪府夷隅郡大多喜町外国府間17丁目11番18号 千束シャルム652', N'070-3760-3141', N'ryoheisato@maeda.jp', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (76, N'合同会社伊藤食品', N'京都府荒川区上野公園4丁目6番17号 明石町アーバン234', N'080-2848-0236', N'yumikokimura@saito.com', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (77, N'合同会社岡本食品', N'青森県利島村池之端13丁目2番14号 コーポ芝浦368', N'12-1801-0367', N'qmatsuda@yahoo.com', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (78, N'石川保険株式会社', N'富山県神津島村幸手3丁目25番2号 コート東大和町372', N'090-0925-5548', N'atsushisasaki@hotmail.com', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (79, N'合同会社加藤ガス', N'奈良県いすみ市上野桜木19丁目26番11号 四番町シティ968', N'090-9336-3482', N'qfujii@yoshida.jp', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (80, N'合同会社田中食品', N'宮崎県袖ケ浦市所野13丁目20番4号 平須賀パレス292', N'090-9400-0924', N'vhasegawa@kobayashi.jp', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (81, N'合同会社吉田農林', N'青森県青ヶ島村大中1丁目20番18号 クレスト六番町635', N'080-2729-9869', N'satonaoko@sato.com', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (82, N'有限会社山本運輸', N'福岡県香取郡多古町日光22丁目5番11号 クレスト蔵前954', N'070-7218-4869', N'mmori@yahoo.com', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (83, N'合同会社阿部保険', N'愛媛県青ヶ島村無栗屋12丁目24番16号', N'090-1644-1588', N'satoakira@matsuda.com', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (84, N'有限会社小林ガス', N'岐阜県東久留米市豊町6丁目23番13号', N'080-0360-0962', N'ikato@gmail.com', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (85, N'斉藤鉱業合同会社', N'長崎県山武郡九十九里町小入6丁目19番16号', N'090-4436-0081', N'sotaro28@takahashi.com', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (86, N'佐藤印刷株式会社', N'愛媛県御蔵島村東三島6丁目12番7号 花島シャルム778', N'070-1576-6878', N'aokisotaro@hotmail.com', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (87, N'村上情報有限会社', N'秋田県大網白里市渡辺3丁目13番19号', N'070-1849-4576', N'oyamaguchi@hotmail.com', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (88, N'合同会社小林印刷', N'岡山県八千代市西関宿37丁目3番16号 無栗屋パーク938', N'070-8810-9505', N'hideki77@maeda.jp', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (89, N'合同会社藤田運輸', N'鳥取県三宅島三宅村丸の内ＪＰタワー11丁目2番16号 コート卯の里497', N'080-0799-2975', N'okimura@gmail.com', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (90, N'加藤印刷有限会社', N'富山県山武郡芝山町平須賀16丁目18番19号 北青山シャルム959', N'080-5324-8289', N'ssasaki@tanaka.jp', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (91, N'合同会社小川情報', N'神奈川県安房郡鋸南町芝大門18丁目17番7号 六番町シティ003', N'080-9287-1484', N'rokada@hotmail.com', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (92, N'佐藤農林株式会社', N'埼玉県八丈島八丈町太田ヶ谷40丁目24番18号 富久町クレスト753', N'070-1180-9859', N'atsushisato@suzuki.org', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (93, N'合同会社遠藤銀行', N'香川県川崎市中原区三筋13丁目9番10号', N'080-2932-2347', N'yuishimizu@gmail.com', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (94, N'株式会社青木運輸', N'千葉県香取郡東庄町所野23丁目18番16号 山中新田クレスト949', N'080-0239-0622', N'yamaguchitomoya@hotmail.com', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (95, N'有限会社山本ガス', N'長崎県武蔵村山市五味ヶ谷13丁目4番12号', N'45-8943-4861', N'lsuzuki@fujii.com', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (96, N'合同会社遠藤ガス', N'兵庫県長生郡長柄町元浅草13丁目25番6号', N'070-4756-8056', N'yokoyamashita@hotmail.com', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (97, N'合同会社佐藤通信', N'広島県八丈島八丈町大京町14丁目15番7号 白金ハイツ861', N'20-3331-9661', N'tsubasasasaki@tanaka.com', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (98, N'合同会社田中通信', N'佐賀県清瀬市筑土八幡町39丁目13番9号 シャルム轟530', N'080-7383-0237', N'saitoharuka@yahoo.com', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (99, N'中村銀行合同会社', N'長野県横浜市緑区前弥六40丁目4番16号 パーク前弥六263', N'070-7428-5218', N'mai15@gmail.com', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (100, N'有限会社松本電気', N'沖縄県神津島村港南26丁目2番5号 シャルム二つ室283', N'52-9296-4312', N'ifujii@yoshida.com', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (101, N'有限会社中島通信', N'大分県品川区南赤田7丁目16番8号', N'070-0917-4948', N'naokishimizu@hotmail.com', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (102, N'有限会社阿部運輸', N'北海道山武郡横芝光町湯本塩原39丁目22番5号', N'080-9921-1414', N'chiyo60@hotmail.com', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (103, N'株式会社村上ガス', N'愛知県文京区平須賀41丁目14番13号', N'070-4331-9238', N'ayamamoto@fujita.jp', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (104, N'合同会社中村通信', N'山口県世田谷区木立20丁目4番15号 クレスト戸島415', N'080-7067-0489', N'ksaito@hotmail.com', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (105, N'株式会社村上食品', N'滋賀県西多摩郡奥多摩町平須賀13丁目16番16号', N'090-8629-7420', N'naoto10@yoshida.jp', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (106, N'有限会社加藤鉱業', N'茨城県長生郡長生村明石町31丁目15番6号 パーク津久戸町659', N'070-1872-1086', N'yoichiyamazaki@gmail.com', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (107, N'佐藤食品合同会社', N'長野県夷隅郡大多喜町松が谷8丁目18番11号', N'070-2015-5733', N'kwatanabe@yahoo.com', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (108, N'佐藤水産株式会社', N'沖縄県山武郡九十九里町猿楽町35丁目4番17号 皇居外苑ハイツ894', N'070-3127-2274', N'khashimoto@sato.jp', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (109, N'株式会社鈴木農林', N'滋賀県山武郡九十九里町平須賀25丁目8番15号 コート月島609', N'93-4585-7745', N'tarosaito@yahoo.com', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (110, N'山崎印刷有限会社', N'宮崎県夷隅郡御宿町西関宿2丁目4番15号 コート柿木沢695', N'080-0767-7503', N'sasakijun@abe.jp', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (111, N'田中電気株式会社', N'鳥取県大島町丸の内1丁目7番20号 クレスト高田馬場841', N'070-1566-6347', N'shimizuhanako@yahoo.com', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (112, N'高橋運輸有限会社', N'鹿児島県横浜市都筑区皇居外苑31丁目18番12号 皇居外苑シティ506', N'74-1353-6095', N'asukasaito@fujita.com', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (113, N'株式会社阿部鉱業', N'長崎県府中市戸塚町28丁目6番10号', N'74-8027-2117', N'manabu60@hotmail.com', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (114, N'中村ガス株式会社', N'長崎県大島町藤金15丁目15番10号', N'080-6160-0150', N'kazuya00@hotmail.com', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (115, N'株式会社斉藤鉱業', N'長崎県印西市豊町2丁目24番18号 湯宮ハイツ191', N'080-1761-1778', N'takahashiyuta@ishikawa.jp', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (116, N'株式会社清水水産', N'徳島県長生郡長生村松浦町25丁目12番17号 パーク吾妻橋439', N'070-2965-4585', N'satonaoto@nakajima.net', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (117, N'株式会社鈴木ガス', N'鳥取県あきる野市山中新田18丁目9番5号 パレス大中531', N'24-5319-3561', N'cinoue@hotmail.com', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (118, N'伊藤水産有限会社', N'福井県小笠原村氏家17丁目2番9号 ハイツ日比谷公園043', N'080-4581-2739', N'swatanabe@mori.org', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (119, N'株式会社小川鉱業', N'千葉県横浜市瀬谷区高輪15丁目19番18号 上吉羽パレス787', N'090-5510-6527', N'afujita@mori.net', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (120, N'加藤電気株式会社', N'大分県北区芝浦29丁目27番7号', N'090-1290-4212', N'yoichiwatanabe@hotmail.com', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (121, N'山本銀行有限会社', N'和歌山県香取市花島39丁目11番9号 花島クレスト980', N'88-3646-0068', N'miki00@sasaki.jp', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (122, N'井上情報有限会社', N'沖縄県西多摩郡奥多摩町上野桜木38丁目6番19号 パレス明石町461', N'080-1297-2757', N'qgoto@sasaki.net', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (123, N'有限会社西村食品', N'山口県稲城市松浦町20丁目5番17号 豊町コーポ530', N'070-7719-8027', N'kenichi45@nishimura.jp', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (124, N'佐藤農林株式会社', N'大分県匝瑳市麹町20丁目19番12号 コーポ中宮祠663', N'070-6476-7626', N'mshimizu@watanabe.com', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (125, N'中村食品有限会社', N'富山県印旛郡印旛村今戸9丁目23番11号 神明内シャルム189', N'52-1524-5116', N'manabu50@gmail.com', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (126, N'山崎鉱業合同会社', N'鳥取県川崎市多摩区中川崎6丁目23番17号', N'090-1061-6772', N'nishimurasotaro@shimizu.jp', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (127, N'有限会社鈴木通信', N'神奈川県横浜市戸塚区皇居外苑26丁目6番17号', N'45-2642-2138', N'qendo@gmail.com', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (128, N'山口保険有限会社', N'宮城県いすみ市四番町12丁目16番8号 天神島ハイツ761', N'090-3152-3398', N'lishii@hotmail.com', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (129, N'青木運輸有限会社', N'青森県清瀬市柿木沢18丁目7番17号 無栗屋クレスト210', N'88-8998-6659', N'minorunakagawa@gmail.com', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (130, N'合同会社佐々木鉱業', N'山形県小平市所野9丁目25番4号', N'070-5431-0325', N'yosuke36@hotmail.com', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (131, N'合同会社石川通信', N'奈良県神津島村手岡27丁目5番7号', N'070-9254-4758', N'rnakamura@hotmail.com', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (132, N'吉田情報有限会社', N'熊本県文京区高輪18丁目23番1号 下宇和田シャルム662', N'080-7329-3148', N'maayasasaki@sasaki.net', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (133, N'藤原農林株式会社', N'岩手県西多摩郡檜原村前弥六南町7丁目19番5号 コーポ幸手511', N'72-5983-9399', N'shohei26@gmail.com', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (134, N'合同会社高橋銀行', N'福井県横浜市神奈川区東神田11丁目15番11号 吾妻橋ハイツ600', N'080-5635-6915', N'tsaito@ito.com', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (135, N'中村農林合同会社', N'和歌山県八千代市氏家10丁目24番18号 平河町シャルム647', N'090-0607-1245', N'asukaogawa@gmail.com', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (136, N'青木電気株式会社', N'千葉県川崎市高津区氏家6丁目14番17号 浅草コート652', N'090-9211-3137', N'ogawayasuhiro@nakamura.jp', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (137, N'吉田情報合同会社', N'長野県横浜市旭区秋葉原28丁目8番16号', N'070-8965-3954', N'momokoyamashita@tanaka.com', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (138, N'石川鉱業有限会社', N'鹿児島県清瀬市卯の里26丁目1番3号 柿木沢新田シティ119', N'080-8135-7891', N'yokosaito@saito.jp', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (139, N'田中水産有限会社', N'青森県稲城市中三依39丁目7番6号', N'38-4991-2580', N'kumiko39@yahoo.com', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (140, N'合同会社加藤農林', N'福井県横浜市保土ケ谷区丸の内ＪＰタワー7丁目10番19号 四区町パーク096', N'070-6369-7402', N'yamazakiakira@hotmail.com', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (141, N'株式会社高橋電気', N'千葉県新島村神明内42丁目18番4号 パレス長畑642', N'05-6838-5930', N'oyamaguchi@gmail.com', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (142, N'有限会社山田鉱業', N'東京都山武郡芝山町中小来川13丁目4番10号 パーク一ツ橋229', N'40-6197-2636', N'sayurishimizu@hotmail.com', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (143, N'西村運輸合同会社', N'新潟県山武郡芝山町花川戸26丁目16番8号 ハイツ竜泉224', N'070-5129-8928', N'akira52@gmail.com', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (144, N'合同会社吉田通信', N'大阪府横浜市港南区日光16丁目19番9号 上高野パーク475', N'090-0415-4353', N'takumaikeda@suzuki.org', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (145, N'有限会社青木水産', N'熊本県富津市三ノ輪28丁目22番4号 クレスト木立118', N'85-2214-4274', N'kyosukesasaki@tanaka.jp', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (146, N'福田農林株式会社', N'佐賀県墨田区日本堤9丁目3番15号 台場シャルム947', N'080-4061-7921', N'oito@suzuki.org', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (147, N'合同会社佐藤銀行', N'広島県目黒区千塚16丁目6番4号 睦コート457', N'080-6299-2520', N'shoheiyamaguchi@hotmail.com', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (148, N'株式会社石川情報', N'大分県八王子市東上野40丁目23番16号', N'090-5913-0648', N'chiyoaoki@yahoo.com', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (149, N'有限会社小川水産', N'福島県板橋区脚折22丁目9番15号 パレス丸の内355', N'090-6306-9846', N'yamamotoryosuke@takahashi.com', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (150, N'合同会社藤井食品', N'長崎県品川区長間37丁目3番8号', N'54-0174-6327', N'akiratakahashi@nakagawa.com', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (151, N'有限会社藤田運輸', N'新潟県武蔵野市平須賀20丁目19番12号', N'090-7980-3233', N'shoheisato@inoue.jp', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (152, N'阿部電気株式会社', N'福岡県八丈島八丈町松が谷41丁目11番17号 アーバン山中新田846', N'070-7993-6484', N'satomi48@watanabe.jp', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (153, N'合同会社長谷川印刷', N'秋田県大島町戸塚町22丁目24番1号 ハイツ一ツ橋839', N'070-0047-1807', N'kaori44@tanaka.jp', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (154, N'青木食品有限会社', N'香川県小笠原村藤金7丁目11番3号', N'080-6745-4932', N'gwatanabe@gmail.com', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (155, N'合同会社佐藤食品', N'静岡県品川区西川25丁目22番11号 大中クレスト088', N'090-5495-1507', N'nanami44@sasaki.jp', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (156, N'株式会社中村建設', N'長崎県浦安市芝浦29丁目26番13号', N'070-5007-4327', N'qkimura@suzuki.com', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (157, N'有限会社吉田運輸', N'山梨県横浜市西区東大和町22丁目16番19号 パーク松石308', N'080-7806-5083', N'atsushihasegawa@matsumoto.jp', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (158, N'合同会社伊藤ガス', N'島根県荒川区柿木沢29丁目9番6号 パレス勝どき543', N'00-1295-9200', N'kenichitakahashi@inoue.jp', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (159, N'佐藤食品有限会社', N'青森県長生郡睦沢町手岡24丁目25番12号 パーク前弥六516', N'080-5942-3829', N'yamamotochiyo@inoue.com', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (160, N'有限会社渡辺食品', N'千葉県渋谷区高田馬場24丁目4番11号 四区町クレスト571', N'090-5452-6332', N'labe@hotmail.com', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (161, N'株式会社小林水産', N'大阪府横浜市都筑区松浦町4丁目13番10号 木立シティ936', N'79-6660-4225', N'ytakahashi@ito.com', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (162, N'佐藤ガス有限会社', N'愛知県青梅市神明内20丁目19番1号 千束コーポ350', N'090-9630-3962', N'yokotakahashi@yahoo.com', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (163, N'小林運輸有限会社', N'鹿児島県横浜市西区湯宮2丁目24番20号 シティ箪笥町424', N'46-9373-2770', N'kanayamamoto@yahoo.com', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (164, N'有限会社渡辺鉱業', N'長野県山武市氏家新田23丁目7番19号', N'080-0124-9442', N'satomi51@kato.jp', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (165, N'近藤情報合同会社', N'青森県台東区箪笥町39丁目16番11号', N'080-1661-9485', N'satoyasuhiro@hasegawa.com', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (166, N'岡田情報合同会社', N'京都府町田市無栗屋7丁目20番18号 アーバン下宇和田862', N'070-1053-6916', N'kenichi12@watanabe.com', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (167, N'有限会社吉田建設', N'広島県夷隅郡大多喜町高田馬場14丁目17番4号', N'090-5483-7939', N'watanabeharuka@suzuki.com', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (168, N'有限会社中村通信', N'福島県長生郡睦沢町皇居外苑37丁目3番4号 白金シャルム532', N'080-2090-7788', N'nendo@shimizu.com', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (169, N'田中食品株式会社', N'奈良県香取郡東庄町上野桜木17丁目26番16号 鍛冶ケ沢シャルム939', N'56-4622-9871', N'mai94@sato.jp', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (170, N'有限会社伊藤通信', N'青森県品川区土呂部28丁目24番1号 土沢パレス694', N'50-8616-4050', N'haruka19@ikeda.com', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (171, N'合同会社前田水産', N'愛媛県国分寺市虎ノ門虎ノ門ヒルズ森タワー18丁目4番4号', N'080-1283-3794', N'kazuyamatsumoto@yahoo.com', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (172, N'株式会社高橋銀行', N'和歌山県袖ケ浦市西関宿15丁目25番4号 コーポ戸塚町649', N'080-8086-2792', N'yasuhiro97@mori.jp', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (173, N'藤田情報株式会社', N'長野県横浜市港南区三ノ輪33丁目8番11号', N'090-3864-4655', N'yamamototakuma@suzuki.jp', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (174, N'有限会社田中保険', N'富山県夷隅郡大多喜町東上野24丁目13番3号 上野桜木シャルム218', N'090-4066-3092', N'byoshida@okada.jp', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (175, N'有限会社西村運輸', N'愛媛県我孫子市前弥六3丁目5番20号 コート戸島562', N'090-7314-2933', N'sakamotoatsushi@yoshida.org', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (176, N'有限会社山田通信', N'埼玉県君津市卯の里42丁目1番17号 シティ六番町507', N'080-4606-7723', N'matsumotohanako@fujita.jp', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (177, N'渡辺銀行合同会社', N'岐阜県川崎市多摩区脚折6丁目23番20号', N'080-1707-5462', N'taichiyoshida@yamashita.net', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (178, N'斎藤情報合同会社', N'宮城県長生郡一宮町独鈷沢37丁目25番12号', N'090-7944-8552', N'umatsumoto@suzuki.com', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (179, N'有限会社加藤情報', N'沖縄県江東区六番町17丁目17番1号 東上野ハイツ196', N'11-7262-6805', N'hiroshi21@hotmail.com', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (180, N'井上印刷合同会社', N'徳島県あきる野市中鉢石町15丁目15番17号', N'28-8034-8340', N'yasuhiro20@gmail.com', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (181, N'村上ガス有限会社', N'岩手県北区戸塚町36丁目23番1号', N'080-1563-4685', N'nakamuramaaya@sato.jp', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (182, N'渡辺建設合同会社', N'富山県日野市中小来川32丁目26番8号 アーバン脚折273', N'070-1366-6029', N'haruka09@gmail.com', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (183, N'佐々木農林合同会社', N'宮崎県墨田区前弥六30丁目12番8号 パレス南赤田734', N'090-1019-6373', N'kyamaguchi@gmail.com', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (184, N'合同会社山田電気', N'宮崎県港区押上6丁目19番20号 パーク浅草橋760', N'080-4484-6907', N'dyamamoto@ikeda.jp', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (185, N'清水運輸有限会社', N'大阪府葛飾区六番町29丁目21番5号', N'51-4939-2841', N'endochiyo@ishikawa.jp', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (186, N'渡辺水産合同会社', N'愛知県千代田区戸塚町4丁目23番2号 中鉢石町アーバン106', N'93-1402-7901', N'sotaro72@sakamoto.net', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (187, N'合同会社伊藤情報', N'青森県四街道市秋葉原32丁目11番5号 ハイツ日光036', N'090-0741-8215', N'kumikomori@hotmail.com', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (188, N'合同会社山口食品', N'富山県印旛郡印旛村柿木沢新田23丁目3番4号 クレスト大京町848', N'080-1561-2068', N'maaya95@ito.com', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (189, N'株式会社佐藤保険', N'茨城県東久留米市前弥六南町19丁目9番15号 西川ハイツ344', N'070-2815-5450', N'zyamamoto@kobayashi.com', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (190, N'有限会社中村建設', N'兵庫県墨田区三ノ輪5丁目6番6号', N'080-8148-6053', N'reiyamaguchi@yahoo.com', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (191, N'有限会社松田通信', N'静岡県大島町独鈷沢28丁目25番4号 外神田シティ532', N'090-6684-3316', N'takumasato@okada.jp', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (192, N'株式会社後藤情報', N'岩手県品川区渡辺11丁目12番15号 シティ平河町456', N'080-7272-6855', N'fukudamiki@takahashi.jp', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (193, N'森農林合同会社', N'三重県東大和市中三依7丁目23番15号 千塚パレス713', N'070-3393-5504', N'nakamurakazuya@yahoo.com', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (194, N'有限会社鈴木運輸', N'徳島県横浜市栄区横林30丁目16番18号 外神田パレス017', N'03-8016-1627', N'isato@gmail.com', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (195, N'株式会社林ガス', N'奈良県香取郡多古町手岡33丁目25番2号', N'76-4759-9812', N'esasaki@watanabe.net', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (196, N'株式会社石川銀行', N'滋賀県立川市戸島39丁目19番1号 三ノ輪アーバン324', N'080-6914-6319', N'ztakahashi@hotmail.com', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (197, N'岡田ガス株式会社', N'兵庫県江東区京橋26丁目12番14号 細野パレス753', N'070-5066-3963', N'shota03@hotmail.com', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (198, N'鈴木食品株式会社', N'埼玉県長生郡睦沢町戸塚町41丁目11番10号', N'080-3870-2791', N'ryohei43@yamaguchi.com', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (199, N'山本鉱業有限会社', N'鹿児島県安房郡鋸南町四番町29丁目16番14号 押上シャルム466', N'05-7505-7571', N'haruka49@yoshida.jp', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (200, N'中川印刷合同会社', N'長崎県杉並区吾妻橋3丁目13番18号 四番町パレス097', N'30-4883-9831', N'inouenaoto@yahoo.com', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (201, N'佐藤運輸合同会社', N'岡山県国立市所野39丁目21番20号', N'47-4983-4233', N'naokinakagawa@yahoo.com', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (202, N'田中通信合同会社', N'群馬県袖ケ浦市芝公園13丁目25番7号 幸手シティ749', N'070-1430-0517', N'asuka64@gmail.com', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (203, N'松本通信株式会社', N'岐阜県渋谷区月島8丁目18番5号 シャルム芝公園482', N'080-1214-0385', N'yui18@hotmail.com', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (204, N'佐藤建設合同会社', N'青森県杉並区箪笥町38丁目18番18号 長間ハイツ568', N'090-3772-9948', N'shohei05@yahoo.com', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (205, N'高橋食品株式会社', N'奈良県香取郡神崎町台東42丁目10番17号', N'080-2913-8270', N'yumiko56@nakamura.com', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (206, N'小川ガス合同会社', N'愛媛県青梅市前弥六37丁目20番19号 シャルム皇居外苑587', N'070-8419-5092', N'minoruhasegawa@gmail.com', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (207, N'村上運輸合同会社', N'北海道目黒区平河町37丁目15番7号 シャルム大京町667', N'080-2703-0702', N'kanatanaka@nakajima.com', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (208, N'田中水産株式会社', N'埼玉県香取市高田馬場22丁目17番8号 池之端パレス138', N'070-1819-1024', N'manabuokamoto@yahoo.com', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (209, N'有限会社渡辺鉱業', N'佐賀県武蔵野市卯の里22丁目22番7号 アーバン山中新田760', N'080-9041-0602', N'kyosuke30@kimura.jp', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (210, N'森建設有限会社', N'大分県八街市六番町32丁目14番11号 パレス土呂部997', N'37-8043-0358', N'otayuta@hotmail.com', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (211, N'株式会社福田建設', N'青森県清瀬市南郷屋4丁目3番8号 六番町ハイツ432', N'77-3918-8215', N'hashimotomiki@nakajima.org', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (212, N'株式会社太田運輸', N'佐賀県山武郡九十九里町猿楽町17丁目26番2号', N'070-2874-2113', N'junyamada@sasaki.jp', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (213, N'有限会社吉田鉱業', N'大阪府多摩市山中新田38丁目23番5号', N'58-8335-3970', N'usato@gmail.com', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (214, N'近藤水産有限会社', N'秋田県小平市高輪20丁目19番18号 押上アーバン713', N'49-4409-5410', N'dsaito@takahashi.com', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (215, N'山本農林株式会社', N'新潟県横浜市中区土呂部41丁目11番11号', N'08-9764-9035', N'taichi63@yahoo.com', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (216, N'株式会社渡辺保険', N'山口県山武郡芝山町九段南10丁目20番1号 シティ平須賀009', N'080-7923-9546', N'qito@sato.jp', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (217, N'松田保険合同会社', N'新潟県西多摩郡檜原村麹町22丁目17番10号 五味ヶ谷シティ116', N'080-2345-8779', N'yokoinoue@yahoo.com', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (218, N'合同会社伊藤ガス', N'愛媛県御蔵島村南郷屋2丁目2番3号 天神島コート581', N'070-7477-0488', N'nanami72@hotmail.com', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (219, N'合同会社佐藤通信', N'富山県川崎市宮前区千塚3丁目10番4号', N'56-5296-7262', N'kobayashimaaya@yamada.jp', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (220, N'斎藤銀行合同会社', N'岩手県川崎市多摩区上吉羽34丁目10番9号 戸島ハイツ187', N'090-2481-0335', N'minoru34@tanaka.com', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (221, N'渡辺電気有限会社', N'佐賀県四街道市丹勢38丁目27番5号', N'080-8082-9942', N'pota@sasaki.org', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (222, N'合同会社山下運輸', N'茨城県横浜市西区幸手15丁目5番5号 脚折コート474', N'080-5327-7283', N'nwatanabe@yahoo.com', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (223, N'山田鉱業合同会社', N'滋賀県練馬区虎ノ門14丁目20番2号 平須賀コート790', N'99-2009-4210', N'atsushi46@gmail.com', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (224, N'加藤印刷株式会社', N'富山県印旛郡本埜村戸山25丁目11番15号 コート横林479', N'070-2483-8569', N'saitoasuka@gmail.com', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (225, N'株式会社高橋食品', N'栃木県横浜市西区中川崎11丁目12番11号 西浅草アーバン908', N'080-8752-6773', N'ohashimoto@gmail.com', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (226, N'小川通信合同会社', N'岐阜県白井市松浦町10丁目21番8号 台東コート072', N'20-3239-0557', N'satomi55@gmail.com', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (227, N'山崎農林合同会社', N'福岡県武蔵村山市西神田38丁目12番14号 松浦町ハイツ289', N'090-3018-1466', N'akemi03@yahoo.com', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (228, N'加藤印刷株式会社', N'秋田県富津市外神田37丁目27番5号', N'070-4949-3858', N'junshimizu@saito.com', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (229, N'有限会社中島銀行', N'滋賀県横浜市港北区東神田22丁目10番14号 パーク上高野625', N'070-2382-7490', N'pmatsumoto@hotmail.com', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (230, N'鈴木通信株式会社', N'佐賀県豊島区東神田36丁目8番2号 土沢クレスト233', N'98-2203-1903', N'abetakuma@ito.net', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (231, N'加藤電気株式会社', N'愛媛県白井市外神田42丁目26番13号 箭坪コート010', N'090-4021-5542', N'pmaeda@hotmail.com', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (232, N'株式会社高橋鉱業', N'愛媛県川崎市宮前区東浅草30丁目18番17号 押上パレス072', N'080-5901-8842', N'ryosuke16@hotmail.com', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (233, N'合同会社渡辺情報', N'長野県豊島区西神田32丁目23番10号 パレス所野210', N'080-4318-3384', N'rei79@hotmail.com', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (234, N'田中運輸株式会社', N'神奈川県品川区卯の里20丁目26番7号 パレス戸塚町853', N'080-4120-5021', N'yamashitashota@takahashi.org', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (235, N'有限会社鈴木通信', N'高知県青梅市東和町15丁目6番1号 シャルム松石992', N'51-2182-7209', N'tsubasa14@watanabe.jp', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (236, N'有限会社斉藤通信', N'兵庫県横浜市泉区浅草橋20丁目15番8号 コート高田馬場663', N'070-5930-8106', N'mikitanaka@yahoo.com', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (237, N'株式会社遠藤ガス', N'長野県長生郡長南町芝大門39丁目9番13号 渡辺コーポ120', N'090-9587-6360', N'qmatsuda@yahoo.com', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (238, N'木村通信合同会社', N'佐賀県印旛郡栄町鶴ヶ丘11丁目21番18号', N'42-9146-4690', N'kanaishii@gmail.com', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (239, N'合同会社森食品', N'大阪府神津島村勝どき25丁目12番20号', N'35-0019-8616', N'minorunakamura@hotmail.com', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (240, N'小林印刷有限会社', N'石川県台東区五味ヶ谷41丁目10番5号', N'96-3913-4724', N'kazuya03@kobayashi.com', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (241, N'山崎食品株式会社', N'神奈川県長生郡一宮町日比谷公園6丁目4番9号 千束シャルム659', N'080-1126-4189', N'mikifukuda@yahoo.com', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (242, N'有限会社渡辺食品', N'千葉県長生郡長柄町下吉羽7丁目10番13号 台場パーク118', N'080-2739-5402', N'ryohei49@yamamoto.jp', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (243, N'合同会社三浦通信', N'埼玉県鎌ケ谷市富久町29丁目4番14号 上野桜木ハイツ763', N'090-2977-1568', N'uyamada@hotmail.com', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (244, N'鈴木農林株式会社', N'宮崎県北区富久町5丁目19番15号', N'070-8226-8525', N'akemikato@suzuki.com', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (245, N'鈴木銀行株式会社', N'岩手県横浜市旭区睦20丁目10番9号 大中アーバン780', N'090-6914-5886', N'kenichi73@yahoo.com', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (246, N'佐藤保険株式会社', N'青森県文京区箪笥町10丁目10番2号', N'070-1474-2645', N'zyoshida@hotmail.com', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (247, N'木村ガス有限会社', N'鹿児島県東久留米市押上30丁目10番5号', N'070-9224-4415', N'tanakakyosuke@kimura.jp', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (248, N'有限会社斎藤ガス', N'茨城県印旛郡本埜村平須賀13丁目8番20号 外神田コーポ003', N'070-0714-3856', N'mikiyamaguchi@ikeda.com', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (249, N'小林水産合同会社', N'福岡県北区台東10丁目14番20号 コート橋場292', N'090-9296-5966', N'yoichikato@yahoo.com', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (250, N'合同会社山田水産', N'大分県国立市上野桜木34丁目2番11号 パーク東神田949', N'070-0142-4311', N'yamamotonaoto@suzuki.com', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (251, N'合同会社高橋建設', N'兵庫県山武市四番町5丁目7番8号', N'91-8387-2795', N'shotayamamoto@saito.com', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (252, N'伊藤ガス合同会社', N'滋賀県富津市丹勢33丁目8番18号', N'090-0218-1326', N'kyosukekato@gmail.com', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (253, N'合同会社伊藤通信', N'長野県江東区氏家18丁目10番13号 北青山アーバン362', N'43-2055-9043', N'harukaota@hotmail.com', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (254, N'合同会社近藤印刷', N'兵庫県長生郡一宮町三筋9丁目25番6号 北上野コート090', N'20-3963-7068', N'rei05@sasaki.com', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (255, N'高橋銀行株式会社', N'福岡県川崎市宮前区六番町30丁目11番2号 ハイツ上吉羽164', N'080-1535-7868', N'yoichihasegawa@sasaki.com', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (256, N'田中建設株式会社', N'高知県府中市卯の里6丁目16番20号 白金シティ001', N'070-7911-3654', N'vmatsumoto@okada.jp', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (257, N'合同会社青木保険', N'青森県長生郡長南町日光3丁目13番12号 中宮祠シャルム232', N'080-4772-3421', N'kenichiwatanabe@yamada.com', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (258, N'株式会社中村建設', N'青森県長生郡白子町柿木沢新田37丁目2番15号', N'090-5916-4565', N'mituru38@yahoo.com', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (259, N'近藤建設株式会社', N'福井県横浜市港南区明石町11丁目20番19号', N'46-3028-4264', N'ishikawayuki@gmail.com', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (260, N'池田情報合同会社', N'鹿児島県川崎市幸区外国府間33丁目8番9号 所野コート583', N'090-5365-8655', N'oyamamoto@hotmail.com', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (261, N'有限会社近藤印刷', N'群馬県横浜市栄区元浅草32丁目18番3号 平須賀アーバン145', N'070-5802-5719', N'qabe@sato.jp', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (262, N'遠藤水産合同会社', N'北海道川崎市多摩区芝大門16丁目15番16号 クレスト山中新田033', N'11-4152-6113', N'rikatanaka@tanaka.jp', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (263, N'合同会社伊藤保険', N'福井県小笠原村上吉羽33丁目7番9号 ハイツ下宇和田319', N'090-0942-3087', N'yoichinakajima@hotmail.com', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (264, N'前田情報合同会社', N'島根県八街市幸手32丁目12番16号', N'42-0740-1905', N'khasegawa@hotmail.com', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (265, N'後藤建設合同会社', N'三重県世田谷区細野23丁目17番20号', N'090-2521-5145', N'ishiichiyo@gmail.com', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (266, N'山口食品有限会社', N'香川県四街道市無栗屋13丁目16番3号', N'090-3472-6388', N'asukahashimoto@yahoo.com', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (267, N'井上印刷合同会社', N'大分県三鷹市土呂部14丁目6番3号 パーク港南698', N'09-5224-2927', N'nanami93@matsumoto.jp', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (268, N'高橋情報合同会社', N'広島県南房総市白金台25丁目10番11号 戸山パーク712', N'77-2321-5298', N'jito@kato.com', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (269, N'合同会社松本食品', N'福島県横浜市神奈川区土沢32丁目9番14号 パレス花島087', N'98-5768-4901', N'takumaito@yamazaki.jp', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (270, N'合同会社加藤建設', N'山形県鴨川市京橋1丁目6番10号 シティ上野桜木259', N'070-4266-7759', N'yukisakamoto@shimizu.com', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (271, N'中島印刷有限会社', N'山口県横浜市南区虎ノ門10丁目15番3号 クレスト芝公園087', N'080-4004-9009', N'yuta51@yamaguchi.org', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (272, N'株式会社佐藤農林', N'静岡県横浜市緑区二つ室38丁目24番9号 コーポ丸の内ＪＰタワー906', N'090-6667-1807', N'kobayashiasuka@yahoo.com', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (273, N'青木農林合同会社', N'北海道印旛郡栄町虎ノ門虎ノ門ヒルズ森タワー42丁目27番13号 パーク土呂部925', N'080-7497-5415', N'dsato@goto.org', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (274, N'田中印刷株式会社', N'広島県匝瑳市権現堂25丁目10番6号 パレス高田馬場972', N'43-8459-5699', N'kobayashitsubasa@gmail.com', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (275, N'有限会社阿部銀行', N'岡山県長生郡一宮町西関宿32丁目25番16号 西関宿ハイツ245', N'080-0998-6267', N'rei54@kondo.jp', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (276, N'有限会社山田食品', N'青森県豊島区藤金39丁目27番15号', N'65-5925-4972', N'kenichi72@watanabe.com', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (277, N'福田銀行有限会社', N'岩手県小金井市柿木沢新田27丁目21番7号 クレスト手岡055', N'070-3186-0694', N'sayurisuzuki@ogawa.net', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (278, N'合同会社前田情報', N'長崎県印旛郡印旛村戸塚町41丁目1番9号 花島ハイツ744', N'090-0609-0390', N'tanakakaori@yamazaki.jp', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (279, N'鈴木運輸株式会社', N'山形県東久留米市押上12丁目18番8号 蔵前コート698', N'080-8548-6719', N'wendo@ogawa.com', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (280, N'有限会社田中農林', N'愛知県府中市土呂部22丁目18番8号', N'080-5110-1576', N'onakamura@gmail.com', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (281, N'有限会社鈴木印刷', N'大阪府台東区土呂部29丁目14番20号', N'080-5773-5990', N'itokenichi@saito.jp', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (282, N'伊藤保険合同会社', N'福岡県あきる野市美原町1丁目16番2号 所野コーポ723', N'20-3280-3128', N'yoichigoto@miura.jp', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (283, N'合同会社山田電気', N'青森県青ヶ島村富久町12丁目16番7号 蟇沼アーバン056', N'070-6269-8642', N'haruka81@yahoo.com', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (284, N'有限会社西村水産', N'鳥取県安房郡鋸南町芝大門37丁目15番16号 パーク雷門053', N'080-4466-4420', N'nanamisasaki@kimura.jp', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (285, N'佐藤運輸合同会社', N'岩手県鴨川市南赤田15丁目19番3号 竜泉アーバン694', N'080-3499-7442', N'sayuriyamashita@gmail.com', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (286, N'合同会社佐藤保険', N'福井県国立市勝どき15丁目9番8号', N'070-8917-4830', N'jyoshida@yahoo.com', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (287, N'橋本保険合同会社', N'福井県町田市羽折町22丁目19番10号 丹勢パレス165', N'75-8220-6931', N'manabuwatanabe@hayashi.org', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (288, N'有限会社佐藤鉱業', N'高知県江東区日比谷公園37丁目7番16号', N'070-7436-6060', N'yamadatsubasa@hotmail.com', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (289, N'松田鉱業有限会社', N'沖縄県足立区高田馬場33丁目2番5号 コーポ神明内101', N'070-0851-5037', N'rikanakajima@yamamoto.com', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (290, N'有限会社山崎保険', N'愛知県東久留米市西小来川4丁目27番15号', N'090-8600-8028', N'asukamori@inoue.net', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (291, N'株式会社吉田鉱業', N'埼玉県練馬区戸島31丁目4番11号', N'97-9331-4676', N'miki49@watanabe.net', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (292, N'株式会社山田農林', N'岐阜県横浜市栄区東大和町32丁目1番12号 浅草シャルム494', N'080-2984-4811', N'ematsumoto@yahoo.com', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (293, N'石井電気有限会社', N'大阪府杉並区大京町17丁目26番4号 四区町コート052', N'84-0500-0353', N'osamuito@hayashi.com', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (294, N'井上食品有限会社', N'宮崎県川崎市幸区台東10丁目14番20号', N'070-5297-5004', N'mikikato@sasaki.jp', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (295, N'株式会社小林通信', N'山口県荒川区東上野19丁目14番9号 脚折町シャルム004', N'86-3069-8057', N'kumiko59@shimizu.com', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (296, N'有限会社藤井ガス', N'福井県夷隅郡御宿町前弥六2丁目9番3号 ハイツ戸島327', N'15-0121-1676', N'asuka08@fujita.net', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (297, N'中村通信合同会社', N'埼玉県世田谷区西浅草38丁目10番9号', N'070-6851-4539', N'kenichi07@hotmail.com', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (298, N'株式会社鈴木運輸', N'大分県匝瑳市花島28丁目2番9号 美原町シティ853', N'080-7186-1828', N'utanaka@nakajima.com', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (299, N'合同会社山下電気', N'岩手県香取郡多古町蟇沼32丁目6番8号 池之端シャルム614', N'080-9631-1163', N'suzukikana@gmail.com', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (300, N'有限会社遠藤鉱業', N'栃木県西多摩郡日の出町二つ室29丁目12番7号', N'080-4165-4598', N'takumanishimura@kato.com', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (301, N'合同会社伊藤食品', N'兵庫県夷隅郡御宿町虎ノ門4丁目26番2号 シティ白金061', N'070-1904-0068', N'fsuzuki@kimura.jp', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (302, N'株式会社伊藤保険', N'秋田県富里市下吉羽42丁目26番7号', N'58-5590-6669', N'jfukuda@gmail.com', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (303, N'株式会社加藤鉱業', N'島根県青ヶ島村太田ヶ谷42丁目18番18号 パレス大京町306', N'090-2135-6552', N'yasuhirosuzuki@fujita.net', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (304, N'佐藤鉱業合同会社', N'三重県新宿区橋場22丁目19番14号 戸山コーポ135', N'090-3058-1549', N'nakagawahideki@takahashi.org', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (305, N'近藤情報株式会社', N'栃木県川崎市中原区百村5丁目18番8号 パレス油井112', N'080-5248-7438', N'tsubasa53@kobayashi.jp', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (306, N'太田通信株式会社', N'新潟県千代田区九段南9丁目8番11号 四区町コート175', N'070-3420-4001', N'maaya56@yahoo.com', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (307, N'合同会社森銀行', N'長崎県匝瑳市大京町29丁目12番10号 シャルム南郷屋616', N'070-4742-6929', N'juntakahashi@gmail.com', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (308, N'株式会社小林保険', N'和歌山県立川市西浅草39丁目2番11号 脚折クレスト879', N'070-4603-1348', N'okamotokenichi@hayashi.net', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (309, N'有限会社森通信', N'熊本県西多摩郡奥多摩町港南8丁目15番3号 東和町クレスト573', N'080-4532-2737', N'mituruwatanabe@sato.org', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (310, N'合同会社吉田情報', N'兵庫県川崎市幸区中川崎29丁目21番18号', N'070-5164-9917', N'kenichitanaka@gmail.com', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (311, N'高橋通信有限会社', N'大分県印旛郡印旛村一ツ橋20丁目17番4号', N'080-5622-0543', N'ryohei08@watanabe.com', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (312, N'株式会社田中通信', N'青森県山武市浅草26丁目15番17号 池之端パーク714', N'070-6311-5166', N'minorumatsuda@yahoo.com', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (313, N'有限会社山口食品', N'香川県利島村手岡9丁目2番6号 五味ヶ谷パーク946', N'080-3575-2042', N'rikaishikawa@hotmail.com', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (314, N'藤井農林有限会社', N'奈良県杉並区虎ノ門虎ノ門ヒルズ森タワー6丁目27番1号 下宇和田クレスト392', N'080-6236-9802', N'saitojun@watanabe.org', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (315, N'田中農林株式会社', N'神奈川県調布市松が谷2丁目22番11号 三筋ハイツ398', N'070-7778-9979', N'yokogoto@gmail.com', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (316, N'合同会社山崎水産', N'兵庫県狛江市虎ノ門31丁目7番1号', N'090-0693-7919', N'nanami62@hashimoto.net', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (317, N'合同会社中島電気', N'新潟県西多摩郡檜原村北青山4丁目22番5号 シティ浅草橋164', N'070-4326-9253', N'yoichi60@ito.jp', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (318, N'有限会社村上情報', N'鹿児島県町田市南赤田31丁目17番12号', N'02-8273-7264', N'mtakahashi@okamoto.jp', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (319, N'株式会社小林農林', N'大阪府八丈島八丈町台東20丁目21番10号', N'070-1766-3251', N'mikako35@suzuki.com', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (320, N'合同会社加藤食品', N'秋田県青ヶ島村箪笥町39丁目3番13号', N'070-9113-1699', N'tyamamoto@kobayashi.com', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (321, N'松本印刷有限会社', N'宮城県川崎市高津区花島1丁目10番10号 アーバン押上381', N'080-3761-0822', N'yasuhiroinoue@inoue.net', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (322, N'藤原保険有限会社', N'新潟県袖ケ浦市皇居外苑9丁目25番20号', N'070-6448-8489', N'jyamashita@yahoo.com', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (323, N'森銀行合同会社', N'愛媛県横浜市磯子区松浦町31丁目3番5号', N'090-5164-6248', N'matsumotokana@gmail.com', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (324, N'田中電気合同会社', N'岩手県横浜市青葉区幸手19丁目19番9号 ハイツ浅草941', N'090-0226-5501', N'miki56@sato.com', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (325, N'阿部通信有限会社', N'和歌山県南房総市秋葉原9丁目24番15号', N'78-4736-5076', N'rika53@suzuki.com', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (326, N'佐藤保険合同会社', N'大分県台東区太田ヶ谷22丁目27番16号 美原町パレス546', N'080-6391-9149', N'thasegawa@murakami.jp', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (327, N'有限会社小林通信', N'茨城県横浜市中区箪笥町22丁目9番11号 ハイツ押上331', N'20-9250-4321', N'kshimizu@hotmail.com', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (328, N'佐藤印刷株式会社', N'大阪府八王子市芝浦37丁目12番9号', N'070-3438-0870', N'suzukiharuka@kobayashi.jp', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (329, N'有限会社高橋情報', N'和歌山県香取郡神崎町月島30丁目6番3号 シャルム轟691', N'070-7911-9272', N'satoyuta@nakamura.jp', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (330, N'佐々木農林株式会社', N'茨城県横浜市旭区押上30丁目1番16号', N'82-9026-1188', N'naokosato@mori.com', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (331, N'合同会社斎藤建設', N'茨城県港区山中新田21丁目8番19号 中三依コート192', N'090-7282-7520', N'yuki53@watanabe.jp', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (332, N'山崎印刷合同会社', N'沖縄県羽村市上野桜木19丁目26番5号', N'090-3074-7015', N'yasuhirotanaka@goto.com', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (333, N'有限会社近藤食品', N'徳島県横浜市戸塚区湯宮37丁目24番15号', N'66-3811-6547', N'enakamura@yahoo.com', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (334, N'株式会社鈴木印刷', N'宮城県横浜市泉区外神田20丁目11番16号 ハイツ山中新田916', N'080-0434-1664', N'itosayuri@sato.org', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (335, N'株式会社田中食品', N'山形県横浜市港南区神明内30丁目3番1号', N'25-6657-2990', N'pito@suzuki.org', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (336, N'合同会社山本ガス', N'滋賀県西多摩郡奥多摩町上高野25丁目8番4号 シティ西小来川554', N'080-2903-1403', N'ofujiwara@kimura.jp', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (337, N'有限会社林農林', N'滋賀県多摩市上野公園39丁目2番4号 コーポ上野桜木436', N'090-2117-0422', N'tomoyahashimoto@yahoo.com', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (338, N'株式会社高橋印刷', N'福岡県南房総市所野25丁目1番14号 クレスト平須賀888', N'070-3515-0386', N'yamaguchinanami@yamamoto.jp', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (339, N'合同会社西村情報', N'大阪府横浜市南区南赤田23丁目27番7号 台東コーポ138', N'080-8497-3267', N'hideki61@shimizu.jp', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (340, N'斎藤農林株式会社', N'山梨県横浜市神奈川区神明内29丁目26番19号 アーバン権現堂393', N'080-4648-8349', N'maayamatsuda@hotmail.com', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (341, N'伊藤運輸有限会社', N'佐賀県川崎市中原区北上野26丁目6番15号', N'070-0733-9836', N'akemifukuda@okada.jp', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (342, N'松本農林株式会社', N'富山県横浜市神奈川区百村13丁目17番15号 山中新田クレスト988', N'070-5042-9185', N'lkimura@yahoo.com', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (343, N'株式会社三浦印刷', N'神奈川県横浜市神奈川区土沢7丁目27番17号 シティ東浅草956', N'54-6716-8433', N'harukakobayashi@yamazaki.jp', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (344, N'青木食品株式会社', N'岐阜県江東区長間23丁目1番5号 下吉羽ハイツ623', N'070-6954-9526', N'rikaendo@sato.com', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (345, N'合同会社小川銀行', N'静岡県横浜市都筑区六番町28丁目18番12号 東神田アーバン442', N'070-3547-2218', N'yasuhirokato@sato.org', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (346, N'鈴木建設合同会社', N'京都府東大和市山中新田34丁目26番10号 北青山シティ459', N'070-6049-7632', N'yumikoogawa@takahashi.org', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (347, N'中島建設有限会社', N'神奈川県横浜市都筑区外国府間33丁目12番8号 中鉢石町クレスト978', N'090-8665-1025', N'itomomoko@yoshida.jp', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (348, N'合同会社太田水産', N'三重県白井市池之端19丁目7番11号 シャルム白金台045', N'070-7594-9393', N'minoruwatanabe@sato.jp', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (349, N'石井印刷合同会社', N'栃木県武蔵野市豊町5丁目21番17号 クレスト上吉羽541', N'81-8634-2232', N'hiroshifujiwara@sato.com', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (350, N'渡辺通信有限会社', N'秋田県渋谷区二つ室35丁目6番1号', N'93-2664-9667', N'hiroshisuzuki@suzuki.jp', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (351, N'山田運輸合同会社', N'徳島県長生郡睦沢町花島11丁目16番1号 戸塚町ハイツ307', N'85-5899-7543', N'kenichi27@yamamoto.jp', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (352, N'山下運輸株式会社', N'栃木県江戸川区横林5丁目14番9号 シャルム中三依860', N'090-9490-9242', N'fyoshida@yahoo.com', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (353, N'有限会社鈴木鉱業', N'宮城県横浜市中区西関宿27丁目2番7号', N'31-8348-8983', N'yuiaoki@hotmail.com', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (354, N'合同会社吉田建設', N'香川県我孫子市南赤田30丁目22番19号 台東パーク003', N'070-8025-5303', N'shoheitakahashi@gmail.com', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (355, N'株式会社山崎通信', N'福井県神津島村上広谷28丁目19番16号', N'090-2519-8338', N'satomimori@murakami.com', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (356, N'有限会社藤原通信', N'東京都横浜市磯子区下宇和田12丁目13番9号', N'090-8302-2360', N'yoshidamiki@hotmail.com', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (357, N'有限会社加藤建設', N'福島県小平市入谷9丁目5番18号', N'74-8095-6953', N'kumiko67@gmail.com', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (358, N'小川運輸有限会社', N'京都府渋谷区鍛冶ケ沢10丁目13番8号 アーバン上吉羽006', N'15-0493-3314', N'fujiijun@yamamoto.com', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (359, N'伊藤保険株式会社', N'広島県東久留米市皇居外苑40丁目19番6号', N'090-3085-7010', N'endoyuta@yahoo.com', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (360, N'小林食品有限会社', N'香川県我孫子市台東9丁目22番13号', N'090-4849-2681', N'akemi43@suzuki.com', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (361, N'株式会社藤原印刷', N'静岡県鎌ケ谷市台東31丁目7番3号 コーポ神明内270', N'23-9816-0890', N'jyamamoto@inoue.com', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (362, N'株式会社田中印刷', N'千葉県川崎市高津区松が谷37丁目22番15号', N'070-8558-5549', N'nfujiwara@hotmail.com', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (363, N'佐藤印刷合同会社', N'福島県稲城市上吉羽9丁目21番16号 浅草クレスト820', N'080-4517-2681', N'fujiwarataro@hasegawa.org', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (364, N'藤田建設合同会社', N'山形県新宿区箭坪1丁目19番6号 コーポ東和町224', N'080-3990-9255', N'yumikoyamazaki@hotmail.com', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (365, N'山口食品株式会社', N'熊本県足立区百村12丁目9番6号 月島シャルム307', N'04-3819-3532', N'nakamurachiyo@hotmail.com', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (366, N'株式会社鈴木運輸', N'秋田県川崎市中原区下吉羽26丁目8番18号 パーク美原町985', N'090-9696-3701', N'yoshidanaoko@abe.com', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (367, N'鈴木保険株式会社', N'熊本県香取郡多古町外国府間35丁目2番16号', N'070-3373-9233', N'tsubasasuzuki@takahashi.com', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (368, N'山田鉱業株式会社', N'石川県長生郡長柄町藤金35丁目10番8号', N'080-2007-2721', N'ryosuke31@yahoo.com', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (369, N'株式会社井上ガス', N'和歌山県東村山市入谷19丁目2番13号', N'090-0433-1326', N'suzukirika@yahoo.com', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (370, N'林食品合同会社', N'沖縄県多摩市竜泉32丁目14番16号 コーポ千塚019', N'090-2161-7262', N'kaoritanaka@shimizu.com', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (371, N'有限会社渡辺電気', N'山梨県印旛郡栄町三筋37丁目20番14号', N'070-3238-5409', N'hiroshinakamura@hotmail.com', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (372, N'三浦通信株式会社', N'青森県印西市元浅草28丁目2番9号 パーク中小来川766', N'080-6952-6455', N'taichi15@saito.net', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (373, N'佐藤農林合同会社', N'群馬県大田区氏家新田14丁目4番16号', N'080-3620-6809', N'yamadataro@kimura.jp', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (374, N'株式会社渡辺ガス', N'福井県昭島市下宇和田23丁目20番14号 コート蟇沼981', N'58-8301-7678', N'haruka22@hotmail.com', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (375, N'合同会社高橋銀行', N'山梨県富津市東神田37丁目13番14号', N'080-0261-9587', N'sotarosato@yahoo.com', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (376, N'株式会社小川銀行', N'岐阜県香取郡東庄町鳥越35丁目19番17号 クレスト上高野343', N'080-8041-7699', N'atsushiyamaguchi@hotmail.com', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (377, N'渡辺食品合同会社', N'北海道府中市白金6丁目6番8号 千塚コーポ863', N'65-5344-5201', N'vito@hotmail.com', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (378, N'株式会社小林印刷', N'愛媛県長生郡一宮町高輪16丁目8番16号 パレス津久戸町580', N'090-1409-0477', N'kobayashisayuri@okada.com', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (379, N'有限会社岡田農林', N'群馬県小平市芝浦41丁目7番1号', N'090-1924-4201', N'kyosuketanaka@yahoo.com', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (380, N'株式会社中島食品', N'秋田県東村山市南郷屋37丁目18番9号', N'070-7653-8650', N'yoshidakaori@hotmail.com', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (381, N'株式会社佐藤食品', N'神奈川県川崎市中原区所野20丁目4番8号 シティ長間857', N'95-0019-4946', N'tkato@shimizu.org', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (382, N'有限会社小川印刷', N'静岡県文京区今戸23丁目15番18号', N'27-5423-9972', N'maedaakira@yahoo.com', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (383, N'株式会社松本ガス', N'高知県渋谷区油井27丁目25番3号 東上野パレス488', N'090-2653-1701', N'yamamotomomoko@gmail.com', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (384, N'合同会社橋本電気', N'兵庫県匝瑳市箪笥町25丁目6番13号 ハイツ箪笥町962', N'090-3686-3135', N'ahashimoto@mori.jp', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (385, N'高橋印刷有限会社', N'大分県東村山市天神島42丁目25番6号', N'070-6272-3462', N'takahashishota@suzuki.org', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (386, N'山田情報株式会社', N'香川県山武郡九十九里町箪笥町26丁目13番5号 東浅草シティ237', N'60-4268-7218', N'nyamaguchi@yahoo.com', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (387, N'有限会社松本電気', N'山梨県八丈島八丈町東浅草3丁目19番17号', N'090-3078-1999', N'fujiwarakana@hotmail.com', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (388, N'株式会社伊藤電気', N'石川県君津市長間40丁目26番17号 猿楽町ハイツ952', N'51-4451-8509', N'cyamada@yahoo.com', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (389, N'株式会社高橋鉱業', N'北海道長生郡睦沢町白金台27丁目21番18号', N'070-5988-9862', N'ogawatsubasa@hotmail.com', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (390, N'林鉱業有限会社', N'鳥取県君津市今戸32丁目3番1号 コート四番町557', N'090-2662-0650', N'gtakahashi@gmail.com', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (391, N'松田保険有限会社', N'新潟県我孫子市北青山2丁目4番17号 コート京橋086', N'090-5961-1259', N'hsuzuki@hotmail.com', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (392, N'有限会社松田運輸', N'埼玉県横浜市神奈川区三筋25丁目5番14号 アーバン鶴ヶ丘184', N'070-6613-2512', N'xaoki@inoue.org', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (393, N'山本水産株式会社', N'島根県長生郡長南町鶴ヶ丘28丁目20番3号', N'090-3364-6595', N'lyoshida@yamamoto.org', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (394, N'森運輸有限会社', N'石川県江戸川区松が谷31丁目20番11号 高田馬場ハイツ043', N'080-9822-1785', N'yuki57@yahoo.com', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (395, N'三浦印刷株式会社', N'青森県富津市西浅草21丁目7番18号 橋場コーポ626', N'090-2232-9369', N'watanabeyosuke@yamazaki.net', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (396, N'株式会社山崎銀行', N'三重県目黒区猿楽町17丁目27番3号', N'070-5100-3236', N'nanami82@saito.jp', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (397, N'合同会社田中ガス', N'群馬県台東区日比谷公園28丁目11番15号', N'090-5808-9833', N'junkato@gmail.com', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (398, N'渡辺建設合同会社', N'大阪府杉並区戸山4丁目13番7号', N'60-7321-1151', N'kimuramanabu@takahashi.net', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (399, N'合同会社伊藤通信', N'三重県大島町二つ室17丁目25番19号 コート鳥越116', N'080-4824-7637', N'zfukuda@gmail.com', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (400, N'井上通信有限会社', N'新潟県鴨川市花島12丁目20番19号', N'090-2354-0178', N'suzukikumiko@sato.com', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (401, N'有限会社阿部鉱業', N'茨城県東村山市北青山8丁目27番18号', N'080-8853-0047', N'fujitaryosuke@hotmail.com', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (402, N'石川保険合同会社', N'山形県香取郡東庄町東浅草14丁目16番6号', N'070-1720-9234', N'akemihayashi@yahoo.com', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (403, N'高橋農林有限会社', N'広島県八丈島八丈町千束15丁目25番2号', N'070-6199-7859', N'mituru30@hotmail.com', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (404, N'株式会社中村印刷', N'新潟県横浜市都筑区入谷22丁目11番6号 コーポ四区町365', N'55-5000-6986', N'naokiikeda@tanaka.com', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (405, N'有限会社山田食品', N'石川県杉並区戸塚町28丁目12番3号 三筋パレス419', N'97-5888-4869', N'yamadakenichi@nishimura.org', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (406, N'高橋印刷有限会社', N'静岡県横浜市金沢区猿楽町39丁目7番8号 シティ四区町101', N'070-1274-0926', N'saitonanami@ishikawa.org', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (407, N'清水通信有限会社', N'佐賀県稲城市木立6丁目19番4号 シティ松浦町283', N'33-9179-3993', N'fhayashi@kobayashi.com', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (408, N'佐藤鉱業株式会社', N'大分県印西市土沢25丁目16番14号 コート西神田319', N'97-9561-9945', N'shotagoto@okada.jp', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (409, N'合同会社前田建設', N'鹿児島県横浜市泉区入谷41丁目16番16号', N'080-0834-5356', N'taichimatsumoto@kondo.jp', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (410, N'有限会社山田鉱業', N'千葉県調布市睦33丁目21番15号', N'090-7403-9654', N'hokada@gmail.com', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (411, N'吉田運輸有限会社', N'宮崎県大田区一ツ橋13丁目24番4号 アーバン入谷033', N'83-6106-6729', N'nanamitanaka@hotmail.com', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (412, N'株式会社佐藤食品', N'東京都四街道市羽折町3丁目19番9号 パレス羽折町469', N'090-0437-2706', N'watanabeosamu@yahoo.com', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (413, N'藤原通信合同会社', N'千葉県匝瑳市権現堂30丁目26番7号', N'080-4896-0247', N'hyoshida@yamamoto.org', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (414, N'有限会社坂本情報', N'徳島県西多摩郡瑞穂町押上34丁目13番6号 シャルム丸の内988', N'090-5955-2991', N'bkondo@yoshida.net', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (415, N'小林電気株式会社', N'岐阜県羽村市入谷2丁目19番15号 クレスト松浦町786', N'090-4061-8650', N'kenichi88@gmail.com', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (416, N'木村銀行合同会社', N'青森県横浜市中区竜泉36丁目8番8号 勝どきシャルム004', N'66-8340-3275', N'yoichinakamura@gmail.com', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (417, N'合同会社清水銀行', N'新潟県横浜市神奈川区南赤田22丁目26番6号 湯本塩原シャルム850', N'070-3767-9706', N'ysaito@ishii.jp', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (418, N'株式会社田中印刷', N'沖縄県横浜市戸塚区権現堂7丁目14番10号 高田馬場アーバン310', N'090-7935-0422', N'tanakakazuya@yahoo.com', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (419, N'坂本通信株式会社', N'大阪府町田市鳥越24丁目19番9号 南郷屋コーポ902', N'83-6262-9197', N'taichi00@hotmail.com', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (420, N'福田保険有限会社', N'石川県八丈島八丈町富久町23丁目19番4号 パーク芝公園350', N'090-5839-3528', N'nishimuraasuka@gmail.com', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (421, N'近藤ガス有限会社', N'高知県青ヶ島村五味ヶ谷3丁目23番6号 シティ無栗屋932', N'57-9027-8515', N'saitomaaya@yamamoto.com', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (422, N'中川通信有限会社', N'秋田県八丈島八丈町東神田6丁目18番17号 パレス日本堤167', N'080-5086-8788', N'osamuhashimoto@gmail.com', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (423, N'山本電気有限会社', N'大阪府大田区睦27丁目15番10号 上野公園アーバン946', N'080-6156-7806', N'rikaokada@gmail.com', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (424, N'合同会社松本保険', N'高知県横浜市中区中川崎34丁目7番16号 クレスト橋場313', N'080-5387-8542', N'sayuri44@kato.jp', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (425, N'斎藤電気有限会社', N'香川県青梅市蟇沼42丁目25番13号 クレスト箭坪048', N'070-1372-6357', N'yoko27@gmail.com', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (426, N'藤田水産合同会社', N'滋賀県大島町三ノ輪9丁目2番17号 芝大門シティ355', N'65-4375-4952', N'hashimotoyoko@watanabe.com', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (427, N'株式会社藤田通信', N'埼玉県国立市蔵前8丁目21番10号', N'080-4253-8239', N'yasuhirofukuda@watanabe.jp', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (428, N'山本銀行有限会社', N'徳島県南房総市麹町40丁目4番9号 中鉢石町ハイツ091', N'57-8574-7950', N'isato@hotmail.com', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (429, N'清水建設有限会社', N'愛媛県長生郡白子町鍛冶ケ沢31丁目12番12号 シャルム大京町881', N'71-9349-6316', N'zsaito@ishii.org', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (430, N'合同会社後藤食品', N'滋賀県川崎市宮前区丸の内ＪＰタワー20丁目1番8号 細野シティ150', N'080-7508-8104', N'iogawa@yahoo.com', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (431, N'株式会社西村通信', N'大阪府台東区幸手36丁目26番9号 パーク花川戸978', N'080-0743-5375', N'hasegawamiki@hotmail.com', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (432, N'中村通信合同会社', N'奈良県東村山市隼町35丁目17番4号 前弥六南町コート949', N'41-1235-2384', N'kanasuzuki@hotmail.com', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (433, N'山田水産合同会社', N'岐阜県印旛郡栄町湯本塩原35丁目21番15号 アーバン西関宿022', N'090-1084-6000', N'takumasato@watanabe.jp', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (434, N'佐藤情報合同会社', N'鹿児島県清瀬市明石町38丁目8番6号', N'080-1175-0526', N'takumaendo@sasaki.org', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (435, N'西村水産有限会社', N'滋賀県小平市藤金27丁目7番20号 クレスト方京400', N'070-0120-4209', N'reiikeda@sato.jp', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (436, N'山田銀行合同会社', N'滋賀県清瀬市東神田31丁目3番8号 二つ室シャルム341', N'58-6495-1988', N'moritomoya@yamazaki.com', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (437, N'斎藤建設合同会社', N'愛知県富津市東神田8丁目1番12号 卯の里コート540', N'080-8397-1874', N'satomi93@gmail.com', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (438, N'前田印刷有限会社', N'埼玉県川崎市川崎区蔵前36丁目4番8号 日比谷公園コート596', N'090-8818-8425', N'pyamazaki@ishii.com', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (439, N'有限会社鈴木保険', N'岩手県我孫子市今戸5丁目26番2号 パーク吾妻橋688', N'090-0731-8035', N'mikimatsumoto@hotmail.com', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (440, N'長谷川ガス株式会社', N'和歌山県福生市東神田4丁目6番10号 コーポ松が谷396', N'080-3597-0256', N'hayashiyuta@yamada.jp', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (441, N'有限会社山崎保険', N'三重県安房郡鋸南町西浅草9丁目27番10号 百村シティ819', N'080-1323-9644', N'dsato@yamada.com', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (442, N'合同会社小林電気', N'埼玉県狛江市日本堤4丁目25番11号 隼町クレスト428', N'090-2370-7246', N'qsuzuki@kato.com', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (443, N'合同会社加藤鉱業', N'福井県川崎市多摩区鳥越12丁目13番7号 クレスト台場017', N'090-3660-1583', N'rei37@endo.net', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (444, N'清水電気有限会社', N'広島県御蔵島村四区町33丁目4番13号', N'49-5788-3455', N'nakamurajun@matsuda.org', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (445, N'株式会社岡本電気', N'愛知県横浜市戸塚区高田馬場12丁目17番6号 クレスト土沢870', N'18-3367-3252', N'taichi68@nakamura.jp', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (446, N'高橋電気株式会社', N'和歌山県台東区柿木沢新田39丁目2番2号 シャルム細野109', N'73-3929-3480', N'yamashitasayuri@hotmail.com', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (447, N'藤田銀行有限会社', N'鹿児島県白井市丸の内ＪＰタワー40丁目11番8号', N'080-8711-0288', N'wyoshida@yahoo.com', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (448, N'株式会社山本銀行', N'福井県大島町富久町10丁目18番5号 パーク鶴ヶ丘875', N'89-7276-9169', N'tanakatsubasa@takahashi.jp', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (449, N'田中建設合同会社', N'大分県世田谷区隼町13丁目17番14号 松浦町アーバン498', N'03-0754-5264', N'tarosakamoto@yahoo.com', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (450, N'有限会社森運輸', N'福岡県横浜市港北区九段南9丁目7番4号 台場アーバン643', N'090-8986-2078', N'yamadamai@hotmail.com', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (451, N'有限会社加藤水産', N'大分県西東京市手岡19丁目11番11号 パーク前弥六南町454', N'080-2932-4767', N'hashimotokazuya@nakamura.com', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (452, N'合同会社前田水産', N'長野県小笠原村西川16丁目17番20号', N'070-1020-7922', N'takuma58@gmail.com', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (453, N'佐藤通信株式会社', N'静岡県安房郡鋸南町平須賀31丁目6番6号', N'090-7117-5424', N'yamamotoyuki@yahoo.com', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (454, N'中川鉱業株式会社', N'滋賀県富津市脚折町4丁目14番11号 アーバン筑土八幡町327', N'080-5600-3673', N'minoruyamashita@yahoo.com', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (455, N'斉藤食品株式会社', N'徳島県小笠原村箪笥町2丁目13番10号', N'070-1893-2595', N'hyamada@mori.jp', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (456, N'株式会社山崎建設', N'埼玉県新島村蔵前24丁目3番9号 コーポ上野桜木991', N'28-5885-9861', N'akemi36@yoshida.com', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (457, N'株式会社山崎鉱業', N'香川県杉並区卯の里26丁目3番9号 アーバン横林727', N'080-0304-0805', N'syamaguchi@suzuki.jp', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (458, N'田中鉱業株式会社', N'愛知県横浜市西区池之端20丁目27番10号 横林パレス891', N'57-0646-2370', N'hanakoinoue@sasaki.jp', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (459, N'青木農林合同会社', N'香川県八丈島八丈町竜泉25丁目27番13号', N'090-4626-7643', N'mikimatsuda@gmail.com', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (460, N'有限会社斉藤電気', N'群馬県稲城市下吉羽35丁目21番13号 アーバン東和町131', N'070-6499-2229', N'akemi98@yamada.jp', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (461, N'小林運輸有限会社', N'三重県三鷹市東和町42丁目16番7号', N'080-9618-0911', N'sayuri58@gmail.com', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (462, N'鈴木鉱業合同会社', N'福井県山武郡九十九里町北青山40丁目24番4号 戸塚町パレス797', N'080-6149-4025', N'satomi73@hotmail.com', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (463, N'木村ガス株式会社', N'福井県長生郡長生村北上野23丁目8番3号', N'090-7258-9372', N'hanakosuzuki@yahoo.com', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (464, N'坂本ガス有限会社', N'北海道鎌ケ谷市権現堂10丁目8番20号 パーク天神島747', N'34-3612-1651', N'kondoyumiko@kondo.org', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (465, N'岡田建設合同会社', N'福島県白井市元浅草11丁目4番12号 長間クレスト306', N'080-4726-4199', N'junkondo@yahoo.com', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (466, N'有限会社山本保険', N'京都府港区竜泉34丁目26番1号', N'090-2080-8549', N'gsato@yahoo.com', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (467, N'有限会社佐々木鉱業', N'富山県我孫子市鳥越4丁目26番11号 シャルム渡辺126', N'080-0663-2521', N'naokotakahashi@yamamoto.com', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (468, N'福田水産株式会社', N'福島県日野市元浅草22丁目7番7号 日光コート415', N'090-1359-8344', N'knishimura@hotmail.com', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (469, N'小林保険合同会社', N'宮城県八丈島八丈町大京町37丁目2番5号', N'090-9704-8113', N'satoyasuhiro@gmail.com', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (470, N'加藤電気合同会社', N'奈良県大網白里市三ノ輪7丁目1番18号', N'090-0715-1203', N'kyosukekimura@hayashi.jp', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (471, N'岡田印刷合同会社', N'神奈川県武蔵村山市幸手29丁目15番17号 アーバン東和町803', N'02-0245-3075', N'kaoriishikawa@yahoo.com', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (472, N'渡辺鉱業合同会社', N'青森県板橋区中三依22丁目24番4号', N'080-2299-1815', N'satomiwatanabe@yahoo.com', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (473, N'有限会社小林ガス', N'群馬県印旛郡栄町西浅草33丁目5番14号 上吉羽アーバン899', N'080-7841-2902', N'yito@hotmail.com', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (474, N'近藤水産株式会社', N'兵庫県町田市台東2丁目23番19号 パレス美原町005', N'080-0708-3425', N'ryoheisato@hotmail.com', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (475, N'山田印刷有限会社', N'岐阜県長生郡白子町土呂部7丁目1番11号 北上野シャルム311', N'080-4601-8748', N'yuisuzuki@gmail.com', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (476, N'合同会社橋本水産', N'福島県狛江市前弥六南町42丁目21番19号', N'090-8760-2393', N'yshimizu@yahoo.com', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (477, N'伊藤銀行合同会社', N'長崎県八丈島八丈町台場25丁目5番11号', N'070-3135-6221', N'esato@sasaki.jp', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (478, N'合同会社伊藤印刷', N'広島県夷隅郡御宿町高田馬場20丁目9番5号 パレス虎ノ門159', N'090-6312-5289', N'kyosuke68@inoue.com', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (479, N'山崎鉱業合同会社', N'島根県山武郡芝山町京橋19丁目1番16号', N'00-6903-4847', N'tanakayosuke@gmail.com', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (480, N'中島銀行有限会社', N'奈良県夷隅郡大多喜町東三島21丁目25番16号', N'080-8143-1700', N'momokohashimoto@yahoo.com', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (481, N'佐々木農林合同会社', N'千葉県港区日光7丁目1番16号 下宇和田パーク303', N'080-7758-9253', N'morinanami@yahoo.com', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (482, N'合同会社後藤保険', N'青森県神津島村台東35丁目18番14号 日本堤コート018', N'070-9608-4003', N'atsushi47@saito.jp', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (483, N'清水保険有限会社', N'福井県川崎市高津区戸塚町34丁目16番16号 シティ虎ノ門475', N'090-9295-3019', N'sotaro58@ishikawa.org', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (484, N'山下ガス有限会社', N'青森県東久留米市日本堤8丁目27番14号 独鈷沢コート456', N'070-0424-7539', N'satosayuri@goto.jp', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (485, N'合同会社阿部情報', N'大阪府大島町松が谷14丁目5番13号 箪笥町パレス608', N'080-3571-8982', N'ssasaki@yahoo.com', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (486, N'高橋通信合同会社', N'岐阜県文京区無栗屋32丁目24番5号 横林クレスト623', N'080-6529-0089', N'kobayashiryosuke@fujita.net', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (487, N'村上農林株式会社', N'埼玉県板橋区月島33丁目17番10号 池之端クレスト901', N'090-7267-1131', N'takahashimaaya@sato.com', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (488, N'株式会社福田農林', N'山口県中央区台東37丁目6番20号', N'090-2305-9375', N'cyamada@matsumoto.com', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (489, N'合同会社佐々木保険', N'茨城県横浜市瀬谷区秋葉原33丁目1番1号', N'070-3160-2543', N'nakamuratomoya@tanaka.org', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (490, N'清水印刷合同会社', N'新潟県山武郡横芝光町百村39丁目19番20号 コート渡辺997', N'090-5735-5690', N'dyamazaki@kobayashi.org', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (491, N'合同会社中川運輸', N'千葉県調布市西川23丁目14番12号 湯宮アーバン987', N'080-9638-9420', N'ksato@hotmail.com', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (492, N'高橋電気株式会社', N'北海道横浜市旭区二つ室13丁目24番5号', N'090-4724-5534', N'satokaori@hotmail.com', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (493, N'山田建設合同会社', N'鳥取県香取市松石30丁目27番20号', N'080-9685-6984', N'nakamurakana@mori.com', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (494, N'株式会社伊藤情報', N'山口県三宅島三宅村竜泉31丁目16番17号 ハイツ六番町537', N'070-1172-7417', N'kaori29@tanaka.com', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (495, N'合同会社佐藤食品', N'鳥取県長生郡睦沢町浅草橋34丁目20番7号 パーク芝浦689', N'080-1936-4342', N'yuki12@kobayashi.jp', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (496, N'株式会社西村電気', N'千葉県中野区平須賀40丁目24番5号', N'070-5047-5929', N'hashimototakuma@sato.jp', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (497, N'佐々木農林株式会社', N'沖縄県横浜市港南区戸島7丁目8番14号 アーバン鍛冶ケ沢303', N'080-0620-8561', N'qota@gmail.com', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (498, N'加藤印刷有限会社', N'沖縄県横浜市戸塚区箪笥町24丁目12番14号 丸の内ハイツ986', N'070-3141-4437', N'akira97@okada.com', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (499, N'合同会社山本農林', N'石川県長生郡長生村隼町38丁目21番10号', N'080-9188-7752', N'kobayashimaaya@gmail.com', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (500, N'株式会社坂本印刷', N'山梨県中野区北上野2丁目1番19号 パレス戸島532', N'70-8400-4821', N'mnakamura@gmail.com', 0, NULL, 0)
GO
INSERT [dbo].[T得意先] ([得意先Id], [得意先名], [住所], [電話番号], [メール], [Is削除済み], [備考], [Version]) VALUES (501, N'ハカマタソフト', N'愛知県名古屋市', N'090-XXXX-XXXX', N'XXXX@XXXXXX', 0, N'', 4)
GO
SET IDENTITY_INSERT [dbo].[T得意先] OFF
GO
ALTER TABLE [dbo].[T受注] ADD  DEFAULT (CONVERT([date],getdate())) FOR [受注日]
GO
ALTER TABLE [dbo].[T受注] ADD  DEFAULT ((0)) FOR [Is売上済み]
GO
ALTER TABLE [dbo].[T障害ログ] ADD  DEFAULT (getdate()) FOR [発生日時]
GO
ALTER TABLE [dbo].[T得意先] ADD  DEFAULT ((0)) FOR [Is削除済み]
GO
ALTER TABLE [dbo].[T受注]  WITH CHECK ADD  CONSTRAINT [FK_T受注_T得意先] FOREIGN KEY([得意先Id])
REFERENCES [dbo].[T得意先] ([得意先Id])
GO
ALTER TABLE [dbo].[T受注] CHECK CONSTRAINT [FK_T受注_T得意先]
GO
