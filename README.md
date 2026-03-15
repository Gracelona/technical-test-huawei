1. Backend Development (Node.js / Express)
Tujuan
Membangun server backend sederhana menggunakan Node.js dan Express yang dapat:
-menerima data dari form frontend
-menyimpan data dalam array
-mengembalikan data ketika diminta frontend

Tools yang Digunakan
Tools	Fungsi
Node.js	Runtime JavaScript
Express.js	Framework backend
VS Code	Editor coding
Postman	Testing API
Terminal / CMD	Menjalankan server

Langkah Pengerjaan
1. Install Node.js
Download dari
https://nodejs.org

Cek instalasi
node -v
npm -v

2. Membuat Folder Project
backend-server
Masuk ke folder
cd backend-server

3. Inisialisasi Node Project
npm init -y
Akan membuat file
package.json

4. Install Express
npm install express

5. Membuat File Server
Buat file
server.js

6. Coding Server Backend
const express = require('express');
const app = express();

app.use(express.json());
app.use(express.urlencoded({extended:true}));

// penyimpanan data sementara
let dataForm = [];

// endpoint menerima data form
app.post('/api/form', (req,res)=>{

    const data = {
        name : req.body.name,
        email : req.body.email,
        age : req.body.age
    }

    dataForm.push(data)

    res.json({
        message:"Data berhasil disimpan",
        data:data
    })

})

// endpoint mengambil data
app.get('/api/form',(req,res)=>{
    res.json(dataForm)
})
app.listen(3000,()=>{
    console.log("Server running on port 3000")
})

Penjelasan Program
Middleware
app.use(express.json())
Digunakan untuk membaca data JSON dari request.

Penyimpanan Data
let dataForm = []
Data disimpan dalam array sederhana di server.

Endpoint POST
POST /api/form
Digunakan untuk menerima data dari frontend.

Contoh data yang dikirim
{
"name":"Grace",
"email":"grace@gmail.com",
"age":22
}

Endpoint GET
GET /api/form
Digunakan untuk mengambil semua data yang sudah tersimpan.

Menjalankan Server
node server.js

Server berjalan di
http://localhost:3000

Testing API (Postman)
Kirim Data
POST
http://localhost:3000/api/form

Ambil Data
GET
http://localhost:3000/api/form


3. Data Processing (SQL Query)
1. Menambahkan Employee Baru
INSERT INTO employee
(name, position, join_date, experience, salary)
VALUES
('Albert','Engineer','2024-01-24',2.5,50);

2. Update Salary Engineer
UPDATE employee
SET salary = 85
WHERE position = 'Engineer';

3. Total Salary Tahun 2021
SELECT SUM(salary) AS total_salary
FROM employee
WHERE YEAR(join_date) <= 2021
AND (release_date IS NULL OR YEAR(release_date) >= 2021);

4. Menampilkan 3 Employee Experience Tertinggi
SELECT *
FROM employee
ORDER BY experience DESC
LIMIT 3;

5. Subquery Engineer Experience ≤ 3
SELECT *
FROM employee
WHERE name IN
(
SELECT name
FROM employee
WHERE position='Engineer'
AND experience <=3

);

Kesimpulan

Pada pengujian ini dilakukan tiga implementasi utama yaitu:

1. Pengembangan backend menggunakan Node.js dan Express untuk menerima dan menyimpan data form.

2. Automasi pengambilan data menggunakan cron job yang berjalan tiga kali sehari dan melakukan pembersihan file secara otomatis.

3. Pengolahan data menggunakan SQL query untuk melakukan operasi insert, update, agregasi, sorting, dan subquery.

Dengan demikian sistem mampu melakukan backend processing, automation scheduling, dan database manipulation secara efektif.
