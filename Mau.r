# Đọc dữ liệu
doc <- read.csv("D:/data/stockx.csv", header = TRUE)

# Lọc dữ liệu adidas
adidas <- subset(doc, grepl('adidas', shoes_name, ignore.case = TRUE))
print(adidas)

# Lấy mẫu ngẫu nhiên 1000 dòng
set.seed(42)
random_mau <- adidas[sample(nrow(adidas), 1000), ]
cat('Đã lấy mẫu ngẫu nhiên 1000 dòng: ', nrow(random_mau), '\n')

# Lọc ra adidas năm 2022 và năm 2023
adidas_year2022 <- subset(random_mau, release_year == 2022)
nrow(adidas_year2022)

adidas_year2023 <- subset(random_mau, release_year == 2023)
nrow(adidas_year2023)


#t-test
t <- t.test(adidas_year2022$avg_sale_price,adidas_year2023$avg_sale_price)
t

