CREATE DATABASE DatabaseWeb CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
use DatabaseWeb;

CREATE TABLE Users (
  userId int(11) NOT NULL AUTO_INCREMENT,
  fullname varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  email varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  phone_number varchar(20),
  address varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  password varchar(32),
  role_user tinyint(4),
  created_at date,
  PRIMARY KEY(userID)
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE utf8mb4_unicode_ci;

CREATE TABLE Categories
(
	CateId INT(11) NOT NULL AUTO_INCREMENT,
	NameCate varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    PRIMARY KEY (CateId)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE utf8mb4_unicode_ci;

CREATE TABLE News 
(
	NewId INT(11) NOT NULL AUTO_INCREMENT,
	NameNew VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
	ImageNew VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
	Link VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    PRIMARY KEY (NewId)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE utf8mb4_unicode_ci;

CREATE TABLE Describes
(
	DesId INT(11) NOT NULL AUTO_INCREMENT,
	MatKinhCamUng VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
	DoPhanGiai VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
	ManHinhRong VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
	CameraSau VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
	QuayPhim VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
	HeDieuHanh VARCHAR(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
	Chipset VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
	Ram VARCHAR(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
	Rom VARCHAR(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
	Pin VARCHAR(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
	ThongTinSanPham text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
	DacDiemNoiBat text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
	NewId INT(11) NOT NULL,
    PRIMARY KEY (DesId),
    FOREIGN KEY (NewId) REFERENCES News(NewId)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE utf8mb4_unicode_ci;

CREATE TABLE mytable (
    id INT(11) NOT NULL AUTO_INCREMENT,
    name VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    email VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE utf8mb4_unicode_ci;

CREATE TABLE Products 
(
	ProId INT(11) NOT NULL AUTO_INCREMENT,
	NamePro VARCHAR(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
	ImagePro VARCHAR(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
	Price INT(11) NOT NULL,
	Quantity INT(11) NOT NULL,
	CateId INT(11) NOT NULL,
	DesId INT(11) NOT NULL,
    PRIMARY KEY (ProId),
    FOREIGN KEY (CateId) REFERENCES Categories(CateId),
    FOREIGN KEY (DesId) REFERENCES Describes(DesId)
);

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

insert News (NewId, NameNew, ImageNew, Link) 
values 
(
	1,
	N'Đánh giá chi tiết iPhone 14 Pro Max: Flagship tốt nhất năm 2022?',
	N'Appel-iPhone-14-Pro-Max-Review.jpg',
	N'https://vatvostudio.vn/danh-gia-chi-tiet-iphone-14-pro-max-bieu-trung-cho-su-hoan-hao/'
);

insert Describes(DesId, MatKinhCamUng, DoPhanGiai, ManHinhRong, CameraSau, QuayPhim, 
HeDieuHanh, Chipset, Ram, Rom, Pin, ThongTinSanPham, DacDiemNoiBat, NewId)
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
	1
);

insert News (NewId, NameNew, ImageNew, Link) 
values 
(
	2,
	N'Review tất tần tật về Galaxy S23 Ultra',
	N'Galaxy-S23-Ultra.png',
	N'https://samfans.vn/p/review-tat-tan-tat-ve-galaxy-s23-ultra-3376'
);

insert Products(ProId, NamePro, ImagePro, Price, Quantity, CateId, DesId)
values (1, N'iPhone 14 Pro Max 128GB', 'iphone14.webp', 19750000, 10, 1, 1);


insert Describes(DesId, MatKinhCamUng, DoPhanGiai, ManHinhRong, CameraSau, QuayPhim, 
HeDieuHanh, Chipset, Ram, Rom, Pin, ThongTinSanPham, DacDiemNoiBat, NewId)
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
	2
);

insert Products(ProId, NamePro, ImagePro, Price, Quantity, CateId, DesId)
values (2, N'Samsung Galaxy S23 8GB 256GB', 'SamSung_Galaxy_S23.jpg', 23990000, 10, 2, 2);


insert News (NewId, NameNew, ImageNew, Link) 
values 
(
	3,
	N'Đánh giá Oppo Reno8 T 5G: khi cái "Đẹp" chưa thể đè bẹp cái "Nết"',
	N'Oppo-Reno8.webp',
	N'https://vnreview.vn/thread/danh-gia-oppo-reno8-t-5g-khi-cai-dep-chua-the-de-bep-cai-net.269469'
);

insert Describes(DesId, MatKinhCamUng, DoPhanGiai, ManHinhRong, CameraSau, QuayPhim, 
HeDieuHanh, Chipset, Ram, Rom, Pin, ThongTinSanPham, DacDiemNoiBat, NewId)
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
	3
);

insert Products(ProId, NamePro, ImagePro, Price, Quantity, CateId, DesId)
values (3, N'OPPO Reno8 T 5G (8GB - 128GB)', 'Oppo_Reno8_T.jpg', 9990000, 10, 3, 3);

insert News (NewId, NameNew, ImageNew, Link) 
values 
(
	4,
	N'Review Xiaomi 13 Lite: Có nên mua không và giá bao nhiêu?',
	N'Xiaomi-13-Lite.jpg',
	N'https://reviewcongnghe.net/review-xiaomi-13-lite/'
);

insert Describes(DesId, MatKinhCamUng, DoPhanGiai, ManHinhRong, CameraSau, QuayPhim, 
HeDieuHanh, Chipset, Ram, Rom, Pin, ThongTinSanPham, DacDiemNoiBat, NewId)
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
	 4
);

insert Products(ProId, NamePro, ImagePro, Price, Quantity, CateId, DesId)
values (4, N'Xiaomi 13 Lite (8GB | 128GB)', 'Xiaomi_13_Lite.jpg', 10490000, 10, 4, 4);

insert News (NewId, NameNew, ImageNew, Link) 
values 
(
	5,
	N'Đánh giá Vivo V23e: Thiết kế đẹp mắt, camera selfie ấn tượng, sạc nhanh',
	N'Vivo-V23e.jpg',
	N'https://reviewed.vn/danh-gia-vivo-v23e/'
);

insert Describes(DesId, MatKinhCamUng, DoPhanGiai, ManHinhRong, CameraSau, QuayPhim, 
HeDieuHanh, Chipset, Ram, Rom, Pin, ThongTinSanPham, DacDiemNoiBat, NewId)
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
	5
);

insert Products(ProId, NamePro, ImagePro, Price, Quantity, CateId, DesId)
values (5, N'Vivo V23e 8GB 128GB', 'Vivo_V23e.jpg', 4390000, 10, 5, 5);


insert News (NewId, NameNew, ImageNew, Link) 
values 
(
	6,
	N'Đánh giá điện thoại Realme C35: giá dưới 4 triệu nhưng có thiết kế quá đẹp, camera tới 50MP',
	N'Realme-C35.jpg',
	N'https://websosanh.vn/tin-tuc/danh-gia-dien-thoai-realme-c35-gia-duoi-4-c4-20220621100520252.htm'
);

insert Describes(DesId, MatKinhCamUng, DoPhanGiai, ManHinhRong, CameraSau, QuayPhim, 
HeDieuHanh, Chipset, Ram, Rom, Pin, ThongTinSanPham, DacDiemNoiBat, NewId)
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
	6
);

insert Products(ProId, NamePro, ImagePro, Price, Quantity, CateId, DesId)
values (6, N'Realme C35 (4GB | 64GB)', 'Realme_C35.jpg', 3590000, 10, 6, 6);


insert News (NewId, NameNew, ImageNew, Link) 
values 
(
	7,
	N'Đánh giá chi tiết Nokia C31: Quá “ngon” cho nhu cầu sử dụng cơ bản, đáng để lựa chọn với mức giá chỉ hơn 2 triệu đồng!',
	N'Nokia-C31-1.jpg',
	N'https://cellphones.com.vn/sforum/danh-gia-chi-tiet-nokia-c31-qua-ngon-cho-nhu-cau-su-dung-co-ban-dang-de-lua-chon-voi-muc-gia-chi-hon-2-trieu-dong'
);

insert Describes(DesId, MatKinhCamUng, DoPhanGiai, ManHinhRong, CameraSau, QuayPhim, 
HeDieuHanh, Chipset, Ram, Rom, Pin, ThongTinSanPham, DacDiemNoiBat, NewId)
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
	7
);

insert Products(ProId, NamePro, ImagePro, Price, Quantity, CateId, DesId)
values (7, N'Nokia C31 4GB 128GB', 'Nokia_C31.webp', 2450000, 10, 7, 7);

insert News (NewId, NameNew, ImageNew, Link) 
values 
(
	8,
	N'Đánh giá ASUS ROG Phone 6: Chiếc gaming phone đáng mua nhất thị trường Việt',
	N'ROG-Phone-6.jpg',
	N'https://vatvostudio.vn/danh-gia-asus-rog-phone-6-chiec-gaming-phone-dang-mua-nhat-thi-truong-viet/'
);

insert Describes(DesId, MatKinhCamUng, DoPhanGiai, ManHinhRong, CameraSau, QuayPhim, 
HeDieuHanh, Chipset, Ram, Rom, Pin, ThongTinSanPham, DacDiemNoiBat, NewId)
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
	8
);

insert Products(ProId, NamePro, ImagePro, Price, Quantity, CateId, DesId)
values (8, N'ASUS ROG Phone 6 16GB 512GB', 'Asus_Rog_Phone.webp', 19490000, 10, 8, 8);




insert News (NewId, NameNew, ImageNew, Link)
values
(
	9,
	N'Review iPhone 13: Chiếc iPhone đáng mua nhất hiện nay?',
	N'iPhone-13.jpg',
	N'https://24hstore.vn/review-san-pham/review-iphone-13:-chiec-iphone-dang-mua-nhat-hien-nay-n5218'
);

insert Describes(DesId, MatKinhCamUng, DoPhanGiai, ManHinhRong, CameraSau, QuayPhim, 
HeDieuHanh, Chipset, Ram, Rom, Pin, ThongTinSanPham, DacDiemNoiBat, NewId)
values 
(
	9,
	N'Kính cường lực Ceramic Shield',
	N'1170 x 2532 pixels',
	N'6.1 inches',
	N'12 MP, 12 MP',
	N'4K@24/30/60fps, 1080p@30/60/120/240fps, HDR, Dolby Vision HDR (up to 30fps), stereo sound rec.',
	N'iOS 15',
	N'Apple A15 Bionic 6 nhân',
	N'4GB',
	N'128 GB',
	N'3240 mAh',
	N'Máy mới 100% , chính hãng Apple Việt Nam. CellphoneS hiện là đại lý bán lẻ uỷ quyền iPhone chính hãng VN/A của Apple Việt Nam. .n@ 
	iPhone 13 128GB, cáp USB-C sang Lightning .n@
	1 ĐỔI 1 trong 30 ngày nếu có lỗi phần cứng nhà sản xuất. Bảo hành 12 tháng tại trung tâm bảo hành chính hãng Apple : Điện Thoại Vui ASP (Apple Authorized Service Provider)',
	N'Hiệu năng vượt trội - Chip Apple A15 Bionic mạnh mẽ, hỗ trợ mạng 5G tốc độ cao .n@ 
Không gian hiển thị sống động - Màn hình 6.1" Super Retina XDR độ sáng cao, sắc nét .n@ 
Trải nghiệm điện ảnh đỉnh cao - Camera kép 12MP, hỗ trợ ổn định hình ảnh quang học .n@
Tối ưu điện năng - Sạc nhanh 20 W, đầy 50% pin trong khoảng 30 phút',
	9
);

insert Products(ProId, NamePro, ImagePro, Price, Quantity, CateId, DesId)
values (9, N'iPhone 13 128GB', N'iphone-13-mau-do.jpg', 16990000, 10, 1, 9);



insert News (NewId, NameNew, ImageNew, Link)
values
(
	10,
	N'Đánh giá Galaxy S22: Chiếc điện thoại tốt nhưng đang bị lãng quên',
	N'SamSung-Galaxy-S22.jpg',
	N'https://tinhte.vn/thread/danh-gia-galaxy-s22-chiec-dien-thoai-tot-nhung-dang-bi-lang-quen.3524787/'
);

insert Describes(DesId, MatKinhCamUng, DoPhanGiai, ManHinhRong, CameraSau, QuayPhim, 
HeDieuHanh, Chipset, Ram, Rom, Pin, ThongTinSanPham, DacDiemNoiBat, NewId)
values 
(
	10,
	N'Gorilla Glass Victus+',
	N'Full HD+ (1080 x 2340 Pixels)',
	N'6.6 inches',
	N'Chính 50 MP & Phụ 12 MP, 10 MP',
	N'8K@24fps, 4K@30/60fps, 1080p@30/60/240fps, 720p@960fps, HDR10+, stereo sound rec., gyro-EIS',
	N'Android 12, One UI 4',
	N'Qualcomm SM8450 Snapdragon 8 Gen 1 (4 nm)',
	N'8 GB',
	N'128 GB',
	N'4500 mAh',
	N'Nguyên hộp, đầy đủ phụ kiện từ nhà sản xuất .n@ 
Máy, Sách hướng dẫn, Cây lấy sim, Cáp Type C .n@ 
Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.',
	N'Camera mắt thần bóng đêm Nightography - Bắt trọn mọi khoảng khắc .n@ 
Mãn nhãn từng chi tiết - Màn hình 6.6", Dynamic AMOLED 2X, 120Hz .n@ 
Hiệu năng mạnh mẽ, xử lí thông minh - Snapdragon 8 Gen 1 (4 nm) .n@ 
Thỏa sức trải nghiệm chỉ với một lần sạc - Viên pin 4500 mAh, sạc nhanh 45W, sạc không dây',
	10
);

insert Products(ProId, NamePro, ImagePro, Price, Quantity, CateId, DesId)
values (10, N'Samsung Galaxy S22 Plus (8GB + 128GB)', N's22-plus-xanh.jpg', 17050000, 10, 2, 10);

insert News (NewId, NameNew, ImageNew, Link)
values
(
	11,
	N'Đánh giá OPPO Reno8 Z 5G: Diện mạo mới mẻ, Camera được nâng cấp – Giá từ 10.990.000',
	N'OPPO-Reno8-Z-5G.jpg',
	N'https://didongviet.vn/dchannel/danh-gia-oppo-reno8-z-5g/'
);

insert Describes(DesId, MatKinhCamUng, DoPhanGiai, ManHinhRong, CameraSau, QuayPhim, 
HeDieuHanh, Chipset, Ram, Rom, Pin, ThongTinSanPham, DacDiemNoiBat, NewId)
values 
(
	11,
	N'Kính cường lực Schott Xensation UP',
	N'Full HD+ (1080 x 2400 Pixels)',
	N'6.43" - Tần số quét 60 Hz',
	N'Chính 64 MP & Phụ 2 MP, 2 MP',
	N'FullHD 1080p@30fps',
	N'Android 12, ColorOS 12.1',
	N'Android 12, ColorOS 12.',
	N'8 GB',
	N'256GB',
	N'4500 mAh',
	N'Mới, đầy đủ phụ kiện từ nhà sản xuất .n@ 
Điện thoại, Bộ sạc, cáp dữ liệu USB, Dụng cụ lấy SIM, Hướng dẫn an toàn, Hướng dẫn nhanh, Vỏ bảo vệ .n@
Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.',
	N'Tái hiện màu sắc sống động - Màn hình lớn AMOLED 6.4 inch với độ phân giải Full HD+ .n@ 
Sáng tạo không giới hạn - Cụm camera lên đến 50 MP & Phụ 8 MP, 2 MP chụp đêm rõ nét .n@ 
Chiến game thả ga - đa nhiệm mượt mà với chip MediaTek Dimensity 1300 tối ưu hiệu suất .n@ 
Thoải mái sử dụng không lo cạn pin - Viên pin .n@ 
4500 mAh cùng sạc nhanh 80W',
	11
);

insert Products(ProId, NamePro, ImagePro, Price, Quantity, CateId, DesId)
values (11, N'OPPO Reno8 5G 8GB 256GB', N'oppo-reno-8z-5g-chinh-hang.jpg', 12490000,10, 3, 11);

insert News (NewId, NameNew, ImageNew, Link)
values
(
	12,
	N'Trên tay Xiaomi Redmi Note 11 Pro 5G: mặt lưng và cạnh phẳng bắt trend hơn, đủ món ăn chơi từ camera 108MP đến sạc nhanh 67W',
	N'Xiaomi-Redmi-Note-11.webp',
	N'https://vnreview.vn/thread/tren-tay-xiaomi-redmi-note-11-pro-5g-mat-lung-va-canh-phang-bat-trend-hon-du-mon-an-choi-tu-camera-108mp-den-sac-nhanh-67w.211106232646696'
);

insert Describes(DesId, MatKinhCamUng, DoPhanGiai, ManHinhRong, CameraSau, QuayPhim, 
HeDieuHanh, Chipset, Ram, Rom, Pin, ThongTinSanPham, DacDiemNoiBat, NewId)
values 
(
	12,
	N'Corning Gorilla Glass 5',
	N'1080 x 2400 pixels',
	N'6.67 inches, 107.4 cm2',
	N'108 MP, 2MP và 8MP',
	N'4K@30fps, 1080p@30/60fps',
	N'Android 11, MIUI 12.5',
	N'MediaTek Dimensity 920 5G (6 nm)',
	N'8GB',
	N'128 GB',
	N'4500 mAh',
	N'Nguyên hộp, đầy đủ phụ kiện từ nhà sản xuất .n@ 
Máy, Sách hướng dẫn, Cây lấy sim, Ốp lưng, Cáp Type C, Củ sạc nhanh rời đầu Type A 67W .n@
Bảo hành 18 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.',
	N'Hiệu năng ấn tượng trong tầm giá - Chip MediaTek Helio G96 mạnh mẽ cùng 8GB RAM .n@ 
Tận hưởng không gian giải trí sống động - Màn hình AMOLED 6.67", FHD+ sắc nét, chân thực .n@ 
Ghi lại trọn vẹn mọi khoảng khắc - Cụm 4 camera sau lên đến 108MP, đa dạng chế độ chụp .n@ 
Năng lượng tràn đầy cho cả ngày dài - Viên pin khủng 5000mAh, sạc nhanh 67W',
	12
);

insert Products(ProId, NamePro, ImagePro, Price, Quantity, CateId, DesId)
values (12, N'Xiaomi Redmi Note 11 Pro', N'Xiaomi-Redmi-Note-11-pro.jpg', 5690000, 10, 4, 12);



insert News (NewId, NameNew, ImageNew, Link)
values
(
	13,
	N'Đánh giá điện thoại Vivo T1X: Có là lựa chọn tốt trong tầm giá?',
	N'Vivo-T1X.jpg',
	N'https://websosanh.vn/tin-tuc/danh-gia-dien-thoai-vivo-t1x-co-la-lua-c4-20230109110611996.htm'
);

insert Describes(DesId, MatKinhCamUng, DoPhanGiai, ManHinhRong, CameraSau, QuayPhim, 
HeDieuHanh, Chipset, Ram, Rom, Pin, ThongTinSanPham, DacDiemNoiBat, NewId)
values 
(
	13,
	N'IPS LCD',
	N'1080 x 2408 pixels',
	N'6.58 inches',
	N'Camera chính: 50MP, f/1.8. Camera macro: 2 MP, f/2.4 Cảm biến độ sâu2MP, f/2.4',
	N'4K@30fps, 1080p@30/60fps, gyro-EIS',
	N'Android 12, FunTouchOS 12',
	N'Snapdragon 680',
	N'8 GB',
	N'128 GB',
	N'5000 mAh',
	N'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.',
	N'Bộ vi xử lí mạnh mẽ nói không với giật lag - Qualcomm Snapdragon® 680 .n@ 
Sạc nhanh tức thì, sử dụng dài lâu - Pin lớn 5000mAh, sạc siêu tốc 18W .n@ 
RAM Mở Rộng 2.0 - Thoả sức lưu trữ các ứng dụng yêu thích và vận hành mượt mà .n@ 
Hiển thị sống động mọi chi tiết với màn hình sắc nét LCD FHD+ 90Hz',
	13
);

insert Products(ProId, NamePro, ImagePro, Price, Quantity, CateId, DesId)
values (13, N'Vivo T1X 8GB 128GB', N'Vivo-T1X-8GB-128GB.webp', 5390000, 10, 5, 13);



insert News (NewId, NameNew, ImageNew, Link)
values
(
	14,
	N'Đánh giá Realme 10: Thiết kế đẹp, màn AMOLED, hiệu năng tốt',
	N'Realme-10-2.jpg',
	N'https://reviewed.vn/danh-gia-realme-10/'
);

insert Describes(DesId, MatKinhCamUng, DoPhanGiai, ManHinhRong, CameraSau, QuayPhim, 
HeDieuHanh, Chipset, Ram, Rom, Pin, ThongTinSanPham, DacDiemNoiBat, NewId)
values 
(
	14,
	N'Super AMOLED',
	N'1080 x 2400 pixels (FullHD+)',
	N'6.4 inches',
	N'Camera chính AI: 50MP, f/1.8. Camera chân dung: 2MP, f/2.4',
	N'1080p@30fps',
	N'Android 12, Realme UI 3.0',
	N'Helio G99 (6nm)',
	N'8 GB',
	N'256 GB',
	N'5.000 mAh',
	N'Mới, đầy đủ phụ kiện từ nhà sản xuất .n@ 
	realme 10, Củ sạc, Cáp USB Type-C, Thông tin quan trọng về sản phẩm và Phiếu bảo hành, Sách hướng dẫn sử dụng sản phẩm, Que lấy SIM, Miếng dán màn hình, Ốp lưng bảo vệ .n@ 
Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất. ',
	N'RAM mở rộng lên đến 16GB - Xử lí đa tác vụ mượt mà .n@ 
Giải trí cực đỉnh - Màn hình AMOLED 90Hz cuộn cuộn lướt và chuyển cảnh khi chơi game không giật lag .n@ 
Xem YouTube liên tục đến 21h với viên pin 5000mAh .n@ 
Thiết kế vi hạt ánh sáng lấp lánh kiêu sa phù hợp với các bạn nữ',
	14
);

insert Products(ProId, NamePro, ImagePro, Price, Quantity, CateId, DesId)
values (14,N'Realme 10 8GB 256GB', N'realme-10-8GB-256GB.webp', 6490000 ,10, 6, 14);




insert News (NewId, NameNew, ImageNew, Link)
values
(
	15,
	N'Đánh giá Nokia C21 Plus: Nhiều điểm ấn tượng trong tầm giá',
	N'Danh-gia-Nokia-C21-Plus-3-1024x682.jpg',
	N'https://reviewed.vn/danh-gia-nokia-c21-plus/'
);

insert Describes(DesId, MatKinhCamUng, DoPhanGiai, ManHinhRong, CameraSau, QuayPhim, 
HeDieuHanh, Chipset, Ram, Rom, Pin, ThongTinSanPham, DacDiemNoiBat, NewId)
values 
(
	15,
	N' Mặt kính cong 2.5D',
	N'720 x 1600 pixel',
	N'6.52 inches',
	N'13 MP + 2 MP',
	N'1080p@30fps',
	N'Android 11 (Go edition)',
	N'Unisoc SC9863A',
	N'3 GB',
	N'64 GB',
	N'5050 mAh',
	N'Mới, đầy đủ phụ kiện từ nhà sản xuất .n@ 
Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.',
	N'Thiết kế tinh giản hiện đại, bền bỉ chắc chắn - Chất liệu khung nguyên khối và nhựa cứng .n@ 
Giải trí sắc nét, sống động từng chi tiết - Màn hình HD+ 6.52 inches .n@ 
Cấu hình ổn định trong phân khúc - Chip Unisoc SC9863A, RAM 3GB .n@ 
Bắt trọn khoảnh khắc - Camera kép 13MP chụp ảnh chi tiết, camera trước 5MP',
	15
);

insert Products(ProId, NamePro, ImagePro, Price, Quantity, CateId, DesId)
values (15, N'Nokia C21 Plus 3GB 64GB', N'nokia-c21-plus-600x600_2_1.webp', 2150000 , 10, 7, 15);

insert News (NewId, NameNew, ImageNew, Link)
values
(
	16,
	N'Đánh giá Asus ROG Phone 5s: Smartphone Gaming cực kỳ tốt!',
	N'Asus-ROG-Phone-5s-2-1024x681.jpg',
	N'https://reviewed.vn/danh-gia-asus-rog-phone-5s-smartphone-gaming-cuc-ky-tot/'
);

insert Describes(DesId, MatKinhCamUng, DoPhanGiai, ManHinhRong, CameraSau, QuayPhim, 
HeDieuHanh, Chipset, Ram, Rom, Pin, ThongTinSanPham, DacDiemNoiBat, NewId)
values 
(
	16,
	N'144 Hz / 1 ms Samsung AMOLED. Corning® Gorilla® Glass Victus. Delta-E < 1',
	N'1080 x 2448 pixels (FullHD+)',
	N'6.78 inches',
	N'Camera chính: 64 MP, f/1.8, PDAF. Camera góc siêu rộng: 13 MP, f/2.4. Camera macro: 5 MP, f/2.0',
	N'8K@30fps, 4K@30/60/120fps, 1080p@30/60/120/240fps, 720p@480fps; gyro-EIS',
	N'Android 11',
	N'Qualcomm® Snapdragon® 888+ 5G Mobile Platform',
	N'12 GB',
	N'256 GB',
	N'6000 mAh',
	N'Mới, đầy đủ phụ kiện từ nhà sản xuất .n@ 
Máy, Cây đẩy SIM, Sạc USB (65W), Cáp USB-C sang USB-C, Ốp lưng bảo vệ .n@ 
Bảo hành chính hãng 12 tháng tại trung tâm bảo hành ủy quyền, 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ NSX. ',
	N'Cấu hình khủng long, chiến mọi tựa game - Chip Snapdragon 888+ cực mạnh, hỗ trợ 5G .n@ 
Màn hình cực mượt, hiển thị sắc nét - Màn hình AMOLED lớn 6.78", 144Hz, HDR10 .n@ 
Pin khủng, sủ dụng cực lâu - Viên pin lớn 6000mAh, sạc nhanh 65W .n@ 
Bắt trọn mọi khoảnh khắc - Cụm 3 camera sau lên đến 64MP, hỗ trợ quay phim 8K cực đỉnh',
	16
);


insert Products(ProId, NamePro, ImagePro, Price, Quantity, CateId, DesId)
values (16, N'ASUS ROG Phone 5S 12GB 256GB', N'asus-rog-phone-5.webp', 16490000 , 10, 8, 16);

insert News (NewId, NameNew, ImageNew, Link)
values
(
	17,
	N'Đánh giá iPhone 12 Pro Max: Liệu còn đáng mua ở năm 2022 không?',
	N'iPhone-12.png',
	N'https://xoanstore.vn/danh-gia-iphone-12-pro-max-lieu-con-dang-mua-o-nam-2022-khong'
);

insert Describes(DesId, MatKinhCamUng, DoPhanGiai, ManHinhRong, CameraSau, QuayPhim, 
HeDieuHanh, Chipset, Ram, Rom, Pin, ThongTinSanPham, DacDiemNoiBat, NewId)
values 
(
	17,
	N'Kính cường lực Ceramic Shield',
	N'1284 x 2778 pixels',
	N'6.7 inches',
	N'12 MP, 12 MP và 12 MP, TOF 3D LiDAR',
	N'4K 2160p@24fps, 4K 2160p@30fps, 4K 2160p@60fps, FullHD 1080p@30fps, FullHD 1080p@60fps, HD 720p@30fps',
	N'iOS 14',
	N'Apple A14',
	N'6 GB',
	N'256 GB',
	N'3687 mAh',
	N'Máy mới 100% , chính hãng Apple Việt Nam. .n@ 
CellphoneS hiện là đại lý bán lẻ uỷ quyền iPhone chính hãng VN/A của Apple Việt Nam .n@ 
Thân máy, cáp USB-C to Lightning, sách HDSD .n@ 
1 ĐỔI 1 trong 30 ngày nếu có lỗi phần cứng nhà sản xuất. Bảo hành 12 tháng tại trung tâm bảo hành chính hãng Apple : Điện Thoại Vui ASP (Apple Authorized Service Provider)',
	N'Mạnh mẽ, siêu nhanh với chip A14, RAM 6GB, mạng 5G tốc độ cao .n@ 
Rực rỡ, sắc nét, độ sáng cao - Màn hình OLED cao cấp, Super Retina XDR hỗ trợ HDR10, Dolby Vision .n@ 
Chụp ảnh siêu đỉnh - Night Mode , thuật toán Deep Fusion, Smart HDR 3, camera LiDar .n@ 
Bền bỉ vượt trội - Kháng nước, kháng bụi IP68, mặt lưng Ceramic Shield',
	17
);



insert Products(ProId, NamePro, ImagePro, Price, Quantity, CateId, DesId)
values (17, N'iPhone 12 Pro Max 256GB', N'iPhone-12-Pro.webp', 27590000 , 10, 1, 17);

insert News (NewId, NameNew, ImageNew, Link)
values
(
	18,
	N'Đánh giá Samsung Galaxy Z Fold4 5G: Không khác biệt quá nhiều nhưng vẫn mang tới sự hút cực đẳng cấp, giá từ 40.9 triệu đồng',
	N'danh-gia-samsung-galaxy-z-fold4-didongviet-4.jpg',
	N'https://didongviet.vn/dchannel/danh-gia-samsung-galaxy-z-fold4/'
);

insert Describes(DesId, MatKinhCamUng, DoPhanGiai, ManHinhRong, CameraSau, QuayPhim, 
HeDieuHanh, Chipset, Ram, Rom, Pin, ThongTinSanPham, DacDiemNoiBat, NewId)
values 
(
	18,
	N'Chính: Ultra Thin Glass & Phụ: Corning Gorilla Glass Victus+',
	N'Chính: QXGA+ (2176 x 1812 Pixels) & Phụ: HD+ (2316 x 904 Pixels)',
	N'Chính 7.6", Phụ 6.2", 120 Hz',
	N'Chính 50 MP & Phụ 12 MP, 10 MP',
	N'4K@60fps, 1080p@60/240fps (gyro-EIS), 720p@960fps (gyro-EIS), HDR10+',
	N'Android 12, One UI 4.1',
	N'Snapdragon 8+ Gen 1',
	N'12 GB',
	N'256 GB',
	N'4400 mAh',
	N'Mới, đầy đủ phụ kiện từ nhà sản xuất .n@ 
Bảo hành chính hãng 12 tháng tại trung tâm bảo hành ủy quyền, 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ NSX.',
	N'Camera mắt thần bóng đêm cho trải nghiệm chụp ảnh ấn tượng - Camera chính: 50MP .n@ 
Khai mở trải nghiệm di động linh hoạt biến hóa - Màn hình ngoài 6.2"" cùng màn hình chính 7.6"" độc đáo .n@ 
Hiệu năng mạnh mẽ đến từ dòng chip cao cấp của Qualcomm - Snapdragon 8 Plus Gen 1 .n@ 
Viên pin ấn tượng, sạc nhanh tức tốc - Pin 4,400 mAh, sạc nhanh 25 W',
	18
);


insert Products(ProId, NamePro, ImagePro, Price, Quantity, CateId, DesId)
values (18, N'Samsung Galaxy Z Fold4 5G (12GB | 256GB)', N'samsung_galaxy_z_fold_4-4.webp', 31790000 , 10, 2, 18);



insert News (NewId, NameNew, ImageNew, Link)
values
(
	19,
	N'Đánh giá realme 9 Pro+: dồn toàn lực cho camera',
	N'realme-9-Pro-Plus.webp',
	N'https://vnreview.vn/thread/danh-gia-realme-9-pro-don-toan-luc-cho-camera.351843721013683'
);

insert Describes(DesId, MatKinhCamUng, DoPhanGiai, ManHinhRong, CameraSau, QuayPhim, 
HeDieuHanh, Chipset, Ram, Rom, Pin, ThongTinSanPham, DacDiemNoiBat, NewId)
values 
(
	19,
	N'Corning® Gorilla® Glass 5',
	N'1080 x 2400 pixels (FullHD+)',
	N'6.4 inches',
	N'Camera chính: 50MP, f/1.8. Camera macro: 2MP, f/2.4. Camera góc rộng: 8MP, 119°, f/2.2',
	N'1080P/30fps, 720P/30fps',
	N'UI 3.0, Android 12',
	N'MediaTek Dimensity 920 5G',
	N'8 GB',
	N'128 GB',
	N'4500mAh',
	N'Mới, đầy đủ phụ kiện từ nhà sản xuất .n@ 
cáp USB Type-C, củ sạc 60W, que lấy SIM, miếng dán màn hình (dán sẵn), ốp lưng bảo vệ , sách hướng dẫn sử dụng sản phẩm, Thông tin quan trọng về sản phẩm và Phiếu bảo hành .n@ 
Bảo hành chính hãng 12 tháng tại trung tâm bảo hành ủy quyền, 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ NSX. ',
	N'Thiết kế sang trọng, thu hút mọi ánh nhìn - Mặt lưng hiệu ứng gradiant bắt mắt, thay đổi theo từng góc nhìn .n@ 
Không gian giải trí sống động - Màn hình kích thước lớn 6.4", tấm nền Super AMOLED hiển thị sắc nét .n@ 
Hiệu năng mạnh mẽ, cân mọi tựa game - Chip MediaTek Dimensity 920 5G 8 nhân, RAM khủng 8GB .n@ 
Mang lại những bức ảnh chuyên nghiệp - Camera sau cảm biến 50MP, đa dạng chế độ chụp',
	19
);

insert Products(ProId, NamePro, ImagePro, Price, Quantity, CateId, DesId)
values (19, N'Realme 9 Pro Plus', N'realme-9-Pro.webp', 6290000 , 10, 6, 19);



insert News (NewId, NameNew, ImageNew, Link)
values
(
	20,
	N'Trên tay Nokia G11 Plus 3GB/64GB giá 3,59 triệu, có thật sự rẻ?',
	N'Nokia_G11_Plus.jpg',
	N'https://tinhte.vn/thread/tren-tay-nokia-g11-plus-3gb-64gb-gia-3-59-trieu-co-that-su-re.3559835/'
);

insert Describes(DesId, MatKinhCamUng, DoPhanGiai, ManHinhRong, CameraSau, QuayPhim, 
HeDieuHanh, Chipset, Ram, Rom, Pin, ThongTinSanPham, DacDiemNoiBat, NewId)
values 
(
	20,
	N'90Hz, Độ sáng 400 nits',
	N'720 x 1600 pixel',
	N'6.5 inches',
	N'AI 50MP AF, f/1.8+ 2MP, cảm biến độ sâu trường ảnh',
	N' ',
	N'Android™ 12',
	N'Unisoc T606',
	N'3 GB',
	N'32 GB',
	N'5000mAh',
	N'Mới, đầy đủ phụ kiện từ nhà sản xuất .n@ 
Nokia G11 Plus, Sách HDSD nhanh, Cáp USB Type-C, Sạc 10W, Miếng dán màn hình, Ốp silicon, Tai nghe, Khóa mở SIM .n@ 
Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.',
	N'Camera kép AI 50MP (khẩu độ f/1.8) lấy nét tự động, bắt trọn mọi khoảnh khắc .n@ 
Vi xử lý 8 nhân mạnh mẽ giúp thao tác nhanh chóng mượt mà .n@ 
Dung lượng pin 5000 mAh bền bỉ cùng chế độ siêu tiết kiệm pin .n@ 
Màn hình 6.5” chuẩn HD+ với tần số quét 90Hz cho chất lượng hiển thị rõ nét, chân thực',
	20
);




insert Products(ProId, NamePro, ImagePro, Price, Quantity, CateId, DesId)
values (20, N'Nokia G11 Plus 3GB 32GB', N'nokia-g11-plus-blue_2.webp', 1990000 , 10, 7, 20);



insert News (NewId, NameNew, ImageNew, Link)
values
(
	21,
	N'Review/đánh giá chi tiết điện thoại Xiaomi POCO M5: Giá rẻ nhưng có nên mua?',
	N'Xiaomi-poco1.jpg',
	N'https://websosanh.vn/tin-tuc/reviewdanh-gia-chi-tiet-dien-thoai-xiaomi-poco-m5-c4-2022112609490661.htm'
);

insert Describes(DesId, MatKinhCamUng, DoPhanGiai, ManHinhRong, CameraSau, QuayPhim, 
HeDieuHanh, Chipset, Ram, Rom, Pin, ThongTinSanPham, DacDiemNoiBat, NewId)
values 
(
	21,
	N'Gorilla Glass 3',
	N'Full HD+ (1080 x 2408 Pixels)',
	N'6.58" - Tần số quét 90 Hz',
	N'Chính 50 MP & Phụ 2 MP, 2 MP',
	N'FullHD 1080p@30fpsHD 720p@30fps',
	N'MediaTek Helio G99',
	N'Android 12',
	N'4 GB',
	N'64 GB',
	N'5000 mAh',
	N'Mới, đầy đủ phụ kiện từ nhà sản xuất .n@ 
Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.',
	N'Hiệu năng bượt trội - Bộ vi xử lý Helio G99 đầy mạnh mẽ, RAM 4GB giúp máy ổn định chiến game .n@ 
Sắc nét đến từng chi tiết - Màn hình 6.58 inch Full HD+ hỗ trợ 90 Hz mượt mà .n@ 
Kiến tạo những thước phim sống động - Bộ ba camera AI độ phân giải lên đến 50 MP .n@ 
Năng lượng vượt trội, chiến game cả ngày - Dung lượng 5000 mAh cùng khả năng sạc nhanh 18 W',
	21
);

insert Products(ProId, NamePro, ImagePro, Price, Quantity, CateId, DesId)
values (21, N'Xiaomi POCO M5 4GB 64GB', N'Xiaomi-POCO-M5.webp', 3400000 , 10, 4, 21);

insert News (NewId, NameNew, ImageNew, Link)
values
(
	22,
	N'5 yếu tố khiến Xiaomi 12T Pro là mẫu điện thoại Android đáng mua nhất phân khúc 14 triệu',
	N'Xiaomi-12T-Pro-5.jpg',
	N'https://vatvostudio.vn/5-yeu-to-khien-xiaomi-12t-pro-la-mau-dien-thoai-android-dang-mua-nhat-phan-khuc-14-trieu/'
);

insert Describes(DesId, MatKinhCamUng, DoPhanGiai, ManHinhRong, CameraSau, QuayPhim, 
HeDieuHanh, Chipset, Ram, Rom, Pin, ThongTinSanPham, DacDiemNoiBat, NewId)
values 
(
	22,
	N'Corning Gorilla Glass 5, HDR10+, Độ sáng: 500 nit, Dolby Vision®, Cảm biến ánh sáng xung quanh 360°',
	N'1080 x 2400 pixels (FullHD+)',
	N'6.66 inches',
	N'200MP + 8MP + 2MP',
	N'4K 2160p@60fps, FullHD, 1080p@30fps, HD 720p@30fps, FullHD 1080p@60fps, 8K 4320p@24fps, 4K 2160p@30fps',
	N'Android 12',
	N'Snapdragon 8+ Gen 1 (4 nm)',
	N'12 GB',
	N'256 GB',
	N'5.000 mAh',
	N'SP chính hãng đã active, thu lại từ khách không sử dụng trong thời gian test(30 ngày) .n@ 
Đầy đủ phụ kiện từ NSX (Giảm thêm 200K nếu không kèm phụ kiện). Máy có thể đã qua BH hãng hoặc sửa chữa thay thế linh kiện. Có nguồn gốc rõ ràng, xuất hoá đơn eVAT. .n@ 
Bảo hành 12 tháng tại CellphoneS không loại trừ linh kiện, bảo hành cả nguồn, màn hình. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.',
	N'Kiến tạo siêu khoảnh khắc - Hệ thống camera 200MP, chống rung quang học OIS và ống kính 8P .n@ 
Thiết kế siêu việt - Trọn vẻ đẹp sang trọng, đẳng cấp, vỏ nhám chống bám vân tay, khung kim loại cứng cáp, độc đáo .n@ 
Đạt đến sự ưu việt một cách dễ dàng - Chipset Snapdragon 8+ Gen 1 siêu mạnh mẽ cùng RAM 12GB cho đa nhiệm mượt mà .n@ 
Năng lượng bất tận, khám phá cả ngày - Dung lượng pin 5000mAh, sạc siêu nhanh HyperCharge 120W .n@ 
Trải nghiệm siêu chân thực - Màn hình lớn CrystalRes AMOLED cùng hệ thống âm thanh SOUND BY Harman Kardon',
	22
);




insert Products(ProId, NamePro, ImagePro, Price, Quantity, CateId, DesId)
values (22, N'Xiaomi 12T Pro 12GB 256GB', N'xiaomi-12t-xam_2_1.webp', 13190000 , 10, 4, 22);



insert News (NewId, NameNew, ImageNew, Link)
values
(
	23,
	N'Review/đánh những ưu nhược điểm của điện thoại Xiaomi 11 Lite 5G NE?',
	N'Xiaomi-11-Lite.jpg',
	N'https://websosanh.vn/tin-tuc/reviewdanh-nhung-uu-nhuoc-diem-cua-dien-thoai-xiaomi-c4-20220204102058181.htm'
);

insert Describes(DesId, MatKinhCamUng, DoPhanGiai, ManHinhRong, CameraSau, QuayPhim, 
HeDieuHanh, Chipset, Ram, Rom, Pin, ThongTinSanPham, DacDiemNoiBat, NewId)
values 
(
	23,
	N'Dolby Vision, HDR10+, 90Hz, Corning® Gorilla® Glass 5',
	N'1080 x 2400 pixels (FullHD+)',
	N'6.55 inches',
	N'Camera chính: 64MP, f/1.79, 6P. Camera góc siêu rộng: 8MP, f/2.2. Camera tele: 5MP, f/2.4, Contrast AF (3cm-7cm)',
	N'FullHD 1080p@60fps, FullHD 1080p@30fps, 4K 2160p@30fps, HD 720p@30fps',
	N'MIUI 12.5, Android 11',
	N'Snapdragon™ 778G',
	N'8 GB',
	N'128 GB',
	N'4250mAh',
	N'Mới, đầy đủ phụ kiện từ nhà sản xuất .n@ 
Máy, Sách hướng dẫn, Jack chuyển tai nghe 3.5mm, Cây lấy sim, Ốp lưng, Cáp Type C, Củ sạc rời đầu Type A 33W .n@ 
Bảo hành 18 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.',
	N'Thiết kế mỏng nhẹ, thời thượng - Trọng lượng chỉ 158 g và mỏng 6.8 mm, cầm nắm thoải mái .n@ 
Nâng tầm trải nghiệm giải trí - Màn hình AMOLED 6.55", Full HD+ sắc nét, tần số quét 90Hz mượt mà .n@ 
Lưu giữ mọi khoảnh khắc - Cụm 3 camera sau lên đến 64MP, quay video 4K sắc nét, chân thực .n@ 
Hiệu năng mạnh mẽ, vượt trội - Chip Snapdragon 778G, RAM 8GB đa nhiệm ổn định',
	23
);


insert Products(ProId, NamePro, ImagePro, Price, Quantity, CateId, DesId)
values (23, N'Xiaomi 11 Lite 5G NE', N'xiaomi-11-lite-5g-ne-600x600.webp', 7090000 , 10, 4, 23);

insert News (NewId, NameNew, ImageNew, Link)
values
(
	24,
	N'Có nên chọn mua điện thoại Vivo Y22s hay không?',
	N'vivo-y22-1-1.jpg',
	N'https://websosanh.vn/tin-tuc/co-nen-chon-mua-dien-thoai-vivo-y22s-hay-khong-c4-2022092711175925.htm'
);

insert Describes(DesId, MatKinhCamUng, DoPhanGiai, ManHinhRong, CameraSau, QuayPhim, 
HeDieuHanh, Chipset, Ram, Rom, Pin, ThongTinSanPham, DacDiemNoiBat, NewId)
values 
(
	24,
	N'IPS LCD',
	N'1612x720 (HD+)',
	N'6.55 inches',
	N'Sau 50MP, f/1.8 + 2MP, f/2.4',
	N'Chụp đêm (trước và sau), Chụp toàn cảnh, Live Photo, Quay chuyển động chậm, Quay tua nhanh thời gian, Chế độ chuyên nghiệp, DOC',
	N'Funtouch OS 12',
	N'Qualcomm Snapdragon 680',
	N'8GB',
	N'128 GB',
	N'5000 mAh',
	N'Mới, đầy đủ phụ kiện từ nhà sản xuất .n@ 
Sách hướng dẫn, Dây USB, Củ sạc USB, Que lấy SIM, Ốp lưng, Miếng dán màn hình (dán sẵn) .n@ 
Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.',
	N'Màn hình màu sắc rực rỡ, thoả sức lướt web, xem phim 6.55"", 1612x720 (HD+), 90Hz .n@ 
Vận hành trơn tru và mượt mà - Bộ vi xử lý Snapdragon 680 8 nhân, RAM 8GB + Mở rộng 8GB .n@ 
Ghi lại trọn vẹn khoảnh khắc đêm - Cụm camera sắc nét 50MP+2MP với đa dạng chế độ chuyên nghiệp .n@ 
Pin khủng 5000mAh, sạc nhanh siêu tốc mọi lúc mọi nơi',
	24
);

insert Products(ProId, NamePro, ImagePro, Price, Quantity, CateId, DesId)
values (24, N'Vivo Y22S 8GB 128GB', N'vivo-Y22S-8GB.webp', 5190000 , 10, 5, 24);

use DatabaseWeb; select * from Categories where CateId=1;

use DatabaseWeb; SELECT * FROM News LIMIT 8;



