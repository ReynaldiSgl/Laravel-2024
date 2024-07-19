--Membuat Tabel
CREATE TABLE Kategori (
   kode_kategori INT PRIMARY KEY,
   nama VARCHAR (255)
);

CREATE TABLE produk (
   kode_produk INT,
   nama VARCHAR (255),
   harga INT,
   stok INT,
   kategori_kode INT,
   FOREIGN KEY (kategori_kode) REFERENCES kategori (kode_kategori)
);

--Menambahkan Data
INSERT INTO kategori (kode_kategori,nama)
VALUES (111,'Elektronik'),
(222,'Pakaian'),
(333,'Makanan');

INSERT INTO produk (kode_produk,nama,harga,stok,kategori_kode)
VALUES (1,'Televisi', 3000000.00, 10, 111),
(2,'Kulkas', 4000000, 50, 111),
(3,'Kaos', 75000, 100, 222),
(4,'Celana Jeans', 15000, 50, 222),
(5,'Coklat', 20000, 200, 333),
(6,'Keripik Kentang', 1500, 150, 333);

--Menghapus Data
DELETE FROM produk WHERE kode_produk = 3;
DELETE FROM kategori WHERE kode_kategori = 333;

--Mengubah/Mengupdate Data
UPDATE produk SET 
nama = 'Kulkas', 
harga= 'masukkan Harga yang terbaru'
stok = 'masukkan jumlah stok yang terbaru'
WHERE kode_produk = 1;

--Menampilkan Data
SELECT * FROM produk; 
SELECT * FROM dosen WHERE kode_produk = 1;
