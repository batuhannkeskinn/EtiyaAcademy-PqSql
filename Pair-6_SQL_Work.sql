--Product tablosuna yeni eleman ekleme (Insert)
INSERT INTO products (name,stock,unit_price)
VALUES ('Ayakkabı',50,800)
Select * from products
--Product tablosunda ürün stoğu ve ürün fiyatını güncelle (Update)
UPDATE products
Set stock = 250 , unit_price = 1000
where product_id = 200
--Product tablosunda ki eklenen ürünü silme(Delete)!
Delete from  products where product_id =200  
select * from products
--Product tablosunda ki fiyat aralığı  0 ve 10 aralığında bulunan ürünlere indirim uygulanıp sıralaması yapıldı.
UPDATE products SET unit_price =unit_price-3
WHERE unit_price BETWEEN 0 AND 10;
SELECT name , unit_price FROM products WHERE unit_price BETWEEN 10 AND 20;
--Bir müşterinin siparişlerini hangi bankayla ödendediğini göster
Select first_name, last_name,bank_name
From customers cm
Inner Join orders ord 
on cm.customer_id = ord.customer_id 
Inner join payments pa
on ord.order_id = pa.order_id
Where first_name = 'okan'
--Customer ile Orders tablosunun çıktılarını hep beraber al (full outer join)
select * from Customers cm full outer join Orders ord 
on cm.customer_id = ord.customer_id ;
--Alıcısı belli olmayan siparişleri getirmeyen sorgu (Left Join)
select * from Customers cm left join Orders ord 
on cm.customer_id = ord.customer_id 
--Ürünü belli olup alıcısı belli olmayan siperişleri de getiren sorgu (Right join)
select * from Customers cm RIGHT join Orders ord 
on cm.customer_id = ord.customer_id 
--Şehirlerde kaç adet kayıtlı kullanıcı olduğunu gösterir.
select city_name,count(city_name)
From customers cm
Inner join addresses ad
on cm.customer_id = ad.customer_id 
Inner join cities ci
ON ad.city_id = ci.city_id
group by city_name
--Fiyatı 10 ile 20 arasında ki ürünleri gerir
SELECT name , unit_price FROM products WHERE unit_price BETWEEN 10 AND 20;
--Telefon numarası 5 ile başlayan kullanıcıları getirir.
Select phone_number ,count(customer_id) from customers 
group by customer_id having phone_number = '5'




