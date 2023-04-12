CREATE DATABASE DatabaseWeb ON  PRIMARY 
( NAME = N'DatabaseWeb', FILENAME = N'D:\Elearn\DatabaseWeb.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB ) 
LOG ON 
( NAME = N'DatabaseWeb_log', FILENAME = N'D:\Elearn\DatabaseWeb_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
 COLLATE Vietnamese_CI_AS

drop database DatabaseWeb

create table Categories
(
	CateId int primary key,
	[NameCate] [varchar](50) not null
)

use DatabaseWeb

create table Describe
(
	DesId int primary key,
	[MatKinhCamUng] [nvarchar](max),
	DoPhanGiai [nvarchar](max),
	ManHinhRong [nvarchar](max),
	CameraSau [nvarchar](max),
	QuayPhim [nvarchar](max),
	HeDieuHanh [varchar](30),
	Chipset [nvarchar](max),
	Ram [varchar](10),
	Rom [varchar](10),
	Pin [varchar](10),
	ThongTinSanPham [nvarchar](max),
	DacDiemNoiBat [nvarchar](max),
	Link [nvarchar](max)
)

drop table Describe


create table Products 
(
	ProId int primary key,
	NamePro varchar(50),
	ImagePro varchar(50),
	Price int,
	Quantity int,
	CateId int references Categories(CateId),
	DesId int references Describe(DesId)
)

insert Categories(CateId, NameCate)
values(1, 'IPhone');
insert Categories(CateId, NameCate)
values(2, 'SamSung');
insert Categories(CateId, NameCate)
values(3, 'Oppo');
insert Categories(CateId, NameCate)
values(4, 'Xiaomi');
insert Categories(CateId, NameCate)
values(5, 'Vivo');
insert Categories(CateId, NameCate)
values(6, 'Realme');
insert Categories(CateId, NameCate)
values(7, 'Nokia');
insert Categories(CateId, NameCate)
values(8, 'Asus');

select * from Categories

insert Describe(DesId, MatKinhCamUng, DoPhanGiai, ManHinhRong, CameraSau, QuayPhim, 
HeDieuHanh, Chipset, Ram, Rom, Pin, ThongTinSanPham, DacDiemNoiBat, Link)
values 
(
	1, 
	N'Kính cường lực Ceramic Shield', 
	N'1290 x 2796 pixels, 19.5:9 ratio (~460 ppi density)',
	N'6.7 inches, 110.2 cm2 (~88.3% screen-to-body ratio)',
	N'48 MP, 12 MP và 12 MP (3 camera) + TOF 3D LiDAR',
	N'4K@24/25/30/60fps, 1080p@25/30/60/120/240fps, 10-bit HDR, Dolby Vision HDR (up to 60fps), ProRes, Cinematic mode (4K@30fps), stereo sound rec.',
	N'iOS 16',
	N'Apple A16 Bionic (4 nm) 6 nhân',
	N'6 GB',
	N'128 GB',
	N'4323 mAh',
	N'Tình trạng: Mới 100% \n@
	Phụ kiện gồm: Thân máy, Hộp, Cáp, Cây lấy sim, Sách hướng dẫn .n@ 
	Bảo hành 12 tháng theo chính sách của nhà sản xuất tại hệ thống ủy quyền toàn quốc. .n@ 
	Bao test 1 đổi 1 trong 7 Ngày bao gồm nguồn và màn hình .n@ 
	Giao hàng tận nơi trên toàn quốc. Ship COD - Giao hàng',
	N'Màn hình Dynamic Island - Sự biến mất của màn hình tai thỏ thay thế bằng thiết kế viên thuốc, OLED 6,7 inch, hỗ trợ always-on display .n@ 
	Cấu hình iPhone 14 Pro Max mạnh mẽ, hiệu năng cực khủng từ chipset A16 Bionic .n@ 
	Làm chủ công nghệ nhiếp ảnh - Camera sau 48MP, cảm biến TOF sống động .n@ 
	Pin liền lithium-ion kết hợp cùng công nghệ sạc nhanh cải tiến',
	N'https://vatvostudio.vn/danh-gia-chi-tiet-iphone-14-pro-max-bieu-trung-cho-su-hoan-hao/'
)

insert Describe(DesId, MatKinhCamUng, DoPhanGiai, ManHinhRong, CameraSau, QuayPhim, 
HeDieuHanh, Chipset, Ram, Rom, Pin, ThongTinSanPham, DacDiemNoiBat, Link)
values 
(
	2,
	N'Kính cường lực Corning Gorilla Glass Victus ',
	N'2K+ (1440 x 3088 Pixels)',
	N'6.9"',
	N'Chính 200 MP & Phụ 12 MP, 10 MP, 10 MP ',
	N'8K 4320p@30fps, 8K 4320p@24fps, FullHD 1080p@240fps FullHD 1080p@60fps FullHD 1080p@30fps 4K 2160p@30fps 4K 2160p@60fps HD 720p@960fps',
	N'Android 13',
	N'Snapdragon 8 Gen 2 8 nhân',
	N'8 KB',
	N'256 KB',
	N'5000 mAh',
	N'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.',
	N'Dẫn đầu công nghệ chụp đêm - Camera lên đến 50MP, zoom xa rõ nét, vi xử lí AI, công nghệ ảnh siêu chi tiết .n@ 
	Hiệu năng vượt trội - Snapdragon 8 Gen 2 8 nhân mạnh mẽ .n@ 
	Đa nhiệm mượt mà - RAM lớn 8G, dễ dàng chuyển đổi giữa các thiết bị .n@ 
	Thiết kế vì hành tinh - Màu sắc lấy cảm hứng từ thiên nhiên, chất liệu kính và lớp phim phủ PET tái chế ',
	N'https://www.samsung.com/vn/smartphones/galaxy-s23-ultra/?cid=vn_pd_ppc_google_diamond_launch_crm-sabt_srtxt_Diamond-DMD-Traffic-Laun-GG-SEM-GG-Warm-Search2-Nat-Bra-ProCur-RSA-None-Mix-Mix-Mix-FeatS23BaseUltra-Base-Mix_other&utm_source=google&utm_medium=ppc&utm_campaign=diamond-dmd-traffic-Laun-gg-sem-gg-hot-search-nat-bra-ss-rsa-base-mix&utm_term=c&utm_content=none&gclid=Cj0KCQjwiZqhBhCJARIsACHHEH9Ut-dBb-SdRwGQhvQs9JnqspeoDHef1erhqs7Qzv90PN_JFydrm2kaAjz_EALw_wcB'
	
)

insert Describe(DesId, MatKinhCamUng, DoPhanGiai, ManHinhRong, CameraSau, QuayPhim, 
HeDieuHanh, Chipset, Ram, Rom, Pin, ThongTinSanPham, DacDiemNoiBat, Link)
values 
(
	3,
	N'Kính cường lực AGC DT-Star2',
	N'Full HD+ (1080 x 2412 Pixels)',
	N'6.7" - Tần số quét 120 Hz',
	N'Chính 108 MP & Phụ 2 MP, 2 MP',
	N'HD 720p@30fpsFullHD 1080p@30fps',
	N'Android 13',
	N'Snapdragon 695 5G 8 nhân',
	N'8 KB',
	N'128 KB',
	N'4800 mAh',
	N'Mới, đầy đủ phụ kiện từ nhà sản xuất. .n@ 
	Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.',
	N'Thiết kế thời thượng - Tràn viền, mỏng nhẹ đặc biệt phù hợp với các bạn trẻ, yêu khám phá xu hướng mới .n@ 
	Giải trí ấn tượng - Màn hình 1 tỉ màu, tần số quét 120Hz ấn tượng .n@ 
	Chụp ảnh chân dung chuyên nghiệp - Camera 108MP sắc nét đi kèm thuật toán AI .n@ 
	Pin dùng cả ngày - Viên pin lớn 4800 mAh, sạc siêu nhanh đến 67 W',
	N'https://vnreview.vn/thread/danh-gia-oppo-reno8-t-5g-khi-cai-dep-chua-the-de-bep-cai-net.269469'
)

insert Describe(DesId, MatKinhCamUng, DoPhanGiai, ManHinhRong, CameraSau, QuayPhim, 
HeDieuHanh, Chipset, Ram, Rom, Pin, ThongTinSanPham, DacDiemNoiBat, Link)
values 
(
	4,
	N'Gorilla Glass 5',
	N'Full HD+ 1080 x 2400 pixels',
	N'6.55 inches',
	N'50 MP, 8 MP và 2MP',
	N'4K@30fps, 1080p@30/60/120fps',
	N'Android 12, MIUI 14',
	N'Qualcomm SM7450-AB Snapdragon 7 Gen 1 (4 nm)',
	N'8 KB',
	N'128 KB',
	N'4500 mAh',
	N'Mới, đầy đủ phụ kiện từ nhà sản xuất. .n@ 
	Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.',
	N'Hệ thống camera hàng đầu - Camera kép selfie cùng khung hình động đem lại những bức ảnh kiệt tác .n@ 
	 Thiết kế mỏng nhẹ, đem lại sự thoải mái trong cầm nắm .n@ 
	 Đắm chìm vào không gian giải trí sống động - AMOLED 120Hz giúp thao tác cuộn mượt mà .n@ 
	 Snapdragon 7 Gen 1 dẫn đầu - Siêu nhanh và tiết kiệm năng lượng, đa nhiệm mượt mà, chiến game cực đã .n@ 
	 Sạc nhanh 67W, sạc đầy 100% chỉ trong 40 phút',
	 N'https://reviewcongnghe.net/review-xiaomi-13-lite/'
)

insert Describe(DesId, MatKinhCamUng, DoPhanGiai, ManHinhRong, CameraSau, QuayPhim, 
HeDieuHanh, Chipset, Ram, Rom, Pin, ThongTinSanPham, DacDiemNoiBat, Link)
values 
(
	5,
	N'Kính cường lực',
	N'Full HD+ (1080 x 2400 Pixels)',
	N'6.44 inch',
	N'64MP + 8MP + 2MP',
	N'FullHD 1080p@30fps',
	N'Android 11',
	N'MediaTek Helio G96 8 nhân',
	N'8 GB',
	N'128 GB',
	N'4050 mAh',
	N'SP chính hãng đã active, thu lại từ khách không sử dụng trong thời gian test(30 ngày) .n@ 
	Đầy đủ phụ kiện từ NSX (Giảm thêm 200K nếu không kèm phụ kiện). Máy có thể đã qua BH hãng hoặc sửa chữa thay thế linh kiện. Có nguồn gốc rõ ràng, xuất hoá đơn eVAT. .n@ 
	Bảo hành 12 tháng tại CellphoneS không loại trừ linh kiện, bảo hành cả nguồn, màn hình. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.',
	N'Hiển thị chân thực, sống động - Màn hình 6.44" AMOLED FullHD .n@ 
	Hiệu năng mạnh mẽ vượt trội - Chip MediaTek Helio G96, RAM mở rộng đến 12GB, Android 11 mượt  .n@ 
	Làm chủ mọi khung hình - Cụm 3 camera sau lên đến 64MP, camera selfie 50MP .n@ 
	Thiết kế mỏng nhẹ, sang trọng - Mỏng chỉ 7.36mm, nhẹ chỉ 172g, mặt lưng chống bám vân tay',
	N'https://reviewed.vn/danh-gia-vivo-v23e/'
)

insert Describe(DesId, MatKinhCamUng, DoPhanGiai, ManHinhRong, CameraSau, QuayPhim, 
HeDieuHanh, Chipset, Ram, Rom, Pin, ThongTinSanPham, DacDiemNoiBat, Link)
values
(
	6,
	N'Kính cường lực Panda',
	N'Full HD+ (1080 x 2408 Pixels)',
	N'6.6"',
	N'Chính 50 MP & Phụ 2 MP, 0.3 MP',
	N'FullHD 1080p@30fps',
	N'Android 11',
	N'Unisoc T616 8 nhân',
	N'4 GB',
	N'64 GB',
	N'5000 mAh',
	N'Mới, đầy đủ phụ kiện từ nhà sản xuất .n@ 
	Hộp, Sách hướng dẫn, Cây lấy sim, Cáp Type C, Củ sạc nhanh rời đầu Type A .n@ 
	Bảo hành chính hãng 12 tháng tại trung tâm bảo hành ủy quyền, 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ NSX.',
	N'Trải nghiệm không gian giải trí sống động - Màn hình 6.6 inch, Full HD+, tần số quét 60 Hz .n@ 
	Hiệu năng mạnh mẽ - Vi xử lí Unisoc T616 cân mọi tác vụ đem lại trải nghiệm mượt mà .n@ 
	Ghi lại trọn vẹn mọi khoảnh khắc - Camera chính lên đến 50MP, hỗ trợ công nghệ AI hiện đại .n@ 
	Thoải mái sử dụng cả ngày dài không lo gián đoạn - Dung lượng pin chất 5000mAh, sạc nhanh 18W',
	N'https://websosanh.vn/tin-tuc/danh-gia-dien-thoai-realme-c35-gia-duoi-4-c4-20220621100520252.htm'
)

insert Describe(DesId, MatKinhCamUng, DoPhanGiai, ManHinhRong, CameraSau, QuayPhim, 
HeDieuHanh, Chipset, Ram, Rom, Pin, ThongTinSanPham, DacDiemNoiBat, Link)
values 
(
	7,
	N'Mặt kính cong 2.5D',
	N'720 x 1600 pixel',
	N'6.7 inches',
	N'13MP + 2MP độ sâu trường ảnh + 2MP macro, đèn flash',
	N'1080p@30fps',
	N'Android 12',
	N'Unisoc 9863A1',
	N'4 GB',
	N'128 GB',
	N'5050 mAh',
	N'Mới, đầy đủ phụ kiện từ nhà sản xuất .n@ 
	Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất. ',
	N'Bộ 3 camera AI sắc nét 13MP tích hợp ứng dụng Camera từ Google cho những bức ảnh hoàn hảo .n@ 
	Màn hình siêu rộng 6.7” chuẩn HD+ mang đến trải nghiệm giải trí chất lượng cao với hình ảnh sống động .n@ 
	Hệ điều hành Android 12 mới nhất với tính năng bảo mật và chia sẻ dễ dàng kết hợp vi xử lý 8 nhân mạnh mẽ giúp thao tác mượt mà .n@ 
	Dung lượng pin 5050 mAh, cùng chế độ siêu tiết kiệm pin cho thời gian sử dụng lên đến 3 ngày .n@ 
	Tiêu chuẩn kháng nước IP52 phù hợp với điều kiện thời tiết tại Việt Nam. .n@ 
	Trọn an tâm với 02 năm cập nhật bảo mật hàng quý, mở khóa vân tay và nhận diện khuôn mặt ',
	N'https://cellphones.com.vn/sforum/danh-gia-chi-tiet-nokia-c31-qua-ngon-cho-nhu-cau-su-dung-co-ban-dang-de-lua-chon-voi-muc-gia-chi-hon-2-trieu-dong'
)

insert Describe(DesId, MatKinhCamUng, DoPhanGiai, ManHinhRong, CameraSau, QuayPhim, 
HeDieuHanh, Chipset, Ram, Rom, Pin, ThongTinSanPham, DacDiemNoiBat, Link)
values 
(
	8, 
	N'Độ sáng màn hình 800 nits (typ) và 1200 nits (peak), Corning Gorilla Glass Victus',
	N'1080 x 2448 pixels (FullHD+)',
	N'6.78 inches',
	N'Camera chính góc rộng: 50 MP, f/1.9, PDAF',
	N'8K@24fps, 4K@30/60/120fps, 1080p@30/60/120/240fps, 720p@480fps; gyro-EIS',
	N'Android 12',
	N'napdragon® 8+ Gen 1',
	N'16 GB',
	N'512 GB',
	N'6000 mAh',
	N'Nguyên hộp, đầy đủ phụ kiện từ nhà sản xuất .n@ 
	Bảo hành chính hãng 12 tháng tại trung tâm bảo hành ủy quyền, 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ NSX. ',
	N'Hiệu năng dẫn đầu mọi trận đấu - Chip Snapdragon® 8+ Gen 1 mạnh mẽ cùng RAM 16GB .n@ 
	Chất lượng hiển thị đúng chuẩn gaming - Màn hình 6.78 inches, FullHD+, HDR10+ cùng tần số quét 165Hz .n@ 
	Thiết kế thân thiện cho chơi game, mặt lưng ánh sáng Aura RGB độc đáo .n@ 
	Bùng nổ năng lượng cho ngày dài ấn tượng - Viên pin 6000 mAh, sạc nhanh siêu tốc 65W ',
	N'https://vatvostudio.vn/danh-gia-asus-rog-phone-6-chiec-gaming-phone-dang-mua-nhat-thi-truong-viet/'
)



select * from Describe

create table Products 
(
	ProId int primary key,
	NamePro varchar(50),
	ImagePro varchar(50),
	Price int,
	Quantity int,
	CateId int references Categories(CateId),
	DesId int references Describe(DesId)
)

insert Products(ProId, NamePro, ImagePro, Price, Quantity, CateId, DesId)
values (1, N'iPhone 14 Pro Max 128GB', 'iphone14.webp', 19750000, 10, 1, 1);
insert Products(ProId, NamePro, ImagePro, Price, Quantity, CateId, DesId)
values (2, N'Samsung Galaxy S23 8GB 256GB', 'SamSung_Galaxy_S23.jpg', 23990000, 10, 2, 2);
insert Products(ProId, NamePro, ImagePro, Price, Quantity, CateId, DesId)
values (3, N'OPPO Reno8 T 5G (8GB - 128GB)', 'Oppo_Reno8_T.jpg', 9990000, 10, 3, 3);
insert Products(ProId, NamePro, ImagePro, Price, Quantity, CateId, DesId)
values (4, N'Xiaomi 13 Lite (8GB | 128GB)', 'Xiaomi_13_Lite.jpg', 10490000, 10, 4, 4);
insert Products(ProId, NamePro, ImagePro, Price, Quantity, CateId, DesId)
values (5, N'Vivo V23e 8GB 128GB', 'Vivo_V23e.jpg', 4390000, 10, 5, 5);
insert Products(ProId, NamePro, ImagePro, Price, Quantity, CateId, DesId)
values (6, N'Realme C35 (4GB | 64GB)', 'Realme_C35.jpg', 3590000, 10, 6, 6);
insert Products(ProId, NamePro, ImagePro, Price, Quantity, CateId, DesId)
values (7, N'Nokia C31 4GB 128GB', 'Nokia_C31.webp', 2450000, 10, 7, 7);
insert Products(ProId, NamePro, ImagePro, Price, Quantity, CateId, DesId)
values (8, N'ASUS ROG Phone 6 16GB 512GB', 'Asus_Rog_Phone.webp', 19490000, 10, 8, 8);


select * from Categories
select * from Products
select * from Describe
