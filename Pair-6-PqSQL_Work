--Kategori a-z ye sıralayan sorgu.
Select*from categories order by category_name;
--Tüm ürünlerin fiyat ortalaması
Select Avg(unit_price)from products ;
--Ürünler tablosunda içinde 'a' olan ürünleri sırala
Select*from products where lower (name) like '%l%';
--Ürünler 10 ile 100 fiyat arasındaki sıralama
Select*from products where unit_price>10 and unit_price<100;
--Ürünler tablosundaki stok adedi 30dan küçük olan ürünlerin büyükten küçüğe sıralanması
Select*from products where stock<30 order by stock desc;
--Ürünlere %10 zam geldi 
Update products set unit_price=unit_price*1.10;

--adresi istanbul olan müşterileri getirr.
SELECT first_name,last_name, country_name,city_name,street_name
FROM customers cm
INNER JOIN addresses ad 
ON cm.address_id = ad.address_id
INNER JOIN countries co
ON ad.country_id = co.country_id
INNER JOIN cities ct 
ON ad.city_id = ct.city_id
INNER JOIN streets st
ON ad.street_id = st.street_id
WHERE city_name='istanbul'

--kişilerin adres bilgileri getirildi.
SELECT first_name,last_name, country_name,city_name,street_name
FROM customers cm
INNER JOIN addresses ad 
ON cm.address_id = ad.address_id
INNER JOIN countries co
ON ad.country_id = co.country_id
INNER JOIN cities ct 
ON ad.city_id = ct.city_id
INNER JOIN streets st
ON ad.street_id = st.street_id
ORDER BY first_name DESC;

--ev adresine sahip olanlar getirildi.
SELECT first_name,last_name, country_name,city_name,street_name,title
FROM customers cm
INNER JOIN addresses ad 
ON cm.address_id = ad.address_id
INNER JOIN countries co
ON ad.country_id = co.country_id
INNER JOIN cities ct 
ON ad.city_id = ct.city_id
INNER JOIN streets st
ON ad.street_id = st.street_id
WHERE title='Ev';

----BİRİMFİYATI en fazla olan ürünün name alanını ekrana yazdırınz.
Select name from products where unit_price>=(Select MIN(unit_price) from products);

------BİRİMFİYATI en düşük olan ürünün name alanını ekrana yazdırınz.
Select name from products where unit_price<=(Select MIN(unit_price) from products);

--product tablosundaki birim fiyatın toplamını bulan sorgu.
select SUM(unit_price) from products

--adres tablosunda kaç adet kayıt olduğunu gösteren sorgu.
select COUNT(*) from addresses







